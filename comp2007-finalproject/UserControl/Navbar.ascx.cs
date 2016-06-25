/**
 * @file Navbar.ascx.cs
 * @author Aristotle Rovithis & Karen Springford
 * @version 0.0.2
 * @desc Logic for the Navbar UserControl
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
 * @namespace comp2007_finalprject
 */
namespace comp2007_finalproject
{

    /**
     * @class Navbar
     */ 
	public partial class Navbar : System.Web.UI.UserControl
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
            if (!IsPostBack)
            {
                //check to see if the user is logged in
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    //show the DodgeBall Context area
                    DodgeBallPlaceholder.Visible = true;
                    PublicPlaceholder.Visible = false;
                }
                else
                {
                    //only show login and register
                    DodgeBallPlaceholder.Visible = false;
                    PublicPlaceholder.Visible = true;
                }

                addActiveClass();
            }
        }

        /**
         * This methods adds the active class to each li in the main navbar according to page title
         * Single line solution
         * 
         * @method addActiveClass
         * @return {String}
         */
        private string addActiveClass()
        {
            // strips page title of caps and sapces
            string activeLinkIdString = Page.Title.ToString().ToLower().Replace(" ", String.Empty);

            // searches for a HTML node with that id
            Object activeNode = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl(activeLinkIdString);

            //if its found it gets an active class, if its not nothing happens
            if (activeNode != null)
            {
                ((System.Web.UI.HtmlControls.HtmlGenericControl)activeNode).Attributes.Add("class", "active");
            }

            //returns the string for debugging purposes.
            return activeLinkIdString;
        }
    }
}