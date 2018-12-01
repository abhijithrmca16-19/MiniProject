<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request_hall.aspx.cs" Inherits="WebApplication2.Request_hall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
   <center> <asp:Label ID="admin" runat="server" Text="HALL REQUESTS "></asp:Label> </center>
    </div>
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   ConnectionString="<%$ ConnectionStrings:SRASConnectionString %>"
   SelectCommand="SELECT * FROM  request_book11">
 </asp:SqlDataSource>  
	 
<asp:GridView ID="GridView1"  DataSourceID="SqlDataSource1"  
  AutoGenerateColumns="False" runat="server" DataKeyNames="req_id" OnRowCommand="GridView1_RowCommand">
  <Columns>
	<asp:BoundField  DataField="req_id" HeaderText="req_id" ReadOnly="True" SortExpression="req_id" />
	<asp:BoundField  DataField="req_date" HeaderText="req_date" SortExpression="req_date" />
    <asp:BoundField  DataField="req_resource" HeaderText="req_resource" SortExpression="req_resource" />
      <asp:BoundField  DataField="req_dept" HeaderText="req_dept" SortExpression="req_dept" />
      <asp:BoundField  DataField="req_purpose" HeaderText="req_purpose" SortExpression="req_purpose" />
      <asp:BoundField  DataField="req_ac" HeaderText="req_ac" SortExpression="req_ac" />
      <asp:BoundField  DataField="req_capacity" HeaderText="req_capacity" SortExpression="req_capacity" />
      <asp:BoundField  DataField="req_status" HeaderText="req_status" SortExpression="req_status" />
      <asp:BoundField DataField="req_eventdate" HeaderText="req_eventdate" SortExpression="req_eventdate" />
      <asp:BoundField DataField="req_eventtime" HeaderText="req_eventtime" SortExpression="req_eventtime" />
      <asp:TemplateField>
          <ItemTemplate><%--Container.DataItemIndex--%>
              <asp:Button ID="btnApprove" runat="server" Text="Approve" CommandName="A" CommandArgument='<%# Eval("req_id")%>' />
          </ItemTemplate>
      </asp:TemplateField>
       <asp:TemplateField>
          <ItemTemplate><%--Container.DataItemIndex--%>
              <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="R" CommandArgument='<%# Eval("req_id")%>'/>
          </ItemTemplate>
      </asp:TemplateField>
  </Columns>
</asp:GridView>
    </div>
    </form>
</body>
</html>
