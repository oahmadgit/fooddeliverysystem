<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="c_area, App_Web_23doua4b" %>

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
            <br /><br />
        <asp:ListBox ID="city" Width="200" Height="300" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="city_SelectedIndexChanged"></asp:ListBox>
        <label>Add city: <asp:TextBox ID="addc" runat="server"></asp:TextBox></label>
        <asp:Button ID="btncity" runat="server" Text="ADD" OnClick="btncity_Click" />
        <asp:ListBox ID="areas" Width="200" Height="300" runat="server"  AutoPostBack="True"></asp:ListBox>
           <label>Add area: <asp:TextBox ID="adda" runat="server"></asp:TextBox></label>
        <asp:Button ID="btnarea" runat="server" Text="ADD" OnClick="btnarea_Click" />
        <asp:ListBox ID="brarea" Width="200" Height="300" runat="server"  AutoPostBack="True"></asp:ListBox>
        <!--   <label>Add Branch area: <asp:TextBox ID="addb" runat="server"></asp:TextBox></label>
        <asp:Button ID="btnbarea" runat="server" Text="ADD"  /> -->
        <br /> <br />
       <label>Min delivery charge: </label> <asp:TextBox ID="dmin" runat="server"></asp:TextBox>
          <label>Delivery charge: </label> <asp:TextBox ID="dcharge" runat="server"></asp:TextBox>
          <label>Delivery time: </label> <asp:TextBox ID="dtime" runat="server"></asp:TextBox>
        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
        </fieldset>
    </div>

    
          <div style="color: black;">  
        <h4>  
            Excel City-area list upload Mechanism (.xlsx)
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

