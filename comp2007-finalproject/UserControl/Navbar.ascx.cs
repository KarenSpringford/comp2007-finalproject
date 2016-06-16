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
            addActiveClass();
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
            Object activeNode = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl(Page.Title.ToString().ToLower().Replace(" ", String.Empty));
            if (activeNode != null)
            {
                ((System.Web.UI.HtmlControls.HtmlGenericControl)activeNode).Attributes.Add("class", "active");
            }
            return (Page.Title.ToString().ToLower().Replace(" ", String.Empty));
        }
    }
}