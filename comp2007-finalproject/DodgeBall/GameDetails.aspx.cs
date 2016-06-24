/**
 * @file GameDetails.aspx.cs
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.23
 * @version 0.0.2 Page created
 * @history 
 * @desc Logic for the GameDetails.aspx Page
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
     * @class GameDetails
     */
    public partial class GameDetails : System.Web.UI.Page
    {
        /**
         * @description Event Handler for Page load event, fills the table with the available teams
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
         * @description Retrieves the list of teams from the database
         * @method GetTeams
         * @return {void}
         */
        protected void GetTeams()
        {
            using (TeamConnection db = new TeamConnection())
            {
                var teamQuery = (from allTeams in db.Teams
                                 select allTeams.TeamName);
                HomeTeamDropDownList.DataSource = teamQuery.ToList();
                HomeTeamDropDownList.DataBind();
                AwayTeamDropDownList.DataSource = teamQuery.ToList();
                AwayTeamDropDownList.DataBind();
            }
        }

        /**
         * @description Event Handler for Cancel button press, redirects the user to the Games.aspx page
         * @method CancelButton_Click
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DodgeBall/Games.aspx");
        }

        /**
         * @description Event Handler for save button press, saves the team into the database if all required fields are filed in
         * @method SaveButton_Click
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //use EF to connect to the server
            using (TeamConnection db = new TeamConnection())
            {
                //use the Student model to create a new student object and 
                //save a new record
                Game newGame = new Game();

                string home = HomeTeamDropDownList.Text;
                string away = AwayTeamDropDownList.Text;
                System.Diagnostics.Debug.WriteLine(HomeTeamDropDownList.Text);
                System.Diagnostics.Debug.WriteLine(home);
                System.Diagnostics.Debug.WriteLine(home.Equals("Balls & Dolls"));

                var homeTeamId = (from teams in db.Teams
                                  where teams.TeamName == home
                                  select teams).FirstOrDefault().TeamId;

                var  awayTeamId = (from teams in db.Teams
                                  where teams.TeamName == away
                                  select teams).FirstOrDefault().TeamId;

                System.Diagnostics.Debug.WriteLine(homeTeamId); System.Diagnostics.Debug.WriteLine(homeTeamId); System.Diagnostics.Debug.WriteLine(homeTeamId); System.Diagnostics.Debug.WriteLine(homeTeamId);
                //add data to the new Game record
                newGame.HomeTeamId = Convert.ToInt32(homeTeamId);
                newGame.AwayTeamId = Convert.ToInt32(awayTeamId);
                newGame.HomePoints = Convert.ToInt32(HomePointsTextBox.Text);
                newGame.AwayPoints = Convert.ToInt32(AwayPointsTextBox.Text);
                newGame.Spectators = Convert.ToInt32(SpectatorsTextBox.Text);
                newGame.GameDate = Convert.ToDateTime(GameDateTextBox.Text);

                //use LINQ to ADO.net to add / insert my new Game into the DB
                db.Games.Add(newGame);

                //save our changes
                db.SaveChanges();

                //redirect back to the updated Games page
                Response.Redirect("~/DodgeBall/Games.aspx");
            }
        }
    }
}