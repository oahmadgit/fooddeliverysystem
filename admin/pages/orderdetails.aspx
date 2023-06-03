<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_orderdetails, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        
      <h1>
        Order Description
        <small>Order no: <asp:Label ID="oidno" runat="server"></asp:Label></small>
      </h1> <button type="button" class="btn btn-info btn-lg pull-right" data-toggle="modal" data-target="#myModal">Order Docket</button>
      
    </section>

    <!-- Main content -->
    <section class="content">
                    <h4 style="text-align: center">Customer Profile</h4>

    <div class="well form-horizontal">
   <fieldset>      
       

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="firstname" name="first_name" placeholder="First Name" class="form-control" readonly="true"  type="text" />
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="lastname" name="last_name" placeholder="Last Name" class="form-control" readonly="true"  type="text" />
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">Phone</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input runat="server" id="phone" name="phone" class="form-control" readonly="true"  type="text"/>
    </div>
  </div>
</div>


<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Phone 2</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input runat="server" id="phone2" name="phone"  readonly="true" class="form-control" type="text"/>
    </div>
  </div>
</div>

        <div class="form-group">
  <label class="col-md-4 control-label">City</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input runat="server" id="city" name="city" class="form-control" readonly="true" type="text" />
    </div>
  </div>
</div>

        <div class="form-group">
  <label class="col-md-4 control-label">Address</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <textarea runat="server" class="form-control" readonly="readonly" id="address" name="comment" rows="3" cols="50"></textarea>
    </div>
  </div>
</div>
       </fieldset>
        </div>
       
        <h4 style="text-align: center">Order details</h4>
        <asp:label id="time" runat="server"></asp:label><asp:CheckBox ID="pickup" runat="server" Enabled="false" Text="SelfPickup" CssClass="pull-right"  />
         <br /><label>Description: <asp:Label ID="dsc" runat="server"></asp:Label>   </label>
        
        <asp:GridView ID="GridView1" runat="server" Width="800px"
  
    AutoGenerateColumns="False"
    GridLines="None"
    AllowPaging="true"
    CssClass="mGrid"
    PagerStyle-CssClass="pgr"
    PageSize="6"
   OnPageIndexChanging="order_PageIndexChanging"
    AlternatingRowStyle-CssClass="alt">
    <Columns>

        <asp:BoundField DataField="itemname" HeaderText="Itemname"/>

        <asp:BoundField DataField="qty" HeaderText="Quantity"  />

        <asp:BoundField DataField="price" HeaderText="Price(each)" />

        <asp:BoundField DataField="optA" HeaderText="Option A" />
        <asp:BoundField DataField="optB" HeaderText="Option B" />
        <asp:BoundField DataField="instruction" HeaderText="Instruction" />
            
        <asp:BoundField DataField="total" HeaderText="Amount" />
        </Columns>
                </asp:GridView>
        <br />
        <asp:Label ID="tota" runat="server" Text="Total" ></asp:Label> 
        <asp:TextBox ID="tot" runat="server" ReadOnly="true" Width="60px"></asp:TextBox>
        <label >+ Delivery charges: <asp:Label ID="dcharge" runat="server"></asp:Label> </label>
        
     
        
    </section>
    <!-- /.content -->
  </div>
     <!-- Modal -->
<div id="myModal" class="modal fade printable autoprint" role="dialog" >
  <div class="modal-dialog" style="width:400px" >

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title" style="text-align:center">Order Docket</h3>
      </div>
      <div class="modal-body">
          <div id="mydiv" style="width:350px;height:450px;overflow-y:auto">
 
              <pre>
 PRINT START - - - - - - - - - - - - - - - 

                <asp:Label ID="shopname" runat="server"></asp:Label>          
                  <asp:Label ID="shopbranch" runat="server"></asp:Label>
              <asp:Label ID="shopno" runat="server"></asp:Label>        
        
 - - - - - - - - - - - - - - - - - - - - - 
 ORDER# : <label id="orderno" runat="server"></label>
          <asp:Label ID="desc" runat="server"></asp:Label> 
 - - - - - - - - - - - - - - - - - - - - -
 City     : <asp:Label ID="rcity" runat="server"></asp:Label> 
 CallTime : <asp:Label ID="rtime" runat="server"></asp:Label> 
 - - - - - - - - - - - - - - - - - - - - - 
 Customer  : <asp:Label ID="rname" runat="server"></asp:Label> 
 Phone(s)  : <asp:Label ID="rphone" runat="server"></asp:Label> 
 Address   : <asp:Label ID="raddress" runat="server" Width="200px" style="white-space: normal"></asp:Label> 
 - - - - - - - - - - - - - - - - - - - - - 
<asp:GridView ID="GridView2" runat="server" Width="300px" GridLines="none"  AutoGenerateColumns="false" AlternatingRowStyle-CssClass="alt2">
    <Columns>
         <asp:BoundField DataField="qty" HeaderText="Qty"  />
        <asp:BoundField DataField="itemname" HeaderStyle-Wrap="false" HeaderStyle-Width="100px" HeaderText="Itemname"/><asp:BoundField DataField="price" HeaderText="Each" /> <asp:BoundField DataField="total" HeaderText="Total" />
        </Columns>
</asp:GridView>
 - - - - - - - - - - - - - - - - - - - - -
  Total Order Amount :         <asp:Label ID="totamt" runat="server"></asp:Label>        
 - - - - - - - - - - - - - - - - - - - - - 
  Total Payable      :         <asp:Label ID="payable" runat="server"></asp:Label>       
 - - - - - - - - - - - - - - - - - - - - - 
  Note : <asp:Label ID="note" runat="server" Width="200px" style="white-space: normal"></asp:Label>
 - - - - - - - - - - - - - - - - - - - - -
  Agent: <asp:Label ID="agent" runat="server"></asp:Label>

Printed on <asp:Label ID="rrtime" runat="server"></asp:Label> 


 PRINT END- - - - - - - - - - - - - - - - -





                       
 </pre>


                       
          </div>
      </div>
      <div class="modal-footer">
          <button type="button"class="btn btn-success"onclick="PrintDiv();" >PRINT</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
    </div>

    
</asp:Content>

