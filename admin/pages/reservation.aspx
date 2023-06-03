<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_reservation, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Reservation Panel
        <small>All client reservations are listed here</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">

         <div class="panel panel-default">
        <div class="panel-heading">
         <h5 >Search</h5> 
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-field-1">
                    Status
                </label>

                <div class="form-group">
                    <select id="status" runat="server" class="form-control" style="width:200px;">
	<option value="1"  selected="selected">Not Approved</option>
	
	<option value="2">Approved</option>

                        


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
    PageSize="10"
   OnPageIndexChanging="reserve_PageIndexChanging"
    AlternatingRowStyle-CssClass="alt">
    <Columns>
         <asp:BoundField DataField="rid" HeaderText="ID"/>

        <asp:BoundField DataField="name" HeaderText="C. Name" />

        <asp:BoundField DataField="guest" HeaderText="Total guest" />
        <asp:BoundField DataField="reservetime" HeaderText="Reservation on" />
        <asp:BoundField DataField="date" HeaderText="Reservation for" />

         <asp:TemplateField ItemStyle-Width="50px" HeaderText="Toggle Status">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest" runat="server" visible='<%# status.Value=="1"%>' CssClass="btn btn-success" Text="APPROVE" CommandName="Action" CommandArgument='<%#Eval("rid")+","+ Eval("reservetime")%>'></asp:linkButton>
                    <asp:linkButton ID="lbltest2" runat="server" visible='<%# status.Value=="2"%>' CssClass="btn btn-danger" Text="COMPLETE" CommandName="Action1" CommandArgument='<%#Eval("rid")+","+ Eval("reservetime")%>'></asp:linkButton>
                
                </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField ItemStyle-Width="50px" HeaderText="">
                <ItemTemplate>
                    <asp:linkButton ID="lbltst" runat="server" ssClass="btn btn-info" Text="Details" CommandName="Action2" CommandArgument='<%#Eval("rid")+","+ Eval("reservetime")%>'></asp:linkButton>
                  
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
</asp:GridView>  
                                </div>  
                            </div>  
        

        <h5 id="reservelbl" runat="server" style="text-align:center">You don't have any Reservations to display !! </h5>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>

