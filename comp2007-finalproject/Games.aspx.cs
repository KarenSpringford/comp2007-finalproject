/**
 * @file Stats.ascx.cs
 * @author Aristotle Rovithis & Karen Springford
 * @version 0.0.2
 * @desc Logic for the Statistics Page
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
        protected void GetGames()
        {
            // connect to the entity framework5

            using (TeamConnection db = new TeamConnection())
            {

                //query the Students table using EF and LINQ
                var games = (from allG in db.Games
                             join t1 in db.Teams on allG.HomeTeamId equals t1.TeamId into allG2
                             from item in allG2.DefaultIfEmpty(new Team  {TeamName = "Beavers" }) select allG2);
               
                

                //bind the result to the gridview
                GamesGridView.DataSource = games.ToList();
                GamesGridView.DataBind();
            }
        }
    }
}