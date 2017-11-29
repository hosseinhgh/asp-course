<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TimeTracker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to TimeTracker Application<br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="employeeObjDS" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Departement" HeaderText="Departement" SortExpression="Departement" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="employeeObjDS" runat="server" SelectMethod="getALLEmployees" TypeName="TimeTracker.Models.TimeTrackerRepository"></asp:ObjectDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="timeCardsObjDS" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="submissionDate" HeaderText="submissionDate" SortExpression="submissionDate" />
                    <asp:BoundField DataField="MondayHours" HeaderText="MondayHours" SortExpression="MondayHours" />
                    <asp:BoundField DataField="TusdayHours" HeaderText="TusdayHours" SortExpression="TusdayHours" />
                    <asp:BoundField DataField="WedensdayHours" HeaderText="WedensdayHours" SortExpression="WedensdayHours" />
                    <asp:BoundField DataField="ThursdayHours" HeaderText="ThursdayHours" SortExpression="ThursdayHours" />
                    <asp:BoundField DataField="FridayHours" HeaderText="FridayHours" SortExpression="FridayHours" />
                    <asp:BoundField DataField="SaturdayHours" HeaderText="SaturdayHours" SortExpression="SaturdayHours" />
                    <asp:BoundField DataField="SundayHours" HeaderText="SundayHours" SortExpression="SundayHours" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="timeCardsObjDS" runat="server" SelectMethod="getEmployeeTimeCard" TypeName="TimeTracker.Models.TimeTrackerRepository">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="empID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
        </div>
    </form>
</body>
</html>
