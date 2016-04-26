<%@ Page Title="About" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="IP_Group_Project.WebForm6" %>
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
    <div style="width: 60%; height: 100%; background-color: black; float:left;">


    <section id="mainBody">
        <p>
        Since the inventon of the calculator in 1642, man has been able to make incredible calculations that
        have changed the way we look at life, time, and the universe. And Since that year, man has been looking
        for loud music and stronger booze to end these miserably correct calculations that plague him. 
        
        Miss Calculation's is that end.
        </p>
        <header class="major">
						<h2 style="margin-left: 560px">Miss Calculations&nbsp;&nbsp;&nbsp; </h2>
					</header>
             <div class="features">
						<div class="feature">
							<h3>LOUD MUSIC</h3>
							<p style="width: 311px"><iframe width="280" height="158" src="https://www.youtube.com/embed/VMz--p9QFDg" frameborder="0" allowfullscreen></iframe></p>
						</div>
						<div class="feature">
							<h3>BAR FIGHTS</h3>
							<p><iframe width="280" height="158" src="https://www.youtube.com/embed/Q6qwO53n3Uw" frameborder="0" allowfullscreen></iframe></p>
						</div>
						<div class="feature">
							<h3>HARD BOOZE</h3>
							<p><iframe width="280" height="158" src="https://www.youtube.com/embed/G-WbYZLdxLA" frameborder="0" allowfullscreen></iframe></p>
			</div>
            <div>
                Week nights at Miss Calculation's

                Mondays: Happy Hour specials from 5-7
                Tuesdays: Pub Quiz
                Wendesdays: Mid-week drink specials
                Thursdays: Karaoke
                Friday: Friday night Magic and Booze

            </div>
    </section>

</div>
    <div style="width: 20%; height: 100%; background-color: black; float:right; margin-left: 0px; margin-bottom: 0px;">
        <a class="twitter-timeline" width="300px" href="https://twitter.com/MsCalculations" data-widget-id="724296404399595520">Tweets by @MsCalculations</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          </div>
    </div>

</asp:Content>







