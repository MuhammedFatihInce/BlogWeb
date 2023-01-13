<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KonferansListesi.aspx.cs" Inherits="KonferansListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
	<form id="Form1" runat="server">
		<table class="table table-bordered">

			<tr>
				<th>ID</th>
				<th>KONFERANASLAR</th>
				<th>İŞLEMLER</th>
			</tr>
			<tbody>
				<asp:Repeater ID="Repeater1" runat="server">
					<ItemTemplate>
						<tr>
							<th><%# Eval("ID")%></th>
							<td><%# Eval("KONFERANS")%></td>
							<td>
								<asp:HyperLink NavigateUrl='<%#"KonferansSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
								<asp:HyperLink NavigateUrl='<%# "KonferansGuncelle.Aspx?ID=" + Eval("ID")%>' ID="HyperLink2" runat="server" CssClass="btn bg-warning">Güncelle</asp:HyperLink>
							</td>
						</tr>
					</ItemTemplate>
				</asp:Repeater>
			</tbody>

		</table>
		<asp:HyperLink NavigateUrl="~/KonferansEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">KONFERANS EKLE</asp:HyperLink>
	</form>
</asp:Content>

