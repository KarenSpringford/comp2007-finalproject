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


namespace comp2007_finalproject
{
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Games.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //use EF to connect to the server
            using (TeamConnection db = new TeamConnection())
            {
                //use the Student model to create a new student object and 
                //save a new record
                Game newGame = new Game();

                //add data to the new Game record
                //newGame.HomeTeamId = DropDownList.Equals.TeamID;
                //newGame.AwayTeamId = DropDownList1.Equals.TeamID;
                newGame.HomePoints = Convert.ToInt32(HomePointsTextBox.Text);

                //use LINQ to ADO.net to add / insert my new Student into the DB
                db.Students.Add(newStudent);

                //save our changes
                db.SaveChanges();

                //redirect back to the updated Students page
                Response.Redirect("~/Students.aspx");
            }
        }
    }
}