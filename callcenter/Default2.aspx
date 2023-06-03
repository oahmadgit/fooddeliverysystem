<%@ page language="C#" autoeventwireup="true" inherits="Default2, App_Web_pnzdaotw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:gridview ID="Gridview1" runat="server" ShowFooter="true" AutoGenerateColumns="false" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" OnRowDeleting="RowDeleting">
        <Columns>
        <asp:BoundField DataField="RowNumber" HeaderText="S.no" />
        <asp:TemplateField HeaderText="Item Name">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Qty">
            <ItemTemplate>
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />
            <FooterTemplate>
             <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" onclick="ButtonAdd_Click"/>
            </FooterTemplate>
        </asp:TemplateField>
             <asp:CommandField ShowDeleteButton="True" />
        </Columns>
</asp:gridview>
 
    </div>
    </form>
</body>
</html>
