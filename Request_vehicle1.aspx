<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request_vehicle1.aspx.cs" Inherits="WebApplication2.Request_vehicle1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
   <center><asp:Label ID="admin1" runat="server" Text="VEHICLE REQUESTS "></asp:Label></center>
    </div>
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   ConnectionString="<%$ ConnectionStrings:SRASConnectionString %>"
   SelectCommand="SELECT * FROM  vehicle1">
 </asp:SqlDataSource>  
   <asp:GridView ID="GridView2"  DataSourceID="SqlDataSource1"  
  AutoGenerateColumns="False" runat="server"   DataKeyNames="req_id" OnRowCommand="GridView2_RowCommand" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
  <Columns>
	<asp:BoundField  DataField="veh_id" HeaderText="veh_id" ReadOnly="True" SortExpression="veh_id" />
	<asp:BoundField  DataField="veh_capacity" HeaderText="veh_capacity" SortExpression="veh_capacity" />
    <asp:BoundField  DataField="veh_category" HeaderText="veh_category" SortExpression="veh_category" />
      <asp:BoundField  DataField="veh_incharge" HeaderText="veh_incharge" SortExpression="veh_incharge" />
      <asp:BoundField  DataField="veh_authority" HeaderText="veh_authority" SortExpression="veh_authority" />
      <asp:BoundField  DataField="veh_dept" HeaderText="veh_dept" SortExpression="veh_dept" />
      <asp:BoundField  DataField="veh_purpose" HeaderText="veh_purpose" SortExpression="veh_purpose" />
      <asp:BoundField  DataField="veh_rdate" HeaderText="veh_rdate" SortExpression="veh_rdate" />
      <asp:BoundField DataField="veh_edate" HeaderText="veh_eventdate" SortExpression="veh_edate" />
      <asp:BoundField DataField="veh_etime" HeaderText="veh_eventtime" SortExpression="veh_etime" />
      <asp:TemplateField>
          <ItemTemplate>
              <asp:Button ID="btnApprove" runat="server" Text="Approve" CommandName="A" CommandArgument='<%# Eval("req_id")%>'/>
          </ItemTemplate>
      </asp:TemplateField>
       <asp:TemplateField>
          <ItemTemplate>
              <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="R" CommandArgument='<%# Eval("req_id")%>'/>
          </ItemTemplate>
      </asp:TemplateField>
  </Columns>
</asp:GridView> 
    </div>
    </form>
</body>
</html>


