<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admintable1.aspx.vb" Inherits="home.admintable1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        &nbsp;&nbsp;
    </p>
    <form id="form1" runat="server">
        <div>
    
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="propid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="propid" HeaderText="propid" ReadOnly="True" SortExpression="propid" />
                    <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                    <asp:BoundField DataField="contno" HeaderText="contno" SortExpression="contno" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="images" HeaderText="images" SortExpression="images" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homerentalConnectionString %>" DeleteCommand="DELETE FROM [prop] WHERE [propid] = @propid" InsertCommand="INSERT INTO [prop] ([propid], [size], [contno], [location], [email], [images]) VALUES (@propid, @size, @contno, @location, @email, @images)" SelectCommand="SELECT * FROM [prop]" UpdateCommand="UPDATE [prop] SET [size] = @size, [contno] = @contno, [location] = @location, [email] = @email, [images] = @images WHERE [propid] = @propid">
                <DeleteParameters>
                    <asp:Parameter Name="propid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="propid" Type="Int32" />
                    <asp:Parameter Name="size" Type="String" />
                    <asp:Parameter Name="contno" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="images" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="size" Type="String" />
                    <asp:Parameter Name="contno" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="images" Type="String" />
                    <asp:Parameter Name="propid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
    
    </div>
    </form>
</body>
</html>
