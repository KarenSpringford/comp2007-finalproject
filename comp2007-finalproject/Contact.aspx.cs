/**
 * @file Contact.ascx.cs 
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.21
 * @version 0.0.2 page created
 * @history 
 * @desc Logic for the Contact Page
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
     * @class Contact
     */
    public partial class Contact : System.Web.UI.Page
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

        /**
         * @description Event Handler for the Send Button Click
         * @method SendButton_Click
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
        protected void SendButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}