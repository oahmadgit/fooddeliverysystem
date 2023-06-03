<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="c_deal, App_Web_23doua4b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <fieldset>
            <legend>Select Company</legend>
        <asp:DropDownList ID="branch" runat="server" AutoPostBack="True"   
                    DataTextField="shopname" DataValueField="branchid" AppendDataBoundItems="true" 
                    onselectedindexchanged="branch_SelectedIndexChanged">   
                </asp:DropDownList>
            <br />
            <label>Select Category</label>
     <asp:DropDownList ID="cat" runat="server" AutoPostBack="true"  DataTextField="catname" DataValueField="catid"  AppendDataBoundItems="true"  OnSelectedIndexChanged="cat_SelectedIndexChanged1" >

      </asp:DropDownList>  
        <label>Name: </label><asp:TextBox ID="name" runat="server"></asp:TextBox>
          <label>Price: </label> <asp:TextBox ID="price" runat="server"></asp:TextBox>
          <label>Description: </label> <asp:TextBox ID="desc" runat="server"></asp:TextBox>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"  />
            <br />
            <div id="opt" runat="server">
            <label>Option A</label><asp:TextBox ID="opta" runat="server"></asp:TextBox>
             <label>Option B</label><asp:TextBox  ID="optb" runat="server"></asp:TextBox>
        <asp:Button ID="add" runat="server" Text="ADD" OnClick="add_Click" />
   </div>
        <asp:ListBox ID="deal" runat="server" Width="200" Height="300" AutoPostBack="true" OnSelectedIndexChanged="deal_SelectedIndexChanged" ></asp:ListBox>
 
                 </fieldset>
         <asp:GridView ID="grid" runat="server"></asp:GridView>


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

    </div>  
    <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
</asp:Content>

