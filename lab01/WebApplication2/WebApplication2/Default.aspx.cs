using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        int ClickCounts = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            EventListBox.Items.Add( "Page Load" + Environment.NewLine);

            if (!Page.IsPostBack)
            {
                ViewState["counts"] = 0;
                TextBox1.Text = "0";
                EventListBox.Items.Add("Event before Post Back" + Environment.NewLine);
            }
            else
            {
                EventListBox.Items.Add("Event after Post Back" + Environment.NewLine);
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            EventListBox.Items.Add("Page Init" + Environment.NewLine);
        }

        protected void Page_Prerender(object sender, EventArgs e)
        {
            EventListBox.Items.Add("Page Prerender" + Environment.NewLine);
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            EventListBox.Items.Add("Page Unload" + Environment.NewLine);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ViewState["counts"] != null)
            {
                ClickCounts += (int)ViewState["counts"] + 1;
            }

            TextBox1.Text = ClickCounts.ToString();
            ViewState["counts"] = ClickCounts;
            EventListBox.Items.Add("Send form data: " + TextBox2.Text);
        }

    }
}