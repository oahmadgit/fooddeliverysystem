<%@ page language="C#" autoeventwireup="true" inherits="home, App_Web_sctqy5au" masterpagefile="~/MasterPage.master" %>

<asp:content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
  <div class="jumbotron text-center">
   
  <h1>Waiting for customers</h1>
  <p>Enter number & submit as soon as call arrives</p> 
          
</div>
  
    <div class="form-group" >
      <label for="customer">Customer no:</label>
      <input type="text" runat="server" class="form-control" id="customer" placeholder="Enter no" />
      <label for="destination">Live Campaign:</label>
      <asp:DropDownList runat="server" ID="location" CssClass="form-control selectpicker">

      </asp:DropDownList>      
        
    </div>
   
    <asp:Button runat="server" ID="submit" CssClass="btn btn-default" Text="Submit" OnClick="submit_Click"/>
 
</div>
     <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="5000">
            </asp:Timer>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                
            </ContentTemplate>
        </asp:UpdatePanel>
 
    

</asp:content>

