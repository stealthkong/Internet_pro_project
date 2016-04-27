<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="ticketPage.aspx.cs" Inherits="IP_Group_Project.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder99" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Ticket_Name:
            <asp:TextBox ID="Ticket_NameTextBox" runat="server" Text='<%# Bind("Ticket_Name") %>' />
            <br />
            Ticket_Description:
            <asp:TextBox ID="Ticket_DescriptionTextBox" runat="server" Text='<%# Bind("Ticket_Description") %>' />
            <br />
            Ticket_Date:
            <asp:TextBox ID="Ticket_DateTextBox" runat="server" Text='<%# Bind("Ticket_Date") %>' />
            <br />
            Ticket_Price:
            <asp:TextBox ID="Ticket_PriceTextBox" runat="server" Text='<%# Bind("Ticket_Price") %>' />
            <br />
            Ticket_Image:
            <asp:TextBox ID="Ticket_ImageTextBox" runat="server" Text='<%# Bind("Ticket_Image") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Ticket_Name:
            <asp:TextBox ID="Ticket_NameTextBox" runat="server" Text='<%# Bind("Ticket_Name") %>' />
            <br />
            Ticket_Description:
            <asp:TextBox ID="Ticket_DescriptionTextBox" runat="server" Text='<%# Bind("Ticket_Description") %>' />
            <br />
            Ticket_Date:
            <asp:TextBox ID="Ticket_DateTextBox" runat="server" Text='<%# Bind("Ticket_Date") %>' />
            <br />
            Ticket_Price:
            <asp:TextBox ID="Ticket_PriceTextBox" runat="server" Text='<%# Bind("Ticket_Price") %>' />
            <br />
            Ticket_Image:
            <asp:TextBox ID="Ticket_ImageTextBox" runat="server" Text='<%# Bind("Ticket_Image") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Ticket_Name:
            <asp:Label ID="Ticket_NameLabel" runat="server" Text='<%# Bind("Ticket_Name") %>' />
            <br />
            Ticket_Description:
            <asp:Label ID="Ticket_DescriptionLabel" runat="server" Text='<%# Bind("Ticket_Description") %>' />
            <br />
            Ticket_Date:
            <asp:Label ID="Ticket_DateLabel" runat="server" Text='<%# Bind("Ticket_Date") %>' />
            <br />
            Ticket_Price:
            <asp:Label ID="Ticket_PriceLabel" runat="server" Text='<%# Bind("Ticket_Price", "{0:C}") %>' />
            <br />
            Ticket_Image:
            <asp:Label ID="Ticket_ImageLabel" runat="server" Text='<%# Bind("Ticket_Image") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:missCalculationsConnectionString %>" SelectCommand="SELECT [Ticket_Name], [Ticket_Description], [Ticket_Date], [Ticket_Price], [Ticket_Image] FROM [Ticket]"></asp:SqlDataSource>
        <SelectParameters>
            <asp:SessionParameter Name="ticketName" SessionField="ticketName" Type="String" /> 
        </SelectParameters>
</asp:Content>
