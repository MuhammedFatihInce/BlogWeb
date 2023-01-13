using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KonferansGuncelle : System.Web.UI.Page
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
				DataSetTableAdapters.TBLKONFERANSLARTableAdapter dt = new DataSetTableAdapters.TBLKONFERANSLARTableAdapter();
				TxtKonferans.Text = dt.KonferansGetir(Convert.ToInt16(id))[0].KONFERANS;
			}
		}
		catch { }

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		DataSetTableAdapters.TBLKONFERANSLARTableAdapter dt = new DataSetTableAdapters.TBLKONFERANSLARTableAdapter();
		dt.KonferansGuncelle(TxtKonferans.Text, Convert.ToInt16(TxtId.Text));
		Response.Redirect("KonferansListesi.Aspx");
	}
}