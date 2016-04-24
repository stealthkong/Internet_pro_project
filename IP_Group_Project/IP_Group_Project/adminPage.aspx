<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="IP_Group_Project.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:missCalculationsConnectionString %>" SelectCommand="SELECT * FROM [Users]" DeleteCommand="DELETE FROM [Users] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [Users] ([User_Uname], [User_Password], [User_FName], [User_LName], [User_Street], [User_City], [User_Zip], [User_DOB], [User_Phone], [User_Email]) VALUES (@User_Uname, @User_Password, @User_FName, @User_LName, @User_Street, @User_City, @User_Zip, @User_DOB, @User_Phone, @User_Email)" UpdateCommand="UPDATE [Users] SET [User_Uname] = @User_Uname, [User_Password] = @User_Password, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_Street] = @User_Street, [User_City] = @User_City, [User_Zip] = @User_Zip, [User_DOB] = @User_DOB, [User_Phone] = @User_Phone, [User_Email] = @User_Email WHERE [User_ID] = @User_ID">
            <DeleteParameters>
                <asp:Parameter Name="User_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="User_Uname" Type="String" />
                <asp:Parameter Name="User_Password" Type="String" />
                <asp:Parameter Name="User_FName" Type="String" />
                <asp:Parameter Name="User_LName" Type="String" />
                <asp:Parameter Name="User_Street" Type="String" />
                <asp:Parameter Name="User_City" Type="String" />
                <asp:Parameter Name="User_Zip" Type="Int32" />
                <asp:Parameter DbType="Date" Name="User_DOB" />
                <asp:Parameter Name="User_Phone" Type="String" />
                <asp:Parameter Name="User_Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_Uname" Type="String" />
                <asp:Parameter Name="User_Password" Type="String" />
                <asp:Parameter Name="User_FName" Type="String" />
                <asp:Parameter Name="User_LName" Type="String" />
                <asp:Parameter Name="User_Street" Type="String" />
                <asp:Parameter Name="User_City" Type="String" />
                <asp:Parameter Name="User_Zip" Type="Int32" />
                <asp:Parameter DbType="Date" Name="User_DOB" />
                <asp:Parameter Name="User_Phone" Type="String" />
                <asp:Parameter Name="User_Email" Type="String" />
                <asp:Parameter Name="User_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:missCalculationsConnectionString %>" SelectCommand="SELECT [Ticket_ID], [Ticket_Name], [Ticket_Description], [Ticket_Date], [Ticket_Genre], [Ticket_Price] FROM [Ticket]" DeleteCommand="DELETE FROM [Ticket] WHERE [Ticket_ID] = @Ticket_ID" InsertCommand="INSERT INTO [Ticket] ([Ticket_Name], [Ticket_Description], [Ticket_Date], [Ticket_Genre], [Ticket_Price]) VALUES (@Ticket_Name, @Ticket_Description, @Ticket_Date, @Ticket_Genre, @Ticket_Price)" UpdateCommand="UPDATE [Ticket] SET [Ticket_Name] = @Ticket_Name, [Ticket_Description] = @Ticket_Description, [Ticket_Date] = @Ticket_Date, [Ticket_Genre] = @Ticket_Genre, [Ticket_Price] = @Ticket_Price WHERE [Ticket_ID] = @Ticket_ID">
            <DeleteParameters>
                <asp:Parameter Name="Ticket_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ticket_Name" Type="String" />
                <asp:Parameter Name="Ticket_Description" Type="String" />
                <asp:Parameter DbType="Date" Name="Ticket_Date" />
                <asp:Parameter Name="Ticket_Genre" Type="String" />
                <asp:Parameter Name="Ticket_Price" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ticket_Name" Type="String" />
                <asp:Parameter Name="Ticket_Description" Type="String" />
                <asp:Parameter DbType="Date" Name="Ticket_Date" />
                <asp:Parameter Name="Ticket_Genre" Type="String" />
                <asp:Parameter Name="Ticket_Price" Type="Double" />
                <asp:Parameter Name="Ticket_Image" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="margin-left: 560px">
        &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="margin-left: 600px">
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Public Market" Font-Size="8pt" ForeColor="White" Text="HEY ADMIN"></asp:Label>
    </p>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edit from the following options<br />
    <asp:Label ID="Label2" runat="server" Font-Names="Public Market" Font-Size="8pt" ForeColor="White" Text="USERS"></asp:Label>
    <br />
    <div id="theGrid">
    &nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#666666" ForeColor="#333333" ShowFooter="True" Height="167px" Width="1143px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="User_ID" InsertVisible="False" SortExpression="User_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton OnClick="lbInsertUser_Click" ID="lblInsertUser" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Uname" SortExpression="User_Uname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("User_Uname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("User_Uname") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Password" SortExpression="User_Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("User_Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("User_Password") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_FName" SortExpression="User_FName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("User_FName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("User_FName") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_LName" SortExpression="User_LName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("User_LName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("User_LName") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Street" SortExpression="User_Street">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("User_Street") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("User_Street") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_City" SortExpression="User_City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("User_City") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("User_City") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Zip" SortExpression="User_Zip">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("User_Zip") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("User_Zip") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_DOB" SortExpression="User_DOB">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("User_DOB") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("User_DOB") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Phone" SortExpression="User_Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("User_Phone") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("User_Phone") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Email" SortExpression="User_Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("User_Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("User_Email") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Names="Public Market" Font-Size="8pt" ForeColor="White" Text="SHOWS"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Ticket_ID" DataSourceID="SqlDataSource2" BackColor="Silver" BorderColor="Gray" ForeColor="#333333" ShowFooter="True" Height="174px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="Ticket_ID" InsertVisible="False" SortExpression="Ticket_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ticket_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ticket_ID") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:LinkButton OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ticket_Name" SortExpression="Ticket_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ticket_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Ticket_Name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ticket_Description" SortExpression="Ticket_Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Ticket_Description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ticket_Description") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ticket_Date" SortExpression="Ticket_Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ticket_Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Ticket_Date") %>'></asp:Label>
                </ItemTemplate>
               <FooterTemplate>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ticket_Genre" SortExpression="Ticket_Genre">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlEditGenre" runat="server">
                       <asp:ListItem>Rock</asp:ListItem>
                        <asp:ListItem>Hip Hop</asp:ListItem>
                        <asp:ListItem>Country</asp:ListItem>
                        <asp:ListItem>EDM</asp:ListItem>
                        <asp:ListItem>Blues</asp:ListItem>
                        <asp:ListItem>Pop</asp:ListItem>
                        <asp:ListItem>Alternative</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Ticket_Genre") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:DropDownList ID="ddlInsertGenre" runat="server">
                        <asp:ListItem>Rock</asp:ListItem>
                        <asp:ListItem>Hip Hop</asp:ListItem>
                        <asp:ListItem>Country</asp:ListItem>
                        <asp:ListItem>EDM</asp:ListItem>
                        <asp:ListItem>Blues</asp:ListItem>
                        <asp:ListItem>Pop</asp:ListItem>
                        <asp:ListItem>Alternative</asp:ListItem>
                    </asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ticket_Price" SortExpression="Ticket_Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ticket_Price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Ticket_Price") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>
