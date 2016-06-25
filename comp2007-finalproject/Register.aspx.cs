/**
 * @file Register.ascx.cs
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.24
 * @version 0.0.1 Page created
 * @history 
 * @desc Logic for the Registration page
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
     * @class Register
     */
    public partial class Register : System.Web.UI.Page
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

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            //redirect back to the home page
            Response.Redirect("~/Default.aspx");

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            //create new userStore and userManager objects
            //generic userStore storing it in UserStore
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            //create a new user object
            var user = new IdentityUser()
            {
                UserName = UserNameTextBox.Text,
                PhoneNumber = PhoneNumberTextBox.Text,
                Email = EmailTextBox.Text,
                // ID is auto generated so it is unnecessary
            };

            //create new user in the DB and store result in the the following result object
            IdentityResult result = userManager.Create(user, PasswordTextBox.Text);

            //check if successfully registered and redirect
            if (result.Succeeded)
            {
                //authenticate and login the new user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                //validate the user identity and store inside a session variable
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //sign in
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                //redirect to the main menu page
                Response.Redirect("~/DodgeBall/MainMenu.aspx");
            }
            else
            {
                //display error in the AlertFlash div (see named div id in Register.aspx)
                //the text label is left generic to allow an insert
                StatusLabel.Text = result.Errors.FirstOrDefault();
                AlertFlash.Visible = true;
            }

        }
    }
}