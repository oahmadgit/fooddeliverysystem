<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_dashboard, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta http-equiv="refresh" content="10" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>All upcoming orders are listed here</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
      

         <div class="col-lg-12 ">  
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

        <asp:BoundField DataField="oid" HeaderText="Oid"/>

        <asp:BoundField DataField="name" HeaderText="Customer Name" />

        <asp:BoundField DataField="address" HeaderText="Address" />

        <asp:BoundField DataField="city_name" HeaderText="City" />
        <asp:BoundField DataField="ordertime" HeaderText="Order Launched" />
        <asp:BoundField DataField="description" HeaderText="Description" />
            
        <asp:BoundField DataField="phone" HeaderText="Phone" />
         <asp:TemplateField ItemStyle-Width="50px" HeaderText="Toggle Status">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest" runat="server" CssClass="btn btn-danger" Text="Dispatch" CommandName="Action" CommandArgument='<%#Eval("oid")+","+ Eval("ordertime")%>'></asp:linkButton>
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
                       
                  



           
        <label id="orderlbl" runat="server">There are no current orders </label>

  
    </section>
    

    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>

