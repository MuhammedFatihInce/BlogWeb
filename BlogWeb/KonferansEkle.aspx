<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KonferansEkle.aspx.cs" Inherits="KonferansEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
	<form id="Form1" runat="server">
		<div class="form-group">
			<div>
				<asp:Label ID="Label2" runat="server" Text="KONFERANS"></asp:Label>
				<asp:TextBox ID="TxtKonferans" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />
			<asp:Button ID="Button1" runat="server" Text="KAYDET" CssClass="btn btn-primary" />

		</div>
	</form>
</asp:Content>

