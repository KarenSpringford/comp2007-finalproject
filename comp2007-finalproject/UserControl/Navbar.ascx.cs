using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_finalproject
{
	public partial class Navbar : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
        {
            SetActivePage();
        }

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home Page":
                    HomePage.Attributes.Add("class", "active");
                    break;
                case "Schedule":
                    Schedule.Attributes.Add("class", "active");
                    break;
                case "Stats":
                    Stats.Attributes.Add("class", "active");
                    break;
                case "Teams":
                    Teams.Attributes.Add("class", "active");
                    break;
                case "Contact":
                    Contact.Attributes.Add("class", "active");
                    break;
            }
        }
    }
}