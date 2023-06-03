<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_report, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Daily Reports Panel
        <small></small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
 	
         <div class="panel panel-default">
        <div class="panel-heading">
         <h5 >Generate Reports</h5> 
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-field-1">
                    Select Date Interval
                </label>
                <br />
               <div class="form-group">
  <label class="col-md-2 control-label">From <br /> To</label>  
    <div class="col-md-2 inputGroupContainer">
    <div class="input-group">
        <div id ="datee">
                        <input type="date" runat="server" name="date" id="date1"  />
            
            <input type="date" runat="server" name="date" id="date2"  />
            </div>
                        </div>
                    </div>
            </div>
            </div>
             
            
            <div class="col-md-2 col-md-offset-4">
                
                <asp:Button ID="generate" runat="server" Text="Generate" CssClass="btn btn-success" OnClick="generate_Click"  />
            </div>
        </div>
    </div>


        
         <div class="col-lg-12 ">  
                                <div class="table-responsive" style="height: 400px; overflow: scroll;overflow-x: auto;
    overflow-y: auto;">  >  
   <asp:GridView ID="GridView1" runat="server" Width="1000px" 
  
    AutoGenerateColumns="False"
    GridLines="None"
    
    CssClass="mGrid"
    PagerStyle-CssClass="pgr"

   
       
    AlternatingRowStyle-CssClass="alt">
    <Columns>

        <asp:BoundField DataField="oid" HeaderText="Id" />
        <asp:BoundField DataField="name" HeaderText="Customer Name" SortExpression="FirstName" />

        <asp:BoundField DataField="address" HeaderText="Address" />

        <asp:BoundField DataField="city_name" HeaderText="City" />
        <asp:BoundField DataField="ordertime" HeaderText="Order Launched"  />
        <asp:BoundField DataField="description" HeaderText="Description" />
            
        <asp:BoundField DataField="phone" HeaderText="Phone" />
        <asp:BoundField DataField="total" HeaderText="Amount" />
        </Columns>
</asp:GridView>   
                                </div>  
                            </div>  
                       
                  
        <label>Total Amount: </label><asp:TextBox ID="total" runat="server" ReadOnly="true" ></asp:TextBox>

        <h5 id="reportlbl" runat="server" style="text-align:center">There are no Reports to display.. </h5>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>

