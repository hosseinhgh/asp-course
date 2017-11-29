<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="DefaultWithMaster.aspx.cs" Inherits="TimeTracker.DefaultWithMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    
    <div>
        <a href="DefaultWithMaster.aspx?Print=true">PRINTABLE VERSION</a>
            Select Depertament<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="departementObjDS" >
            </asp:DropDownList>
            
            <asp:ObjectDataSource ID="departementObjDS" runat="server" SelectMethod="getDepartement" TypeName="TimeTracker.Models.TimeTrackerRepository"></asp:ObjectDataSource>
            
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="employeeDepObjDS" DataKeyNames="ID">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Departement" HeaderText="Departement" SortExpression="Departement" />
                    <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="employeeDepObjDS" runat="server" SelectMethod="getAllEmployeesDepartement" TypeName="TimeTracker.Models.TimeTrackerRepository">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="NULL" Name="departement" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="employeeSingleDepObjDS" Height="50px" Width="125px">
                <Fields>
                    <asp:TemplateField HeaderText="ID" SortExpression="ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Departement" HeaderText="Departement" SortExpression="Departement" />
                    <asp:TemplateField HeaderText="HireDate" SortExpression="HireDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("HireDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="date not valid" ForeColor="Red" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("HireDate") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("HireDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:ObjectDataSource ID="employeeSingleDepObjDS" runat="server" InsertMethod="insertEmployee" SelectMethod="getEmployee" TypeName="TimeTracker.Models.TimeTrackerRepository">
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="departement" Type="String" />
                    <asp:Parameter Name="hiredate" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="empID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
        </div>
</asp:Content>
