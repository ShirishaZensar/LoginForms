<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="DropDown.RegisterForm" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


	<style type="text/css">  
.auto-style1 {  
     width: 100%;  
      }  
.auto-style2 {  
     width: 278px;  
       }  
.auto-style3 {  
      width: 278px;  
      height: 23px;  
        }  
.auto-style4 {  
      height: 23px;  
        }  
</style>  
	

<div>           
  <table class="auto-style1">  
    <tr>  
    <td>  
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="username" runat="server" required="true"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="EmailID" runat="server" TextMode="Email"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>  
    <td>  
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label></td>  
    <td>  
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>  
    <td>  
    <asp:RadioButton ID="btnMale" runat="server" GroupName="gender" Text="Male" />  
    <asp:RadioButton ID="btnFemale" runat="server" GroupName="gender" Text="Female" /></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label5" runat="server" Text="Select Course"></asp:Label>s</td>  
    <td>  
    <asp:CheckBox ID="cbCsharp" runat="server" Text="C#" />  
    <asp:CheckBox ID="cbNet" runat="server" Text=".NET Framework" />  
    <asp:CheckBox ID="cbCore" runat="server" Text=".NET CORE" />  
    </td>  
    </tr>  
    <tr>  
    <td>  
    </td>  
    <td>  
    <br />  
    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="Button1_Click"/>  
    </td>  
    </tr>  
    </table>  
    <asp:Label ID="message" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>  
    </div>  
    <table class="auto-style1">  
    <tr>  
    <td class="auto-style2"><asp:Label ID="ShowUserNameLabel" runat="server" ></asp:Label></td>  
    <td>  
    <asp:Label ID="ShowUserName" runat="server" ></asp:Label></td>  
    </tr>  
    <tr>  
    <td class="auto-style2"><asp:Label ID="ShowEmailIDLabel" runat="server" ></asp:Label></td>  
    <td>  
    <asp:Label ID="ShowEmail" runat="server" ></asp:Label></td>  
    </tr>  
    <tr>  
    <td class="auto-style3"><asp:Label ID="ShowGenderLabel" runat="server" ></asp:Label></td>  
    <td class="auto-style4">  
    <asp:Label ID="ShowGender" runat="server" ></asp:Label></td>  
    </tr>  
    <tr>  
    <td class="auto-style2"><asp:Label ID="ShowCourseLabel" runat="server" ></asp:Label></td>  
    <td>  
    <asp:Label ID="ShowCourses" runat="server" ></asp:Label></td>  
    </tr>  
    </table> 
</asp:Content>
