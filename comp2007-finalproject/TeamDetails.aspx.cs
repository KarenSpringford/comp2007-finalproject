﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Using statements required for EF & DB
using comp2007_finalproject.Models;
using System.Web.ModelBinding;

namespace comp2007_finalproject
{
    public partial class TeamDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    
        protected void SaveButton_Click(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // redirect
            Response.Redirect("~/Teams.aspx");
        }
    }
}