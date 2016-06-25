/**
 * @file Login.ascx.cs
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.24
 * @version 0.0.1 Page created
 * @history 
 * @desc Logic for the Login page
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//required for Identity and Owin Security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

/**
 * @namespace comp2007_finalprject
 */
namespace comp2007_finalproject
{
    /**
     * @class Login
     */
    public partial class Login : System.Web.UI.Page
    {

        /**
         * @description Event Handler for Page load event
         * @method Page_Load
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //create new userStore and userManager objects
            //generic userStore storing it in UserStore
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            //search for and create a new User object
            var user = userManager.Find(UserNameTextBox.Text, PasswordTextBox.Text);

            //if a match is found for the user
            if (user != null)
            {
                //authenticate and login the new user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                //validate the user identity and store inside a session variable
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //sign in the user
                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

                //redirect to our Main Menu
                Response.Redirect("~/DodgeBall/MainMenu.aspx");
            }
            else
            {
                //throw an Error to the Alert Flash div
                StatusLabel.Text = "Invalid Username or Password";
                AlertFlash.Visible = true;
            }

        }
    }
}