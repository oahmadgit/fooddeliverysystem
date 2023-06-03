<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_complaindetail, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Complain Description
        <small>Complain no: <asp:Label ID="cidno" runat="server"></asp:Label></small>
      </h1>
      <button type="button" class="btn btn-info btn-lg pull-right" data-toggle="modal" data-target="#myModal">Complain Docket</button>
      
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
  <input runat="server" id="firstname" name="first_name" placeholder="First Name" class="form-control" readonly="true"  type="text" required/>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input runat="server" id="lastname" name="last_name" placeholder="Last Name" class="form-control" readonly="true"  type="text" required/>
    </div>
  </div>
</div>




<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Phone</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input runat="server" id="phone" name="phone" placeholder="(+92)331-2569875" readonly="true" class="form-control" type="text" required/>
    </div>
  </div>
</div>
       <!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Phone2</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input runat="server" id="phone2" name="phone2" placeholder="(+92)331-2569875" readonly="true" class="form-control" type="text" required/>
    </div>
  </div>
</div>

        <div class="form-group">
  <label class="col-md-4 control-label">City</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input runat="server" id="city" name="phone" placeholder="(+92)331-2569875" class="form-control" readonly="true" type="text" required/>
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
        <h4 style="text-align: center">Complain details</h4>
        <asp:Label ID="time" runat="server"></asp:Label><label class="pull-right"> Complain type: <asp:Label ID="type" runat="server"></asp:Label></label>
        <br />
        <label >Order no: <asp:Label ID="order" runat="server"></asp:Label></label>
        <br />
        <div class="form-group">
  <label class="col-md-4 control-label">Details</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<textarea runat="server" class="form-control" readonly="readonly" id="description" name="comment" rows="5" cols="50"></textarea>
  </div>
  </div>
</div>
       
       
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
      <!-- Modal -->
<div id="myModal" class="modal fade printable autoprint" role="dialog" >
  <div class="modal-dialog" style="width:400px" >

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title" style="text-align:center">Complain Docket</h3>
      </div>
      <div class="modal-body">
          <div id="mydiv" style="width:350px;height:450px;overflow-y:auto">
 
              <pre>
 PRINT START - - - - - - - - - - - - - - - 

                <asp:Label ID="shopname" runat="server"></asp:Label>          
              <asp:Label ID="shopbranch" runat="server"></asp:Label>
                  <asp:Label ID="shopno" runat="server"></asp:Label>        
        
 - - - - - - - - - - - - - - - - - - - - - 
 COMPLAIN# : <label id="compno" runat="server"></label>
 AGAINST ORDER:<asp:Label ID="aorder" runat="server"></asp:Label>
 TYPE:<asp:Label ID="ctype" runat="server"></asp:Label>
 - - - - - - - - - - - - - - - - - - - - -
 City     : <asp:Label ID="rcity" runat="server"></asp:Label> 
 CallTime : <asp:Label ID="rtime" runat="server"></asp:Label> 
 - - - - - - - - - - - - - - - - - - - - - 
 Customer  : <asp:Label ID="rname" runat="server"></asp:Label> 
 Phone(s)  : <asp:Label ID="rphone" runat="server"></asp:Label> 
 Address   : <asp:Label ID="raddress" runat="server" Width="200px" style="white-space: normal"></asp:Label>
 - - - - - - - - - - - - - - - - - - - - - 
   
 Description : 
 <asp:Label ID="desc" runat="server" Width="300px"  style="white-space: normal"></asp:Label> 
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



</asp:Content>

