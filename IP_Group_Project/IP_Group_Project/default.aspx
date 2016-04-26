<%@ Page Title="Home" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="IP_Group_Project.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <link rel="stylesheet" href="css/main.css" />
    <div id="fb-root"></div>

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <div id="fullcontent">
    <div style="width: 20%; height: 100%; background-color: black; float:left;"><div class="fb-comments" data-href="https://www.facebook.com/MissCalculations/" data-width="300" data-numposts="5"></div></div>
    <div style="width: 60%; height: 100%; background-color: green; float:left;">-</div>
    <div style="width: 20%; height: 100%; background-color: black; float:right; margin-left: 0px; margin-bottom: 0px;">
        <a class="twitter-timeline" width="300px" href="https://twitter.com/MsCalculations" data-widget-id="724296404399595520">Tweets by @MsCalculations</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          </div>
    </div>


</asp:Content>

