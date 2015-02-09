using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Class: <CMIS485 6380 Web Database Development (2152) >
//Student Name: David Walters
//Instructor: <Dr. Alla Webb>
//Assignment #: Project 2
//Description: This application allows the create, read, update and delete functions to a basic customer database
//    for Reston Real Estate company. This file- Default.aspx.cs is the 'CodeBehind' page that allows functions to be called
//    and compiled on the server.
//Due Date :<2/8/2015>
//I pledge that I have completed the programming assignment independently.
//I have not copied the code from a student or any source.
//I have not given my code to any student.
//Sign here: David Walters
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        //Updates user view.
        CustomersView.DataBind();
    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        //Updates user view.
        CustomersView.DataBind();
    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        //Updates user view.
        CustomersView.DataBind();
    }
    protected void NewRecordButton_Click(object sender, EventArgs e)
    {
        //Changes the FormView to Insert mode when NewRecordButton is clicked.
        FormView1.ChangeMode(FormViewMode.Insert);
    }
    protected void MIValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Checks to see if the user entered a string that is less than 2 characters long (0 or 1)
        args.IsValid = (args.Value.Length < 2);
    }
    protected void DOBValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        try
        {
            //Checks to see if user inputted correct date format. If no errors are thrown, entry is validated.
            DateTime.ParseExact(args.Value, "dd/mm/yyyy",
                DateTimeFormatInfo.InvariantInfo);
            args.IsValid = true;
        }
        catch
        {
            //If errors are thrown, entry is not validated.
            args.IsValid = false;
        }
    }
}