<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_pnzdaotw" %>

<!DOCTYPE html>  
  
<html lang="en">

<head id="Head1" runat="server">  
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello User</title>  
   <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
</head>  
<body>  
     <div class="wrapper">
    <form runat="server" class="form-signin">        
        <h2 class="form-signin-heading">Please Login</h2>
        <asp:Login ID="Login1" OnAuthenticate="ValidateUser" EnableViewState="false" RenderOuterTable="false" runat="server" >
       <LayoutTemplate>
            <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="ID" />
            <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" />
           <asp:Label ID="rem" runat="server" CssClass="checkbox" > 
           <asp:Checkbox ID="RememberMe" runat="server" />
            Remember me</asp:Label>
           <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup" CssClass="btn btn-lg btn-primary btn-block"/>
           <%--  <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In"  OnClick="LoginButton_Click" CssClass="btn btn-lg btn-primary btn-block"/>--%>
           
           <asp:Label runat="server" ID="FailureText"  CssClass="alert-warning"></asp:Label>
       </LayoutTemplate>
       </asp:Login>
            
    </form>
         </div>


   
</body>  
</html> 
