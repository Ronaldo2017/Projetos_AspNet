﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1505
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int QuantidadeCliques
        {
            get
            {
                return Convert.ToInt32(ViewState["qntCliques"]);
            }
            set
            {
                ViewState["qtdCliques"] = value;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                QuantidadeCliques = 0;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
          //  QuantidadeCliques = Convert.ToInt32(ViewState["qntCliques"]);

            QuantidadeCliques++;
            lblQuantidadeCliques.Text = QuantidadeCliques.ToString();
           // ViewState["qtdCliques"] = QuantidadeCliques;
        }

        protected void btnEnviarCliques_Click(object sender, EventArgs e)
        {
            Session.Add("QtdCliquesSession", QuantidadeCliques);
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}