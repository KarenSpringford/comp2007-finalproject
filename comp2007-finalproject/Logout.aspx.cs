/**
 * @file Logout.ascx.cs
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.24
 * @version 0.0.1 Page created
 * @history 
 * @desc Logic for the Logout page
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
     * @class Logout
     */
    public partial class Logout : System.Web.UI.Page
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
            //store session info and authentication methods in the authentication Manager object
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            //perform sign out
            authenticationManager.SignOut();

            //redirect
            Response.Redirect("~/Login.aspx");

        }
    }
}