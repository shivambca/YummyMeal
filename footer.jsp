<div class="foot">
    <%
        String p = (String)session.getAttribute("current_user");
        if(p!=null)   {   %>
        <input type="button" class="logout" value="Log Out" onclick="location.href='logout.jsp';">
    <%   }   %>
    <ul><li onclick="location.href='termscondition.jsp';">Terms &amp; Conditions.</li>
        <li onclick="location.href='feedback.jsp';">Feedback</li>
        <li onclick="location.href='sitemap.jsp';">Site Map</li>
    </ul>
    <p>&copy; 2016. All rights reserved.</p>
    <font>Follow us on : 
        <i class="fa fa-facebook-square" onmouseover="this.style.color = '#3b5998';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.facebook.com/Yummy-Tiffins-107605889277954/';"></i>
        <i class="fa fa-youtube-square" onmouseover="this.style.color = '#c4302b';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.youtube.com/channel/UCWSyDMKfxeoLwQJNxtny-4Q';"></i>
        <i class="fa fa-github-square" onmouseover="this.style.color = '#000'/* '#3cf' */;" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://github.com/shivambca';"></i>
        <i class="fa fa-google-plus-square" onmouseover="this.style.color = '#dd4b39';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://plus.google.com/u/0/+ShivamVerma1996/about';"></i>
    </font>
</div>