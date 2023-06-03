<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="c_campaign, App_Web_23doua4b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.center {
    margin: auto;
    width: 60%;
    border: 3px solid #5c5c5c;
    padding: 10px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:HiddenField ID="br_id" runat="server" />
      
 

    <h3 style="text-align:center">Create Campaign</h3><br />
    <div class="center">
       <fieldset>
        <legend> Company details  </legend>
    <label>Enter Comapny name: </label><asp:TextBox ID="company" runat="server"></asp:TextBox>
    <label>Enter Branch name:</label><asp:TextBox ID="branch" runat="server"></asp:TextBox><br />
    <label>Enter Branch no: </label><asp:TextBox ID="branchno" runat="server"></asp:TextBox>
    <br />
        <label>Do you want automatic printing feature for this branch ?</label>
    <asp:RadioButtonList ID="Print" runat="server" >
       <asp:ListItem Value="1" Text="Allow" Selected="True"></asp:ListItem>
          <asp:ListItem Value="0" Text="Don't Allow"></asp:ListItem>

    </asp:RadioButtonList>
        <label>Enter Network Printer IP address:</label><asp:TextBox ID="ip" runat="server"></asp:TextBox>
    <label>Enter Network Printer Name: </label><asp:TextBox ID="name" runat="server"></asp:TextBox>

    <button type="button" class="btn btn-default pull-right" data-toggle="modal" data-target="#myModal">Create Campaign</button>
          </div>
</fieldset>
        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Campaign Wallboard Details</h4>
              </div>
              <div class="modal-body">
                <label>Username</label><asp:TextBox ID="user" runat="server"></asp:TextBox>
                <label>Password</label><asp:TextBox ID="pwd" runat="server"></asp:TextBox>  
              </div>
              <div class="modal-footer">
                   <asp:Button ID="submit" runat="server" CssClass="btn btn-success"  Text="CONRIRM" OnClick="submit_Click" />
                <button type="button" class="btn btn-default" data-dismiss="modal">CLOSE</button>
              </div>
            </div>

          </div>
        </div>
</asp:Content>

