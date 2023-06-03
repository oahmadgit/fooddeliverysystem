<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="complain, App_Web_sctqy5au" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="css/grid.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container">
    
    <div class="well form-horizontal">
        <asp:Button ID="orderbtn" runat="server" CssClass="btn btn-default" Text="Create Order" OnClick="orderbtn_Click"  /> <asp:Button ID="complainbtn" runat="server" CssClass="btn btn-info" Text="Create Complain" OnClick="complainbtn_Click" />
            <asp:Button ID="reservebtn" runat="server" CssClass="btn btn-default" Text="Create Reservation" OnClick="reservebtn_Click" />
        <hr style=" background-color: #808080; height: 1px;" />
        <h4 >Order from:<span runat="server" id="order_org"></span></h4> 
        <label class="pull-right">Agent Name: <asp:Label ID="agentname" runat="server"></asp:Label></label>
       
        <div class="form-group">
  <label class="col-md-4 control-label" >Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="name" name="name" placeholder="Name" class="form-control"  type="text"/>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">Preferred CLI</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
        <input runat="server" id="phone" name="phone" placeholder="optional" class="form-control" type="text"/>
    </div>
  </div>
</div>
    
    <div class="form-group"> 
  <label class="col-md-4 control-label">Type</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <select id="type" runat="server" class="form-control">
	<option value="Wrong Item Delivered">Wrong Item Delivered</option>
	<option value="Short Delivery">Short Delivery</option>
    <option value="Forgot Item in Outlet">Forgot Item in Outlet</option>
	<option value="Rider Issue">Rider Issue</option>
          <option value="Food Quality">Food Quality</option> 
          <option value="Item missing">Item missing</option> 
          <option value="Late Delivery">Late Delivery</option> 
          <option value="Follow Up">Follow Up</option>
          <option value="Cancel-Replace">Cancel-Replace</option> 

          <option value="Other">Other</option> 

</select>
    </div>
    </div>
        </div>

            <div class="form-group"> 
  <label class="col-md-4 control-label">Priority</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <select id="priority" runat="server" class="form-control">
	<option value="Normal">Normal</option>
	<option value="High">High</option>

</select>
    </div>
    </div>
                </div>

        <div class="form-group">
  <label class="col-md-4 control-label">Description</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<textarea runat="server" class="form-control" id="description" name="comment" placeholder="Optional"></textarea>
  </div>
  </div>
</div>
        <hr style=" background-color: #808080; height: 0.25px;" />

          <div class="form-group">
  <label class="col-md-4 control-label"></label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <asp:CheckBox ID="order" runat="server" Text="From Order list" AutoPostBack="true" OnCheckedChanged="order_CheckedChanged" /> <asp:TextBox ID="orderno" runat="server" Enabled="false" CssClass="pull-right" Width="50px" ></asp:TextBox><br />
        <asp:CheckBox ID="nonorder" runat="server" Text="Non order" AutoPostBack="true" OnCheckedChanged="nonorder_CheckedChanged" />
         </div>  
                            </div>  
        

    </div>

 <div class="table-responsive">  
     <asp:GridView ID="GridView1" runat="server" Width="1000px" OnRowCommand="GridView1_RowCommand"
  
    AutoGenerateColumns="False"
    GridLines="None"
    AllowPaging="true"
    CssClass="mGrid"
    PagerStyle-CssClass="pgr"
    PageSize="10"
   OnPageIndexChanging="order_PageIndexChanging"
    AlternatingRowStyle-CssClass="alt">
    <Columns>
         <asp:BoundField DataField="oid" HeaderText="Order ID"/>

        <asp:BoundField DataField="name" HeaderText=" C.Name" />

        <asp:BoundField DataField="status" HeaderText="Status" />
        <asp:BoundField DataField="time" HeaderText="Date Time" />

         <asp:TemplateField ItemStyle-Width="50px" HeaderText="">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest" runat="server"  CssClass="btn btn-default" Text="Select Order" CommandName="Action" CommandArgument='<%#Bind("oid") %>'></asp:linkButton>
                
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
</asp:GridView>  
                               
      <asp:Button ID="send" runat="server" Text="Save & Send" CssClass="btn btn-default pull-right" OnClick="send_Click" />
           

        </div>
    </div>

   <button id="cmpbtn" runat="server" type="button" class="btn btn-info btn-lg pull-right" data-toggle="modal" data-target="#myModal">Complain Details</button>
         </div>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Complain Info</h4>
      </div>
      <div class="modal-body">
        <p> Your Complain no is : <asp:Label ID="complainid" runat="server"></asp:Label>   </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <asp:Button ID="back" runat="server" Text="Back to Home" CssClass="btn btn-default" OnClick="back_Click" />
       
      </div>
    </div>

  </div>
</div>
</asp:Content>

