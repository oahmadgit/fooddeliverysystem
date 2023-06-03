<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_order, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Orders Panel
        <small>All the past orders received are enlisted</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
 	
         <div class="panel panel-default">
        <div class="panel-heading">
         <h5 >Search Orders</h5> 
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-field-1">
                    Select Order Status
                </label>

                <div class="form-group">
                    <select id="status" runat="server" class="form-control" style="width:200px;">
	
	
	<option value="2">Closed Orders</option>
	<option selected="selected" value="1">Dispatched Orders</option>


</select>

                </div>
            </div>

            <div class="col-md-3 col-md-offset-2">
                
                <asp:Button ID="search" runat="server" Text="Search" CssClass="btn btn-success" OnClick="search_Click" />
            </div>
        </div>
    </div>


        
         <div class="col-lg-12 ">  
                                <div class="table-responsive">  
     <asp:GridView ID="GridView1" runat="server" Width="1000px" OnRowCommand="GridView1_RowCommand"
  
    AutoGenerateColumns="False"
    GridLines="None"
    AllowPaging="true"
    CssClass="mGrid"
    PagerStyle-CssClass="pgr"
    PageSize="5"
   OnPageIndexChanging="order_PageIndexChanging"
    AlternatingRowStyle-CssClass="alt">
    <Columns>

        <asp:BoundField DataField="oid" HeaderText="Id" />
        <asp:BoundField DataField="name" HeaderText="Customer Name" SortExpression="FirstName" />

        <asp:BoundField DataField="address" HeaderText="Address" />

        <asp:BoundField DataField="city_name" HeaderText="City" />
        <asp:BoundField DataField="ordertime" HeaderText="Order Launched"  />
        <asp:BoundField DataField="description" HeaderText="Description" />
            
        <asp:BoundField DataField="phone" HeaderText="Phone" />

         <asp:TemplateField ItemStyle-Width="50px" HeaderText="Toggle Status">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest" runat="server" visible='<%# status.Value=="1"%>' CssClass="btn btn-danger" Text="Close" CommandName="Action" CommandArgument='<%#Eval("oid")+","+ Eval("ordertime")%>'></asp:linkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="50px" HeaderText="">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest2" runat="server" CssClass="btn btn-info" Text="View" CommandName="Action2" CommandArgument='<%#Eval("oid")+","+ Eval("ordertime")%>'></asp:linkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
</asp:GridView>  
                                </div>  
                            </div>  
                       
                  


        <h5 id="orderlbl" runat="server" style="text-align:center">There are no previous Orders.. </h5>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>

