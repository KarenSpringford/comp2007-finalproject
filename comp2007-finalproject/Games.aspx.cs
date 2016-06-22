/**
 * @file Games.aspx.cs
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.21
 * @version 0.0.2 Page created
 * @history 
 * @desc Logic for teh Games.apsx page
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
     * @class Stats
     */
    public partial class Stats : System.Web.UI.Page
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
                GetGames();
            }
        }

        /**
         * @description retrieves the games from the database
         * @method GetGames
         * @return {void}
         */
        protected void GetGames()
        {
            // connect to the entity framework5

            using (TeamConnection db = new TeamConnection())
            {

                //query the Students table using EF and LINQ
                var games = (from g in db.Games
                             join t1 in db.Teams on g.HomeTeamId equals t1.TeamId
                             join t2 in db.Teams on  g.AwayTeamId equals t2.TeamId
                             select new
                             {
                                Home = t1.TeamName,
                                Away = t2.TeamName,
                                Points = g.AwayPoints+g.HomePoints,
                                Spectators = g.Spectators,
                                GameDate = g.GameDate,
                                GameId = g.GameId
                             });

                //bind the result to the gridview
                GamesGridView.DataSource = games.ToList();
                GamesGridView.DataBind();
            }
        }

        /**
         * @description Event Handler for deleteing a game
         * @method GamesGridView_RowDeleting
         * @param {object} sender
         * @param {EventArgs} e
         * @return {void}
         */
        protected void GamesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int selectedRow = e.RowIndex;

            int GameId = Convert.ToInt32(GamesGridView.DataKeys[selectedRow].Values["GameId"]);
            using (TeamConnection db = new TeamConnection())
            {
                Game deleteGame = (from game in db.Games
                                   where game.GameId == GameId
                                   select game).FirstOrDefault();
                db.Games.Remove(deleteGame);
                db.SaveChanges();
                this.GetGames();
            }
        }

    }
}