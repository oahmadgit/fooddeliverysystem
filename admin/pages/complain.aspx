<%@ page title="" language="C#" masterpagefile="~/pages/Admin.Master" autoeventwireup="true" inherits="pages_complain, App_Web_pxakppcd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Complain Panel
        <small>All customer complaints are listed here</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
 	
         <div class="panel panel-default">
        <div class="panel-heading">
         <h5 >Search Complains</h5> 
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-field-1">
                    Select Complain Status
                </label>

                <div class="form-group">
                    <select id="status" runat="server" class="form-control" style="width:200px;">
	<option value="4">Closed</option>
	<option value="3">Resolved</option>
	<option value="2">Process</option>
	<option selected="selected" value="1">Initiate</option>



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
   OnPageIndexChanging="complain_PageIndexChanging"
    AlternatingRowStyle-CssClass="alt">
    <Columns>

        <asp:BoundField DataField="cid" HeaderText="ID"/>

        <asp:BoundField DataField="name" HeaderText="Customer Name" SortExpression="name" />

        <asp:BoundField DataField="type" HeaderText="Type" />

        <asp:BoundField DataField="description" HeaderText="Description" />
        <asp:BoundField DataField="inittime" HeaderText="Date Time" />
        

         <asp:TemplateField ItemStyle-Width="50px" HeaderText="Toggle Status">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest" runat="server" visible='<%# status.Value=="1"%>' CssClass="btn btn-primary" Text="Initiate" CommandName="Action" CommandArgument='<%#Eval("cid")+","+ Eval("inittime")%>'></asp:linkButton>
                    <asp:linkButton ID="LinkButton1" runat="server" visible='<%# status.Value=="2"%>' CssClass="btn btn-warning" Text="Process" CommandName="Action1" CommandArgument='<%#Eval("cid")+","+ Eval("inittime")%>'></asp:linkButton>
                    <asp:linkButton ID="LinkButton2" runat="server" visible='<%# status.Value=="3"%>' CssClass="btn btn-danger" Text="Resolved" CommandName="Action2" CommandArgument='<%#Eval("cid")+","+ Eval("inittime")%>'></asp:linkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="50px" HeaderText="">
                <ItemTemplate>
                    <asp:linkButton ID="lbltest2" runat="server" CssClass="btn btn-info" Text="View" CommandName="Action3" CommandArgument='<%#Eval("cid")+","+ Eval("inittime")%>'></asp:linkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
</asp:GridView>  
                                </div>  
                            </div>  
                       
                  


        <h5 id="complbl" runat="server" style="text-align:center">There are no previous Complains.. </h5>
    </section>
    <!-- /.content -->
  </div>
  
</asp:Content>

