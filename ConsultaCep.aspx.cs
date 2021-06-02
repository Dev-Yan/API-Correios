using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsultarCep
{
    public partial class ConsultaCep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtCEP.Text == "")
                {
                    ShowMessage("Insira um CEP!");

                }

                using (var ws = new wsCorreios.AtendeClienteService())
                {
                    var resultado = ws.consultaCEP(txtCEP.Text);
                    txtEndereco.Text = resultado.end;
                    txtCidade.Text = resultado.cidade;
                    txtBairro.Text = resultado.bairro;
                    txtUF.Text = resultado.uf;
                    txtCEP.Text = resultado.cep;
                }

            }
            catch (Exception ex)
            {

                ShowMessage(ex.Message);
            }
        }

        public void ShowMessage(string msg)
        {
            Response.Write("<script> alert('" + msg + "') </script>");
        }
    }
}