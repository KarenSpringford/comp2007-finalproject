using System;
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
            //connect to the server
            using (TeamConnection db = new TeamConnection())
            {
                Team newTeam = new Team();

                int teamID = 0;

                if (Request.QueryString.Count > 0)
                {
                    teamID = Convert.ToInt32(Request.QueryString["teamID"]);

                    newTeam = (from team in db.Teams
                                  where team.TeamId == teamID
                                  select team).FirstOrDefault();
                }

                //add data to the new student record
                newTeam.TeamName = TeamNameTextBox.Text;



                if (teamID == 0)
                {
                    //use LINQ and ADO.NET to add or insert newStudent into the Database
                    db.Teams.Add(newTeam);
                }


                //save changes
                db.SaveChanges();

                //redirect back to the updated students page
                Response.Redirect("~/Students.aspx");
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // redirect
            Response.Redirect("~/Teams.aspx");
        }
    }
}