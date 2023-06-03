<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="reservation, App_Web_sctqy5au" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link href="css/date.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="css/bootstrap-timepicker.min.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
    
    <div class="well form-horizontal">
        <asp:Button ID="orderbtn" runat="server" CssClass="btn btn-default" Text="Create Order" OnClick="orderbtn_Click" /> <asp:Button ID="complainbtn" runat="server" CssClass="btn btn-default" Text="Create Complain" OnClick="complainbtn_Click" />
        <asp:Button ID="reservebtn" runat="server" CssClass="btn btn-info" Text="Create Reservation" OnClick="reservebtn_Click" />
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
         <hr style=" background-color: #808080; height: 1px;" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
 </asp:ScriptManager>
        <div class="form-group">
  <label class="col-md-4 control-label">Reservation for</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <div id ="datee">
                            <input type="date" runat="server" name="date" id="dateofreserve"  />
            </div>
                        </div>
                    </div>
            </div>
        
      
            <div class="form-group">
  <label class="col-md-4 control-label"></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
       
       <div class="input-group bootstrap-timepicker timepicker">
            <asp:textbox id="timepicker1" type="text" ClientIDMode="Static" runat="server" CssClass="form-control input-small" ></asp:textbox>
            <span class="input-group-addon"><i class="glyphicon glyphicon-time"  ></i></span>
        </div>
        
    </div>
  </div>
</div>
        
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Guest(s)</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input type="text" runat="server" id="Text1" name="guest" />
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Children(s)</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text2" name="guest"   type="text"/>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Chair qty</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text3" name="guest"   type="text"/>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Old Citizen(s)</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text4" name="guest"   type="text"/>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Wheel Chair qty</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text5" name="guest"   type="text"/>
    </div>
  </div>
</div>
          <div class="form-group">
  <label class="col-md-4 control-label"></label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <asp:CheckBox ID="smoke" runat="server" Text="Smoking Area" /> </div>
                            </div>  
        

    </div>


          <div class="form-group"> 
  <label class="col-md-4 control-label">Type</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <select id="type" runat="server" class="form-control">
	<option value="Birthday">Birthday</option>
	<option value="Lunch">Lunch</option>
    <option value="Dinner">Dinner</option>
     <option value="Other">Other</option>
	
        
</select>
    </div>
    </div>
        </div>

            <div class="form-group">
  <label class="col-md-4 control-label">Special Note/Request</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<textarea runat="server" class="form-control" id="description" name="comment" placeholder="Optional"></textarea>
  </div>
  </div>
                <asp:Button ID="send" runat="server" Text="Save & Send" CssClass="btn btn-default pull-right" OnClick="send_Click" />
    <button id="reserveinfo" runat="server" type="button" class="btn btn-info pull-right" data-toggle="modal" data-target="#myModal">Reservation Details</button>

</div>
        
        </div>
         </div>
         
        
    <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Reservation Info</h4>
      </div>
      <div class="modal-body">
        <p> Your Reservation no is : <asp:Label ID="reserveno" runat="server"></asp:Label>   </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <asp:Button ID="back" runat="server" Text="Back to Home" CssClass="btn btn-default" OnClick="back_Click" />
       
      </div>
    </div>

  </div>
</div>

         <script type="text/javascript">
             $('#timepicker1').timepicker();

             $(document).ready(function () {
                 $("#dateofreserve").datepicker({
                     autoclose: true,
                     format: 'yyyy-mm-dd',
                     todayHighlight: true,
                     clearBtn: true,
                     orientation: 'bottom'
                 });
             });
        </script> 
</asp:Content>

