<%@ Page Title="Home" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="IP_Group_Project.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <link rel="stylesheet" href="css/main.css" />
    <div id="fb-root"></div>
    <div id="fb-root">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:missCalculationsConnectionString %>" SelectCommand="SELECT [Ticket_Name], [Ticket_Description], [Ticket_Date] FROM [Ticket] ORDER BY [Ticket_Date]"></asp:SqlDataSource>
    </div>

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

     <div id="FrontPageList">
    <div id="fullcontent">
    <div style="width: 20%; height: 100%; background-color: black; float:left;"><div class="fb-comments" data-href="https://www.facebook.com/MissCalculations/" data-width="300" data-numposts="5"></div></div>
    <div style="width: 60%; height: 100%; background-color: gray; float:left;">-&nbsp;&nbsp;<div id="frontList"><section id="frontList"><asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" style="margin-right: 50px">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF;color: #284775;">
                <asp:Label ID="Ticket_NameLabel" runat="server" Text='<%# Eval("Ticket_Name") %>' />
                <br />
                
                <asp:Label ID="Ticket_DescriptionLabel" runat="server" Text='<%# Eval("Ticket_Description") %>' />
                <br />
                
                <asp:Label ID="Ticket_DateLabel" runat="server" Text='<%# Eval("Ticket_Date", "{0:d}") %>' />
                <br />
                <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="4YCRMU3J3UEP6">
<table>
<tr><td><input type="hidden" name="on0" value="Ticket Types">Ticket Types</td></tr><tr><td><select name="os0">
	<option value="Pit">Pit $30.00 USD</option>
	<option value="Balcony">Balcony $20.00 USD</option>
	<option value="VIP">VIP $50.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">Ticket_Name:
                <asp:TextBox ID="Ticket_NameTextBox" runat="server" Text='<%# Bind("Ticket_Name") %>' />
                <br />
                
                <asp:TextBox ID="Ticket_DescriptionTextBox" runat="server" Text='<%# Bind("Ticket_Description") %>' />
                <br />
               
                <asp:TextBox ID="Ticket_DateTextBox" runat="server" Text='<%# Bind("Ticket_Date") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">Ticket_Name:
                <asp:TextBox ID="Ticket_NameTextBox" runat="server" Text='<%# Bind("Ticket_Name") %>' />
                <br />
                Ticket_Description:
                <asp:TextBox ID="Ticket_DescriptionTextBox" runat="server" Text='<%# Bind("Ticket_Description") %>' />
                <br />
                Ticket_Date:
                <asp:TextBox ID="Ticket_DateTextBox" runat="server" Text='<%# Bind("Ticket_Date") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF;color: #333333;">
                <asp:Label ID="Ticket_NameLabel" runat="server" Text='<%# Eval("Ticket_Name") %>' />
                <br />
                
                <asp:Label ID="Ticket_DescriptionLabel" runat="server" Text='<%# Eval("Ticket_Description") %>' />
                <br />
                
                <asp:Label ID="Ticket_DateLabel" runat="server" Text='<%# Eval("Ticket_Date", "{0:d}") %>' />
                <br />
                <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="4YCRMU3J3UEP6">
<table>
<tr><td><input type="hidden" name="on0" value="Ticket Types">Ticket Types</td></tr><tr><td><select name="os0">
	<option value="Pit">Pit $30.00 USD</option>
	<option value="Balcony">Balcony $20.00 USD</option>
	<option value="VIP">VIP $50.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">Ticket_Name:
                <asp:Label ID="Ticket_NameLabel" runat="server" Text='<%# Eval("Ticket_Name") %>' />
                <br />
                Ticket_Description:
                <asp:Label ID="Ticket_DescriptionLabel" runat="server" Text='<%# Eval("Ticket_Description") %>' />
                <br />
                Ticket_Date:
                <asp:Label ID="Ticket_DateLabel" runat="server" Text='<%# Eval("Ticket_Date") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
        </asp:ListView>
        </section>
        </div>
        </div>
    <div style="width: 20%; height: 100%; background-color: black; float:right; margin-left: 0px; margin-bottom: 0px;">
        <a class="twitter-timeline" width="300px" href="https://twitter.com/MsCalculations" data-widget-id="724296404399595520">Tweets by @MsCalculations</a><script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
          </div>
    </div>
    </div>


</asp:Content>

