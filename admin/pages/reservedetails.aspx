<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_reservedetails, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        
      <h1>
        Reservation Description
        <small>Reservation no: <asp:Label ID="ridno" runat="server"></asp:Label></small>
      </h1> <button type="button" class="btn btn-info btn-lg pull-right" data-toggle="modal" data-target="#myModal">Reservation Docket</button>
      
    </section>

    <!-- Main content -->
    <section class="content">
                <h4 style="text-align: center"> Reservation Details</h4>
        DATED:<asp:Label ID ="calltime" runat="server"></asp:Label>

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
        
     
        
          <div class="form-group">
  <label class="col-md-4 control-label" >Reservation for</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">

    <label> <asp:Label ID ="Text6" runat="server"></asp:Label></label>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Guest(s)</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input type="text" runat="server" id="Text1" name="guest" readonly="readonly"/>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Children(s)</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text2" name="guest"   type="text" readonly="readonly"/>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Chair qty</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text3" name="guest"   type="text" readonly="readonly"/>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Old Citizen(s)</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text4" name="guest"   type="text" readonly="readonly"/>
    </div>
  </div>
</div>
           <div class="form-group">
  <label class="col-md-4 control-label" >No of Wheel Chair qty</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text5" name="guest"   type="text" readonly="readonly"/>
    </div>
  </div>
</div>
          <div class="form-group">
  <label class="col-md-4 control-label">Smoking Area</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="Text8" name="guest"   type="text" readonly="readonly"/>
    </div>
  </div>
</div>


          <div class="form-group"> 
  <label class="col-md-4 control-label">Type</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        
	 <input type="text" runat="server" id="Text7" name="type" readonly="readonly"/>
        

    </div>
    </div>
        </div>

            <div class="form-group">
  <label class="col-md-4 control-label">Special Note/Request</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<textarea runat="server" class="form-control" id="Text9" name="comment" readonly="readonly" ></textarea>
  </div>
  </div>
                </div>
        </div>
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
        <h3 class="modal-title" style="text-align:center">Reservation Docket</h3>
      </div>
      <div class="modal-body">
          <div id="mydiv" style="width:350px;height:450px;overflow-y:auto">
 
              <pre>
 PRINT START - - - - - - - - - - - - - - - 

                <asp:Label ID="shopname" runat="server"></asp:Label>          
                  <asp:Label ID="shopbranch" runat="server"></asp:Label>
              <asp:Label ID="shopno" runat="server"></asp:Label>        
        
 - - - - - - - - - - - - - - - - - - - - - 
 RESERVATION# : <label id="reserveno" runat="server"></label>
 TYPE:<asp:Label ID="rtype" runat="server"></asp:Label>                 
 - - - - - - - - - - - - - - - - - - - - -
 City     : <asp:Label ID="rcity" runat="server"></asp:Label> 
 CallTime : <asp:Label ID="rtime" runat="server"></asp:Label> 
 - - - - - - - - - - - - - - - - - - - - - 
 Customer  : <asp:Label ID="rname" runat="server"></asp:Label> 
 Phone(s)  : <asp:Label ID="rphone" runat="server"></asp:Label> 
 Address   : <asp:Label ID="raddress" runat="server" Width="200px" style="white-space: normal"></asp:Label> 
 - - - - - - - - - - - - - - - - - - - - - 
 RESERVATION FOR:<asp:Label ID="rdated" runat="server"></asp:Label> 
 - - - - - - - - - - - - - - - - - - - - -
 TOTAL GUEST(S):<asp:Label ID="rguest" runat="server"></asp:Label> 
 NO OF CHILD(S):<asp:Label ID="rchild" runat="server"></asp:Label> 
 NO OF CHAIR(S):<asp:Label ID="rchair" runat="server"></asp:Label> 
 NO OF OLD CITIZEN(S):<asp:Label ID="rcitizen" runat="server"></asp:Label> 
 NO OF WHEELCHAIR(S):<asp:Label ID="rwheelchair" runat="server"></asp:Label> 
 SMOKING AREA:<asp:Label ID="rsmoke" runat="server"></asp:Label>                                                          
 - - - - - - - - - - - - - - - - - - - - - 
  Note : <asp:Label ID="note" runat="server" Width="200px" style="white-space: normal"></asp:Label>
 - - - - - - - - - - - - - - - - - - - - -

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

