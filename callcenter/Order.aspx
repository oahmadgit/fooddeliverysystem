<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Order, App_Web_sctqy5au" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div class="container">
    
    <div class="well form-horizontal">
        <asp:Button ID="orderbtn" runat="server" CssClass="btn btn-info" Text="Create Order" OnClick="orderbtn_Click" /> <asp:Button ID="complainbtn" runat="server" CssClass="btn btn-default" Text="Create Complain" OnClick="complainbtn_Click" />
                    <asp:Button ID="reservebtn" runat="server" CssClass="btn btn-default" Text="Create Reservation" OnClick="reservebtn_Click" />
        <hr style=" background-color: #808080; height: 1px;" />
        <h4 >Order from:<span runat="server" id="order_org"></span></h4> 
        <label class="pull-right">Agent Name: <asp:Label ID="agentname" runat="server"></asp:Label></label>
        <asp:DropDownList ID="cat" runat="server" AutoPostBack="True"   
                    DataTextField="catname" DataValueField="catid" AppendDataBoundItems="true" CssClass="form-control selectpicker"
                    onselectedindexchanged="cat_SelectedIndexChanged">   
                </asp:DropDownList>

        <br />
    <asp:ListBox ID="Subcat" Width="200" Height="300" runat="server"  CssClass="myListBox" AutoPostBack="True" OnSelectedIndexChanged="Subcat_SelectedIndexChanged"></asp:ListBox>
    <asp:ListBox ID="Deals" Width="200" Height="300" runat="server"  CssClass="myListBox" AutoPostBack="True" OnSelectedIndexChanged="Deals_SelectedIndexChanged"></asp:ListBox>
    
        <asp:ListBox ID="Item" Width="200" Height="300" runat="server"  CssClass="myListBox" AutoPostBack="True" OnSelectedIndexChanged="Item_SelectedIndexChanged"></asp:ListBox>
         <asp:ListBox ID="unitsize" Width="200" Height="100" runat="server"  CssClass="myListBox" AutoPostBack="True" OnSelectedIndexChanged="Unit_SelectedIndexChanged"></asp:ListBox>
        <textarea id="Textarea1" runat="server" class="instructtext" style="height:120px;width:300px" readonly="readonly" ></textarea>
        <textarea id="instruct"  runat="server" style="height:100px" placeholder="Instructions.." ></textarea>
        <textarea id="desc" runat="server" style="height:100px" placeholder="Order Description" readonly="readonly"></textarea>
        <asp:ListBox ID="linked" runat="server" Width="150px" Height="110px"></asp:ListBox>
        <asp:Button ID="link" runat="server" Width="120px" CssClass="link" Height="30px" Text="Link Order" OnClick="link_Click" />
        <div class="quantity">
           <label> Quantity: </label>
        <asp:TextBox ID="qty" runat="server" CssClass="shortbox"></asp:TextBox>
          
            
          
            
          
           <label> Unit Price: </label>
            <asp:TextBox ID="TextBox9" CssClass="shortbox" runat="server" ReadOnly="true"></asp:TextBox>
            <label> Total Amount: </label>
            <asp:TextBox ID="grandtot" CssClass="shortbox" runat="server" ReadOnly="true"></asp:TextBox>
            <label >+ Delivery Charge RS: <asp:Label ID="dcharge" runat="server"></asp:Label>/-</label><br />
        <label > Min Delivery: <asp:Label ID="dmin" runat="server"></asp:Label></label><br />
             <label > Delivery Time: <asp:Label ID="dtime" runat="server"></asp:Label> min(s)</label>
       </div>
          
       <asp:Button ID="Add" runat="server" CssClass="bigbutton" Text="ADD" OnClick="Add_Click" />
        <div class="optionbox" >
            <label> Option(s) for deals </label><br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"   
                    DataTextField="optionA" AppendDataBoundItems="false" CssClass=""><asp:ListItem Value=""> - - -  - - - </asp:ListItem> </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"   
                    DataTextField="optionB" AppendDataBoundItems="false" CssClass="" ><asp:ListItem Value=""> - - -  - - - </asp:ListItem></asp:DropDownList> 
                </div>
        
        <label id="unitlbl" runat="server" class="unit">Unit Size</label>
       
        

             
      
       <div class="itemlist"> 
         <asp:gridview ID="Gridview1" runat="server" ShowFooter="true"  AutoGenerateColumns="false" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" OnRowDeleting="RowDeleting">
        <Columns>
        <asp:BoundField DataField="RowNumber" HeaderText="S.no" />
        <asp:TemplateField HeaderText="Item Name">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField HeaderText="UnitSize">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionA">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionB">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="smalltxt" ReadOnly="True"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Qty">
            <ItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="smalltxt" ReadOnly="True"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Instruction">
            <ItemTemplate>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />
            <FooterTemplate>
           
            </FooterTemplate>
        </asp:TemplateField>
             <asp:CommandField ShowDeleteButton="True" />
        </Columns>
</asp:gridview>
  
      
           <asp:CheckBox ID="takeaway" runat="server" CssClass="pull-right" Text="Takeaway"  />
           <br />

      <asp:Button ID="end" runat="server" CssClass="btn btn-danger pull-left" Text="DISCARD ORDER" OnClick="end_Click"  />
           
     <button id="ordbtn" runat="server" type="button" class="btn btn-info pull-right" data-toggle="modal" data-target="#myModal">Order Details</button>
 
           <asp:Button ID="submit" runat="server" CssClass="btn btn-success pull-right" Text="SEND ORDER" OnClick="submit_Click" />

        <asp:Label ID="test" runat="server" ></asp:Label>
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
        <h4 class="modal-title">Order Details</h4>
      </div>
      <div class="modal-body">
        <p> Your Order no is : <asp:Label ID="orderno" runat="server"></asp:Label>   </p>
          <p>Your total amount is: RS <asp:Label ID="grossamt" runat="server"></asp:Label></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <asp:Button ID="bck" runat="server" CssClass="btn btn-default" Text="Back to Home" OnClick="end_Click"  />
      
      </div>
    </div>

  </div>
</div>
  <asp:HiddenField ID="recep" runat="server" />
  
    
</asp:Content>

