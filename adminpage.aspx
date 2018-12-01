<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="WebApplication2.adminpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <center><asp:Label ID="admin" runat="server" Text="ADMIN HOMEPAGE "></asp:Label></center>
    </div>
 <%--<div class="sidebar-wrapper">--%>
            
                
            </div>

            <ul class="nav">
                <li>
                    <a href="adminpage.aspx">
                        <i class="pe-7s-graph"></i>
                        <p>HOME PAGE</p>
                    </a>
                </li>
                <li class="active">
                    <a href="userprofile.aspx">
                        <i class="pe-7s-user"></i>
                        <p>USER PROFILE</p>
                    </a>
                </li>
                <li>
                    <a href="Request_hall.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>REQUEST FOR HALLS</p>
                    </a>
                </li>
                <li>
                    <a href="Request_vehicles.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>REQUEST FOR VEHICLES</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <i class="pe-7s-news-paper"></i>
                        <p>STATUS/MESSAGE/REPLY TO USER</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <i class="pe-7s-bell"></i>
                        <p>NOTIFICATIONS</p>
                    </a>
                </li>
				
            </ul>
    	</div>
        </div>
    <%--</div>--%>

    </form>
</body>
</html>
