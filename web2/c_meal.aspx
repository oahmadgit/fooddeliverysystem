<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="c_meal, App_Web_23doua4b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
            <legend>Select Company</legend>
        <asp:DropDownList ID="branch" runat="server" AutoPostBack="True"   
                    DataTextField="shopname" DataValueField="branchid" AppendDataBoundItems="true" 
                    onselectedindexchanged="branch_SelectedIndexChanged">   
                </asp:DropDownList>
           <label>Select Category</label>
     <asp:DropDownList ID="cat" runat="server" AutoPostBack="true"  DataTextField="catname" DataValueField="catid"  AppendDataBoundItems="true"  OnSelectedIndexChanged="cat_SelectedIndexChanged1" >

      </asp:DropDownList>  
        <br /><br />
        <asp:ListBox ID="subcat" Width="200" Height="300" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="subcat_SelectedIndexChanged" ></asp:ListBox>
        <label>Add SubCategory: <asp:TextBox ID="addc" runat="server"></asp:TextBox></label>
        <asp:Button ID="btnsubcat" runat="server" Text="ADD" OnClick="btnsubcat_Click"  />
        <asp:ListBox ID="item" Width="200" Height="300" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="item_SelectedIndexChanged"></asp:ListBox>
           <label>Add Item: <asp:TextBox ID="adda" runat="server"></asp:TextBox></label>
         <label>Description: </label> <asp:TextBox ID="desc" runat="server"></asp:TextBox>
        <asp:Button ID="btnitem" runat="server" Text="ADD" OnClick="btnitem_Click"  />
        <asp:ListBox ID="unit" Width="200" Height="300" runat="server"  AutoPostBack="True"></asp:ListBox>
       <label>Add Unit size: <asp:TextBox ID="addb" runat="server"></asp:TextBox></label>
          <label>Price: </label> <asp:TextBox ID="price" runat="server"></asp:TextBox>
         
        <asp:Button ID="btnunit" runat="server" Text="ADD" OnClick="btnunit_Click"  /> 
        <br /> <br />
        </fieldset>
    <div style="color: black;">  
        <h4>  
            Excel menu upload Mechanism (.xlsx)
        </h4>  
        <table>  
            <tr>  
                <td>  
                    Select File  
                </td>  
                <td>  
                    <asp:FileUpload ID="FileUpload1" runat="server" />  
                </td>  
                <td>  
                </td>  
                <td>  
                    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />  
                </td>  
            </tr>  
        </table>  
        <br /><br /><br />
        <asp:TextBox ID="temp1" runat="server" Enabled="false"></asp:TextBox>
         <asp:TextBox ID="temp2" runat="server" Enabled="false"></asp:TextBox>
         <asp:TextBox ID="temp3" runat="server" Enabled="false"></asp:TextBox>
         <asp:TextBox ID="temp4" runat="server" Enabled="false"></asp:TextBox>
    </div>  
    <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
</asp:Content>

