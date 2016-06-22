/**
* @file Teams.ascx.cs
* @author Aristotle Rovithis 200209736
* @author Karen Springford 200299681
* @modified 2016.06.21
* @version 0.0.2 Page created
* @history 
* @desc Logic for the Teams Page
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statements that are required to connect to EF DB
using comp2007_finalproject.Models;
using System.Web.ModelBinding;
using System.Linq.Dynamic;

/**
 * @namespace comp2007_finalprject
 */
namespace comp2007_finalproject
{
    /**
     * @class Teams
     */
    public partial class Teams : System.Web.UI.Page
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
                GetTeams();
            }
        }

        /**
         * @description gets all the teams from the database
         * @method GetTeams
         * @return {void}
         */
        protected void GetTeams()
        {
            // connect to the entity framework

            using (TeamConnection db = new TeamConnection())
            {

                //query the Students table using EF and LINQ
                var teams = (from allTeams in db.Teams
                             select allTeams);

                //bind the result to the gridview
                TeamsGridView.DataSource = teams.ToList();
                TeamsGridView.DataBind();
            }
        }

        /**
         * @description Event Handler deleting a team from the database
         * @method TeamsGridView_RowDeleting
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
        protected void TeamsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int selectedRow = e.RowIndex;

            int TeamId = Convert.ToInt32(TeamsGridView.DataKeys[selectedRow].Values["TeamId"]);

            using (TeamConnection db = new TeamConnection())
            {
                Team deleteTeam = (from team in db.Teams
                                    where team.TeamId == TeamId
                                    select team).FirstOrDefault();

                db.Teams.Remove(deleteTeam);
                db.SaveChanges();
                this.GetTeams();
            }
        }
    }
}