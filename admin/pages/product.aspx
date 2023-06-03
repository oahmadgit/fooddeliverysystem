<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_product, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Products Panel
        <small>All products are listed here</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">

         <div class="panel panel-default">
        <div class="panel-heading">
         <h5 >Search Items</h5> 
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-field-1">
                    Search
                </label>

                <div class="form-group">
                    <select id="status" runat="server" class="form-control" style="width:200px;">
	<option  value="1" selected="selected">Instock</option>
	
	<option value="2">Out of stock</option>

                        


</select>

                </div>
            </div>

            <div class="col-md-3 col-md-offset-2">
                
                <asp:Button ID="search" runat="server" Text="Search" CssClass="btn btn-success" OnClick="search_Click" />
            </div>
        </div>
    </div>


        
         <div class="col-lg-12 ">  
                                <div class="table-responsive" style="height: 400px; overflow: scroll;overflow-x: auto;
    overflow-y: auto;">  
     <asp:GridView ID="GridView1" runat="server"  Width="950px" OnRowCommand="GridView1_RowCommand"
  
    AutoGenerateColumns="False"
    GridLines="None"
    
    CssClass="mGrid"
    PagerStyle-CssClass="pgr"
    
    AlternatingRowStyle-CssClass="alt">
    <Columns>
         <asp:BoundField DataField="unitid" HeaderText="ID"/>

        <asp:BoundField DataField="itemname" HeaderText=" Product Name" />

        <asp:BoundField DataField="time" HeaderText="Updated on" />

         <asp:TemplateField ItemStyle-Width="50px" HeaderText="Toggle Status">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest" runat="server" visible='<%# status.Value=="1"%>' CssClass="btn btn-success" Text="In Stock" CommandName="Action" CommandArgument='<%#Bind("unitid") %>'></asp:linkButton>
                    <asp:linkButton ID="lbltest2" runat="server" visible='<%# status.Value=="2"%>' CssClass="btn btn-danger" Text="Out Stock" CommandName="Action1" CommandArgument='<%#Bind("unitid") %>'></asp:linkButton>
                
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
</asp:GridView>  
                                </div>  
                            </div>  
        

        <h5 id="prodlbl" runat="server" style="text-align:center">You don't have any Products to display !! </h5>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>

