using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HobiGuncelle : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		try
		{
			int id = Convert.ToInt16(Request.QueryString["ID"]);
			TxtId.Enabled = false;
			TxtId.Text = id.ToString();

			if (Page.IsPostBack == false)
			{
				DataSetTableAdapters.TBLHOBILERTableAdapter dt = new DataSetTableAdapters.TBLHOBILERTableAdapter();
				TxtHobi.Text = dt.HobiGetir(Convert.ToInt16(id))[0].HOBI;
			}
		}
		catch { }

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		DataSetTableAdapters.TBLHOBILERTableAdapter dt = new DataSetTableAdapters.TBLHOBILERTableAdapter();
		dt.HobiGuncelle(TxtHobi.Text, Convert.ToInt16(TxtId.Text));
		Response.Redirect("HobiListesi.Aspx");
	}
}