/**
 * @file TeamDetails.aspx.cs
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.21
 * @version 0.0.1 Page created
 * @history 
 * @desc Logic for TeamDetails.aspx
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Using statements required for EF & DB
using comp2007_finalproject.Models;
using System.Web.ModelBinding;

/**
 * @namespace comp2007_finalprject
 */
namespace comp2007_finalproject
{
    /**
     * @class TeamDetails
     */
    public partial class TeamDetails : System.Web.UI.Page
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
            if(!IsPostBack
                && Request.QueryString.Count > 0)
            {
                this.GetTeam();
            }
        }

        /**
         * @description selects a team from the database for updating purposes
         * @method GetTeam
         * @return {void}
         */
        protected void GetTeam()
        {
            int teamID = Convert.ToInt32(Request.QueryString["TeamId"]);

            using (TeamConnection db = new TeamConnection())
            {
                Team updateTeam = (from team in db.Teams
                                   where team.TeamId == teamID
                                   select team).FirstOrDefault();

                if (updateTeam != null)
                {
                    TeamNameTextBox.Text = updateTeam.TeamName;
                }
            }
        }

        /**
         * @description Event Handler for save button click
         * @method SaveButton_Click
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
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
                Response.Redirect("~/Teams.aspx");
            }
        }

        /**
         * @description Event Handler for cancel button click
         * @method CancelButton_Click
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // redirect
            Response.Redirect("~/Teams.aspx");
        }
    }
}