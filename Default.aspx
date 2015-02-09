<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<%--Class: <CMIS485 6380 Web Database Development (2152) >
Student Name: David Walters
Instructor: <Dr. Alla Webb>
Assignment #: Project 2
Description: This application allows the create, read, update and delete functions to a basic customer database
    for Reston Real Estate company. Default.aspx is the default student webpage for project 2.
Due Date :<2/8/2015>
I pledge that I have completed the programming assignment independently.
I have not copied the code from a student or any source.
I have not given my code to any student.
Sign here: David Walters--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Reston Real Estate Customers</title>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
        <div class="container">
            <p />
            <div class="span1">
                <div class="jumbotron">
                    <h1>Project 2 <small>ASP.NET with C#</small></h1>
                    <p>
                        David Walters<br />
                        CMIS 485<br />
                        Professor: Dr. Alla Webb
                    </p>
                </div>
            </div>
        </div>
        <div class="container">
            <h1>Reston Real Estate Customers <small>(Step 4)</small><asp:LinkButton ID="NewRecordButton" runat="server" CssClass="btn btn-primary pull-right" OnClick="NewRecordButton_Click">New Customer</asp:LinkButton>
            </h1>
            <% 
                //Declares the table header, only if the application has one or more result. 
                int rowNumber = CustomersView.Rows.Count;
                if (rowNumber > 0)
                {
                    CustomersView.HeaderRow.TableSection = TableRowSection.TableHeader;
                } %>
            <asp:GridView ID="CustomersView" runat="server" AllowPaging="True" DataKeyNames="CUST_ID" DataSourceID="OracleDB" CssClass="table table-hover" GridLines="None" RowHeaderColumn="CUST_ID" AutoGenerateColumns="False">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:TemplateField AccessibleHeaderText="True" HeaderText="ID" SortExpression="CUST_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CUST_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CUST_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="NAME_FIRST">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NAME_FIRST") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("NAME_FIRST") %>'></asp:Label>
                            &nbsp;<asp:Label ID="Label15" runat="server" Text='<%# Eval("NAME_LAST") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Referrer" SortExpression="REFERRER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("REFERRER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("REFERRER") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Employer" SortExpression="EMPLOYER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EMPLOYER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("EMPLOYER") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth" SortExpression="DATE_OF_BIRTH">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="ADDRESS_STREET">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("ADDRESS_STREET") %>'></asp:Label>
                            ,
                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("ADDRESS_CITY") %>'></asp:Label>
                            ,
                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("ADDRESS_STATE") %>'></asp:Label>
                            ,
                            <asp:Label ID="Label18" runat="server" Text='<%# Eval("ADDRESS_ZIP") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone (cell)" SortExpression="CELL_PHONE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("CELL_PHONE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("CELL_PHONE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone (home)" SortExpression="HOME_PHONE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("HOME_PHONE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("HOME_PHONE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Agent ID" SortExpression="AGENT_ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("AGENT_ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("AGENT_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <SelectedRowStyle CssClass="info" />
            </asp:GridView>
            <asp:SqlDataSource ID="OracleDB" runat="server"
                ConnectionString="<%$ ConnectionStrings:OracleConnString %>"
                InsertCommand="INSERT INTO &quot;CUSTOMERS&quot; ( &quot;NAME_FIRST&quot;, &quot;NAME_MI&quot;, &quot;NAME_LAST&quot;, &quot;REFERRER&quot;, &quot;EMPLOYER&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;ADDRESS_STREET&quot;, &quot;ADDRESS_CITY&quot;, &quot;ADDRESS_STATE&quot;, &quot;ADDRESS_ZIP&quot;, &quot;CELL_PHONE&quot;, &quot;HOME_PHONE&quot;, &quot;AGENT_ID&quot;) VALUES ( :NAME_FIRST, :NAME_MI, :NAME_LAST, :REFERRER, :EMPLOYER, :DATE_OF_BIRTH, :ADDRESS_STREET, :ADDRESS_CITY, :ADDRESS_STATE, :ADDRESS_ZIP, :CELL_PHONE, :HOME_PHONE, :AGENT_ID)"
                OldValuesParameterFormatString="original_{0}"
                ProviderName="<%$ ConnectionStrings:OracleConnString.ProviderName %>"
                SelectCommand="SELECT * FROM &quot;CUSTOMERS&quot;">
                <DeleteParameters>
                    <asp:Parameter Name="original_CUST_ID" Type="Decimal" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <div class="form-horizontal">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="CUST_ID" DataSourceID="OracleDBViewer" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated" Width="350px" CssClass="form-horizontal small">
                    <EditItemTemplate>
                        <div class="container">
                        <div class="input-group input-group-sm">
                            <h4>ID: </h4>
                            <asp:Label ID="CUST_IDLabel1" runat="server" Text='<%# Eval("CUST_ID") %>' CssClass="form-control form-control-static" Width="300px" />
                            <br />
                            <br />

                            <h4>First Name </h4>
                            <asp:TextBox ID="NAME_FIRSTTextBox" runat="server" CssClass="form-control " Text='<%# Bind("NAME_FIRST") %>' Width="300px" />
                            <asp:RequiredFieldValidator ID="FirstNameEditValidator" runat="server" ControlToValidate="NAME_FIRSTTextbox" CssClass="label label-warning  pull-right" ErrorMessage="First name is required."></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>Middle Initial</h4>
                            <asp:TextBox ID="NAME_MITextBox" runat="server" CssClass="form-control" Text='<%# Bind("NAME_MI") %>' Width="300px" />
                            <asp:CustomValidator ID="MIEditValidator" runat="server" ControlToValidate="Name_MITextBox" CssClass="label label-warning  pull-right" ErrorMessage="Middle initial must be 1 character." OnServerValidate="MIValidator_ServerValidate"></asp:CustomValidator>
                            <br />
                            <br />

                            <h4>Last Name</h4>
                            <asp:TextBox ID="NAME_LASTTextBox" runat="server" CssClass="form-control" Text='<%# Bind("NAME_LAST") %>' Width="300px" />
                            <asp:RequiredFieldValidator ID="LastNameEditValidator" runat="server" ControlToValidate="NAME_LASTTextbox" CssClass="label label-warning  pull-right" ErrorMessage="Last name is required."></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>Referrer</h4>
                            <asp:TextBox ID="REFERRERTextBox" runat="server" CssClass="form-control" Text='<%# Bind("REFERRER") %>' Width="300px" />
                            <br />
                            <br />

                            <h4>Employer</h4>
                            <asp:TextBox ID="EMPLOYERTextBox" runat="server" CssClass="form-control" Text='<%# Bind("EMPLOYER") %>' Width="300px" />
                            <br />
                            <br />

                            <h4>Date of Birth <small>(mm/dd/yyyy)</small></h4>
                            <asp:TextBox ID="DATE_OF_BIRTHTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DATE_OF_BIRTH") %>' Width="300px" />
                            <asp:CustomValidator ID="DateOfBirthEditValidator" runat="server" ControlToValidate="DATE_OF_BIRTHTextBox" CssClass="label label-warning  pull-right" ErrorMessage="Date must be in dd/mm/yyyy format." OnServerValidate="DOBValidator_ServerValidate"></asp:CustomValidator>
                            <br />
                            <br />

                            <h4>Address</h4>
                            <asp:TextBox ID="ADDRESS_STREETTextBox" runat="server" CssClass="form-control" Text='<%# Bind("ADDRESS_STREET") %>' Width="300px" />
                            <asp:RequiredFieldValidator ID="StreetAddressEditValidator" runat="server" ControlToValidate="ADDRESS_STREETTextBox" CssClass="label label-warning  pull-right" ErrorMessage="Address is required."></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>City</h4>
                            <asp:TextBox ID="ADDRESS_CITYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("ADDRESS_CITY") %>' Width="300px" />
                            <asp:RequiredFieldValidator ID="CityEditValidator" runat="server" ControlToValidate="ADDRESS_CITYTextBox" CssClass="label label-warning  pull-right" ErrorMessage="City is required."></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>State</h4>
                            <asp:DropDownList ID="StateDropDownList" runat="server" CssClass="form-control" SelectedValue='<%# Bind("ADDRESS_STATE") %>' Width="300px">
                                <asp:ListItem Value="NONE">Choose State</asp:ListItem>
                                <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                <asp:ListItem Value="CA">California</asp:ListItem>
                                <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                <asp:ListItem Value="FL">Florida</asp:ListItem>
                                <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                <asp:ListItem Value="ME">Maine</asp:ListItem>
                                <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                <asp:ListItem Value="MT">Montana</asp:ListItem>
                                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                <asp:ListItem Value="NY">New York</asp:ListItem>
                                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                <asp:ListItem Value="TX">Texas</asp:ListItem>
                                <asp:ListItem Value="UT">Utah</asp:ListItem>
                                <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                <asp:ListItem Value="WA">Washington</asp:ListItem>
                                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                            <asp:CompareValidator ID="StateEditValidator" runat="server" ControlToValidate="StateDropDownList" CssClass="label label-warning  pull-right" ErrorMessage="Please choose a state." Operator="NotEqual" Type="String" ValueToCompare="NONE"></asp:CompareValidator>
                            <br />
                            <br />

                            <h4>Zip Code</h4>
                            <asp:TextBox ID="ADDRESS_ZIPTextBox" runat="server" CssClass="form-control" Text='<%# Bind("ADDRESS_ZIP") %>' Width="300px" />
                            <asp:RequiredFieldValidator ID="ZIPCodeRequired2" runat="server"
                                ControlToValidate="ADDRESS_ZIPTextBox"
                                ErrorMessage="Zip Code is required"
                                SetFocusOnError="True" CssClass="label label-warning  pull-right"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="ZipEditValidator" runat="server" ControlToValidate="ADDRESS_ZIPTextBox" CssClass="label label-warning  pull-right" ErrorMessage="Invalid postal code." Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            <br />
                            <br />

                            <h4>Phone (cell)</h4>
                            <asp:TextBox ID="CELL_PHONETextBox" runat="server" CssClass="form-control" Text='<%# Bind("CELL_PHONE") %>' Width="300px" />
                            <br />
                            <br />

                            <h4>Phone (home)</h4>
                            <asp:TextBox ID="HOME_PHONETextBox" runat="server" CssClass="form-control" Text='<%# Bind("HOME_PHONE") %>' Width="300px" />
                            <asp:RequiredFieldValidator ID="HomePhoneEditValidator" runat="server" ControlToValidate="HOME_PHONETextBox" CssClass="label label-warning pull-right" ErrorMessage="Home phone number is required."></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>Agent ID</h4>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" CssClass="form-control" DataSourceID="OracleDBAgents" DataTextField="AGENT_ID" DataValueField="AGENT_ID" SelectedValue='<%# Bind("AGENT_ID") %>' Width="300px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="OracleDBAgents" runat="server" ConnectionString="<%$ ConnectionStrings:OracleConnString %>" ProviderName="<%$ ConnectionStrings:OracleConnString.ProviderName %>" SelectCommand="SELECT &quot;AGENT_ID&quot; FROM &quot;AGENTS&quot;"></asp:SqlDataSource>
                            <br />
                            <br />
                        </div>
                        <div class="btn-group pull-right" role="group">
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-warning" Text="Cancel" />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-success" Text="Update" />
                        </div>
                        </div>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        <h1>View/Edit Customer <small>(Steps 5, 6, 7)</small></h1>
                    </HeaderTemplate>
                    <InsertItemTemplate>
                        <div class="container">
                        <div class="input-group input-group-sm">
                            <h4>First Name</h4>
                            <asp:TextBox ID="NAME_FIRSTTextBox2" runat="server" Text='<%# Bind("NAME_FIRST") %>' CssClass="form-control" Width="300px" />
                            <asp:RequiredFieldValidator ID="FirstNameEditValidator2" runat="server"
                                ControlToValidate="NAME_FIRSTTextbox2"
                                ErrorMessage="First name is required." CssClass="label label-warning  pull-right"></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>Middle Initial</h4>
                            <asp:TextBox ID="NAME_MITextBox2" runat="server" Text='<%# Bind("NAME_MI") %>' CssClass="form-control" />
                            <asp:CustomValidator ID="MIEditValidator2" runat="server"
                                ControlToValidate="Name_MITextBox2"
                                ErrorMessage="Middle initial must be 1 character."
                                OnServerValidate="MIValidator_ServerValidate" SetFocusOnError="True" CssClass="label label-warning  pull-right"></asp:CustomValidator>
                            <br />
                            <br />

                            <h4>Last Name</h4>
                            <asp:TextBox ID="NAME_LASTTextBox2" runat="server" Text='<%# Bind("NAME_LAST") %>' CssClass="form-control " Width="300px" />
                            <asp:RequiredFieldValidator ID="LastNameEditValidator2" runat="server"
                                ControlToValidate="NAME_LASTTextbox2"
                                ErrorMessage="Last name is required." SetFocusOnError="True" CssClass="label label-warning  pull-right"></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>Referrer</h4>
                            <asp:TextBox ID="REFERRERTextBox2" runat="server" Text='<%# Bind("REFERRER") %>' CssClass="form-control " Width="300px" />
                            <br />
                            <br />

                            <h4>Employer</h4>
                            <asp:TextBox ID="EMPLOYERTextBox2" runat="server" Text='<%# Bind("EMPLOYER") %>' CssClass="form-control " Width="300px" />
                            <br />
                            <br />

                            <h4>Date of Birth <small>(mm/yy/dddd)</small></h4>
                            <asp:TextBox ID="DATE_OF_BIRTHTextBox2" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' CssClass="form-control " Width="300px" />
                            <asp:CustomValidator ID="DateOfBirthEditValidator2" runat="server"
                                ControlToValidate="DATE_OF_BIRTHTextBox2"
                                ErrorMessage="Date must be in dd/mm/yyyy format."
                                OnServerValidate="DOBValidator_ServerValidate" SetFocusOnError="True" CssClass="label label-warning  pull-right"></asp:CustomValidator>
                            <br />
                            <br />

                            <h4>Address</h4>
                            <asp:TextBox ID="ADDRESS_STREETTextBox2" runat="server" Text='<%# Bind("ADDRESS_STREET") %>' CssClass="form-control " Width="300px" />
                            <asp:RequiredFieldValidator ID="StreetAddressEditValidator2" runat="server"
                                ControlToValidate="ADDRESS_STREETTextBox2"
                                ErrorMessage="Address is required." SetFocusOnError="True" CssClass="label label-warning  pull-right"></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>City</h4>
                            <asp:TextBox ID="ADDRESS_CITYTextBox2" runat="server" Text='<%# Bind("ADDRESS_CITY") %>' CssClass="form-control " Width="300px" />
                            <asp:RequiredFieldValidator ID="CityEditValidator2" runat="server"
                                ControlToValidate="ADDRESS_CITYTextBox2"
                                ErrorMessage="City is required." SetFocusOnError="True" CssClass="label label-warning  pull-right"></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>State</h4>
                            <asp:DropDownList ID="StateDropDownList2" runat="server" SelectedValue='<%# Bind("ADDRESS_STATE") %>' CssClass="form-control" Width="300px">
                                <asp:ListItem Value="NONE">Choose State</asp:ListItem>
                                <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                <asp:ListItem Value="CA">California</asp:ListItem>
                                <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                <asp:ListItem Value="FL">Florida</asp:ListItem>
                                <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                <asp:ListItem Value="ME">Maine</asp:ListItem>
                                <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                <asp:ListItem Value="MT">Montana</asp:ListItem>
                                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                <asp:ListItem Value="NY">New York</asp:ListItem>
                                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                <asp:ListItem Value="TX">Texas</asp:ListItem>
                                <asp:ListItem Value="UT">Utah</asp:ListItem>
                                <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                <asp:ListItem Value="WA">Washington</asp:ListItem>
                                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:CompareValidator ID="StateEditValidator2" runat="server"
                                ControlToValidate="StateDropDownList2"
                                Type="String"
                                Operator="NotEqual"
                                ErrorMessage="Please choose a state." SetFocusOnError="True" ValueToCompare="NONE" CssClass="label label-warning  pull-right"></asp:CompareValidator>
                            <br />
                            <br />

                            <h4>Zip Code</h4>
                            <asp:TextBox ID="ADDRESS_ZIPTextBox2" runat="server" Text='<%# Bind("ADDRESS_ZIP") %>' CssClass="form-control " Width="300px" />
                            <asp:CompareValidator ID="ZipEditValidator2" runat="server"
                                ControlToValidate="ADDRESS_ZIPTextBox2"
                                ErrorMessage="Invalid postal code."
                                Operator="DataTypeCheck"
                                Type="Integer" CssClass="label label-warning  pull-right"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="ZIPCodeRequired2" runat="server"
                                ControlToValidate="ADDRESS_ZIPTextBox2"
                                ErrorMessage="Zip Code is required"
                                SetFocusOnError="True" CssClass="label label-warning  pull-right"></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>Phone (cell)</h4>
                            <asp:TextBox ID="CELL_PHONETextBox2" runat="server" Text='<%# Bind("CELL_PHONE") %>' CssClass="form-control " Width="300px" />
                            <br />
                            <br />

                            <h4>Phone (home)</h4>
                            <asp:TextBox ID="HOME_PHONETextBox2" runat="server" CssClass="form-control " Text='<%# Bind("HOME_PHONE") %>' Width="300px" />
                            <asp:RequiredFieldValidator ID="HomePhoneEditValidator2" runat="server" ControlToValidate="HOME_PHONETextBox2" CssClass="label label-warning  pull-right" ErrorMessage="Home phone number is required." SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <br />
                            <br />

                            <h4>Agent ID</h4>
                            <asp:DropDownList ID="DropDownList12" runat="server" AppendDataBoundItems="True" CssClass="form-control" DataSourceID="OracleDBAgents" DataTextField="AGENT_ID" DataValueField="AGENT_ID" SelectedValue='<%# Bind("AGENT_ID") %>' Width="300px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="OracleDBAgents" runat="server" ConnectionString="<%$ ConnectionStrings:OracleConnString %>" ProviderName="<%$ ConnectionStrings:OracleConnString.ProviderName %>" SelectCommand="SELECT &quot;AGENT_ID&quot; FROM &quot;AGENTS&quot;"></asp:SqlDataSource>
                            <br />
                            <br />
                        </div>
                        <div class="btn-group pull-right" role="group">
                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-warning" Text="Cancel" />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-success" Text="Insert" />
                        </div>
                        </div>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div class="container">
                        <div class="input-group input-group-sm">
                            <h4>ID: </h4>
                            <asp:Label ID="CUST_IDLabel" runat="server" Text='<%# Eval("CUST_ID") %>' CssClass="form-control-static" />
                            <br />

                            <h4>First Name</h4>
                            <asp:Label ID="NAME_FIRSTLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("NAME_FIRST") %>' Width="300px" />
                            <br />

                            <h4>Middle Initial</h4>
                            <asp:Label ID="NAME_MILabel" runat="server" CssClass="form-control-static" Text='<%# Bind("NAME_MI") %>' Width="300px" />
                            <br />

                            <h4>Last Name</h4>
                            <asp:Label ID="NAME_LASTLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("NAME_LAST") %>' Width="300px" />
                            <br />

                            <h4>Referrer</h4>
                            <asp:Label ID="REFERRERLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("REFERRER") %>' Width="300px" />
                            <br />

                            <h4>Employer</h4>
                            <asp:Label ID="EMPLOYERLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("EMPLOYER") %>' Width="300px" />
                            <br />

                            <h4>Date of Birth</h4>
                            <asp:Label ID="DATE_OF_BIRTHLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("DATE_OF_BIRTH") %>' Width="300px" />
                            <br />

                            <h4>Address</h4>
                            <asp:Label ID="ADDRESS_STREETLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("ADDRESS_STREET") %>' Width="300px" />
                            <br />

                            <h4>City</h4>
                            <asp:Label ID="ADDRESS_CITYLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("ADDRESS_CITY") %>' Width="300px" />
                            <br />

                            <h4>State</h4>
                            <asp:Label ID="ADDRESS_STATELabel" runat="server" CssClass="form-control-static" Text='<%# Bind("ADDRESS_STATE") %>' Width="300px" />
                            <br />

                            <h4>Zip Code</h4>
                            <asp:Label ID="ADDRESS_ZIPLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("ADDRESS_ZIP") %>' Width="300px" />
                            <br />

                            <h4>Phone (cell)</h4>
                            <asp:Label ID="CELL_PHONELabel" runat="server" CssClass="form-control-static" Text='<%# Bind("CELL_PHONE") %>' Width="300px" />
                            <br />

                            <h4>Phone (home)</h4>
                            <asp:Label ID="HOME_PHONELabel" runat="server" CssClass="form-control-static" Text='<%# Bind("HOME_PHONE") %>' Width="300px" />
                            <br />

                            <h4>Agent ID</h4>
                            <asp:Label ID="AGENT_IDLabel" runat="server" CssClass="form-control-static" Text='<%# Bind("AGENT_ID") %>' Width="300px" />
                            <br />
                            <br />
                        </div>
                        <div class="btn-group pull-right" role="group">
                            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btn btn-warning inactive" Text="Delete" />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-info" Text="Edit" />
                        </div>
                            </div>

                    </ItemTemplate>
                </asp:FormView>
            </div>
            <asp:SqlDataSource ID="OracleDBViewer" runat="server" ConnectionString="<%$ ConnectionStrings:OracleConnString %>"
                DeleteCommand="DELETE FROM &quot;CUSTOMERS&quot; WHERE &quot;CUST_ID&quot; = :CUST_ID"
                InsertCommand="INSERT INTO CUSTOMERS(NAME_FIRST, NAME_MI, NAME_LAST, REFERRER, EMPLOYER, DATE_OF_BIRTH, ADDRESS_STREET, ADDRESS_CITY, ADDRESS_STATE, ADDRESS_ZIP, CELL_PHONE, HOME_PHONE, AGENT_ID) VALUES (:NAME_FIRST, :NAME_MI, :NAME_LAST, :REFERRER, :EMPLOYER, :DATE_OF_BIRTH, :ADDRESS_STREET, :ADDRESS_CITY, :ADDRESS_STATE, :ADDRESS_ZIP, :CELL_PHONE, :HOME_PHONE, :AGENT_ID)"
                ProviderName="<%$ ConnectionStrings:OracleConnString.ProviderName %>"
                SelectCommand="SELECT * FROM &quot;CUSTOMERS&quot; WHERE &quot;CUST_ID&quot; = :CUST_ID"
                UpdateCommand="UPDATE &quot;CUSTOMERS&quot; SET &quot;NAME_FIRST&quot; = :NAME_FIRST, &quot;NAME_MI&quot; = :NAME_MI, &quot;NAME_LAST&quot; = :NAME_LAST, &quot;REFERRER&quot; = :REFERRER, &quot;EMPLOYER&quot; = :EMPLOYER, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;ADDRESS_STREET&quot; = :ADDRESS_STREET, &quot;ADDRESS_CITY&quot; = :ADDRESS_CITY, &quot;ADDRESS_STATE&quot; = :ADDRESS_STATE, &quot;ADDRESS_ZIP&quot; = :ADDRESS_ZIP, &quot;CELL_PHONE&quot; = :CELL_PHONE, &quot;HOME_PHONE&quot; = :HOME_PHONE, &quot;AGENT_ID&quot; = :AGENT_ID WHERE &quot;CUST_ID&quot; = :CUST_ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CustomersView" Name="CUST_ID" Type="Double" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="CUST_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NAME_FIRST" Type="String" />
                    <asp:Parameter Name="NAME_MI" Type="String" />
                    <asp:Parameter Name="NAME_LAST" Type="String" />
                    <asp:Parameter Name="REFERRER" Type="String" />
                    <asp:Parameter Name="EMPLOYER" Type="String" />
                    <asp:Parameter Name="DATE_OF_BIRTH" Type="String" />
                    <asp:Parameter Name="ADDRESS_STREET" Type="String" />
                    <asp:Parameter Name="ADDRESS_CITY" Type="String" />
                    <asp:Parameter Name="ADDRESS_STATE" Type="String" />
                    <asp:Parameter Name="ADDRESS_ZIP" Type="String" />
                    <asp:Parameter Name="CELL_PHONE" Type="String" />
                    <asp:Parameter Name="HOME_PHONE" Type="String" />
                    <asp:Parameter Name="AGENT_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAME_FIRST" Type="String" />
                    <asp:Parameter Name="NAME_MI" Type="String" />
                    <asp:Parameter Name="NAME_LAST" Type="String" />
                    <asp:Parameter Name="REFERRER" Type="String" />
                    <asp:Parameter Name="EMPLOYER" Type="String" />
                    <asp:Parameter Name="DATE_OF_BIRTH" Type="String" />
                    <asp:Parameter Name="ADDRESS_STREET" Type="String" />
                    <asp:Parameter Name="ADDRESS_CITY" Type="String" />
                    <asp:Parameter Name="ADDRESS_STATE" Type="String" />
                    <asp:Parameter Name="ADDRESS_ZIP" Type="String" />
                    <asp:Parameter Name="CELL_PHONE" Type="String" />
                    <asp:Parameter Name="HOME_PHONE" Type="String" />
                    <asp:Parameter Name="AGENT_ID" Type="Decimal" />
                    <asp:Parameter Name="CUST_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
