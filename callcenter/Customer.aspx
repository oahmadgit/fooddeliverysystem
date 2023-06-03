<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Customer, App_Web_sctqy5au" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>

<asp:content id="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">


    <div class="well form-horizontal">
        <fieldset>
            
<!-- Form Name -->
            <h3 style="text-align: center">Customer Profile</h3>
<h4 >Order from:<span runat="server" id="order_org"></span></h4>
    
           

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="firstname" name="first_name" placeholder="First Name" class="form-control"  type="text" required>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="lastname" name="last_name" placeholder="Last Name" class="form-control"  type="text" required>
    </div>
  </div>
</div>

            <!-- Text input-->
      
<div class="form-group">
  <label class="col-md-4 control-label">Address</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
        <textarea runat="server" id="address" name="address" placeholder="Address" class="form-control" type="text" required></textarea>
    </div>
  </div>
</div>

            
<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Cli #</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input runat="server" id="phone" name="phone" placeholder="(+92)xxx-xxxxxxx" readonly="true" class="form-control" type="text" required>
    </div>
  </div>
</div>


<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">Phone 2</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
        <input runat="server" id="phone2" name="phone2" placeholder="(+92)xxx-xxxxxxx" class="form-control" type="text">
    </div>
  </div>
</div>



<!-- Select Basic -->
   
<div class="form-group"> 
  <label class="col-md-4 control-label">City</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"   
                    DataTextField="city_name" DataValueField="city_id" AppendDataBoundItems="true" CssClass="form-control selectpicker"
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" >  
                    <asp:ListItem Value="" > Select city</asp:ListItem>  
                </asp:DropDownList>
        
  </div>
</div>
</div>

   <div class="form-group"> 
  <label class="col-md-4 control-label">All areas</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
      <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true"   
                    DataTextField="area_name" DataValueField="area_id" AppendDataBoundItems="true"  CssClass="form-control selectpicker"
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">  
                    <asp:ListItem Value=""> Select area</asp:ListItem>  
                </asp:DropDownList>
        
  </div>
</div>
</div>
            
   <div class="form-group"> 
  <label class="col-md-4 control-label">Branch Delivery Areas</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
      <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true"   
                    DataTextField="brancharea_name" DataValueField="brancharea_id" AppendDataBoundItems="true" CssClass="form-control selectpicker"   
                    >  
                    <asp:ListItem Value=""> Select branch area</asp:ListItem>  
                </asp:DropDownList>
        
  </div>
</div>
</div>
               <div class="form-group"> 
  <label class="col-md-4 control-label">Branch</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
      <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True"   
                    DataTextField="branch_name" DataValueField="branch_id" AppendDataBoundItems="true" CssClass="form-control selectpicker"
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">  
                    <asp:ListItem Value=""> Select branch</asp:ListItem>  
                </asp:DropDownList>
        
  </div>
</div>
</div>


            



<!-- radio checks 
 <div class="form-group">
                        <label class="col-md-4 control-label">?</label>
                        <div class="col-md-4">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="hosting" value="yes" /> Yes
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="hosting" value="no" /> No
                                </label>
                            </div>
                        </div>
                    </div> -->

<!-- Text area -->
  
<div class="form-group">
  <label class="col-md-4 control-label">Description</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<textarea runat="server" class="form-control" id="description" name="comment" placeholder="Optional"></textarea>
  </div>
  </div>
</div>
    
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <asp:Button runat="server" ID="submit" Text="Submit" CssClass="btn btn-warning"  OnClick="submit_Click" />
     <asp:Button runat="server" ID="ok" Text="Ok" CssClass="btn btn-warning" OnClick="ok_Click" />
    
  </div>
</div>


            
        <label > Min Delivery: <asp:Label ID="dmin" runat="server"></asp:Label></label><br />
        <label > Delivery Charge: <asp:Label ID="dcharge" runat="server"></asp:Label></label><br />
         <label > Delivery Time: <asp:Label ID="dtime" runat="server"></asp:Label></label>
       
       <br /><br />
        <div class="form-group">
            <label class="col-md-4 control-label"></label>
            <div class="col-md-4">
                 <asp:Button ID="Button2" runat="server"  CssClass="btn btn-default" Text="Profile(s)" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server"  CssClass="btn btn-default" Text="Pending Orders" OnClick="O_Click" /><asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Orders" OnClick="Button1_Click" />
        <asp:Button ID="Button4" CssClass="btn btn-default" runat="server" Text="Complains" OnClick="Button4_Click" /><asp:Button ID="Button5" CssClass="btn btn-default" runat="server" Text="Reservation" OnClick="Button5_Click"  />
            </div>
</div>

            <hr style=" background-color: #808080; height: 1px;" />
            <asp:ScriptManager ID="ScriptManager1" runat="server"/>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
    <Triggers>    
        <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />     
        <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />   
        <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
         <asp:AsyncPostBackTrigger ControlID="Button4" EventName="Click" />
         <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click" />
    </Triggers>    
    <ContentTemplate>        
        <fieldset> 
                <div id="Div1" runat="server"> 
        
        
         <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" AutoGenerateColumns="false" Width="100%" AllowPaging="true" OnRowCommand="GridView2_RowCommand" OnPageIndexChanging="profile_PageIndexChanging"
                      PageSize="8" 
                      CssClass="Grid"                    
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" >        
         <Columns>
         <asp:BoundField DataField="cid" HeaderText="Cid" />
         <asp:BoundField DataField="firstname" HeaderText="Name" />
         <asp:BoundField DataField="phone" HeaderText="Phone1" />
             <asp:BoundField DataField="phone2" HeaderText="Phone2" />
             <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest"  runat="server" Text="Select Profile" CommandName="Action" CommandArgument='<%#Bind("cid") %>'></asp:linkButton>
                </ItemTemplate>
            </asp:TemplateField>
         </Columns>
        </asp:GridView>
                    
        <h6 id="H2" runat="server" style="text-align:center" >There are no Customer Profiles of this Customer.</h6>
        </div>
            
     
            <div id="orderdiv" runat="server"> 
        
        
         <asp:GridView ID="orders" runat="server" AutoGenerateColumns="false" Width="100%" AllowPaging="true" OnPageIndexChanging="orders_PageIndexChanging"
                      PageSize="8" 
                      CssClass="Grid"                    
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" >        
         <Columns>
         <asp:BoundField DataField="oid" HeaderText="Oid" />
         <asp:BoundField DataField="ordertime" HeaderText="Time" />
            
         </Columns>
        </asp:GridView>
                    
        <h6 id="orderlbl" runat="server" style="text-align:center" >There is no Order in Pending for this customer.</h6>
        </div>
        <div id="Allorderdiv"  runat="server">
                
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%" AllowPaging="true" OnPageIndexChanging="Allorders_PageIndexChanging"
                      PageSize="8" 
                      CssClass="Grid"                    
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" >        
         <Columns>
          <asp:BoundField DataField="oid" HeaderText="Oid" />
         <asp:BoundField DataField="ordertime" HeaderText="Time" />
            
         </Columns>
        </asp:GridView>
        <h6 id="H1" runat="server" style="text-align:center" >There are no orders from this customer.</h6>
    </div>

            <div id="complaindiv"  runat="server">
                
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" Width="100%" AllowPaging="true" OnPageIndexChanging="complain_PageIndexChanging"
                      PageSize="8" 
                      CssClass="Grid"                    
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" >        
         <Columns>
          <asp:BoundField DataField="cid" HeaderText="Cid" />
          <asp:BoundField DataField="name" HeaderText="Name" />
           <asp:BoundField DataField="type" HeaderText="Type" />
             <asp:BoundField DataField="status" HeaderText="status" />
         <asp:BoundField DataField="inittime" HeaderText="Initiated Time" />
            
         </Columns>
        </asp:GridView>
        <h6 id="H3" runat="server" style="text-align:center" >There are no complains from this customer.</h6>
    </div>

            <div id="reservediv"  runat="server">
                
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false" Width="100%" AllowPaging="true" OnPageIndexChanging="reserve_PageIndexChanging"
                      PageSize="8" 
                      CssClass="Grid"                    
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" >        
         <Columns>
          <asp:BoundField DataField="rid" HeaderText="Rid" />
          <asp:BoundField DataField="name" HeaderText="Name" />
           <asp:BoundField DataField="type" HeaderText="Type" />
             <asp:BoundField DataField="status" HeaderText="status" />
         <asp:BoundField DataField="reservetime" HeaderText="Initiated Time" />
            
         </Columns>
        </asp:GridView>
        <h6 id="H4" runat="server" style="text-align:center" >There are no Reservations from this customer.</h6>
    </div>





            </fieldset>    
    </ContentTemplate>
</asp:UpdatePanel>
           
        <!--
        <div id="comp" runat="server">
        <div class="form-group">
  <label class="col-md-4 control-label">Complains(if any)</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<textarea runat="server" class="form-control" id="Textarea1" name="comment" placeholder="Optional"></textarea>
  </div>
        <br />
        <asp:Button runat="server" ID="Button6" Text="Send" CssClass="btn btn-warning" OnClick="send_Click" />
  </div>
</div>
            
            </div>

            -->
        <br />
        <br />
        <asp:Button runat="server" ID="back" Text="&laquo; Previous" CssClass="btn btn-warning" OnClick="back_Click" />
        <asp:Button runat="server" ID="front" Text="Next &raquo;" CssClass="btn btn-success pull-right" OnClick="front_Click" />
    </div>

</div>
   
</asp:content>

