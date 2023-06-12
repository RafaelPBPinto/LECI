using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BD_Interface
{
    public partial class Inicio : Form
    {
        public Inicio()
        {
            InitializeComponent();
        }

        private void Inicio_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var cliente_Empresa = new Cliente_Empresa();
            cliente_Empresa.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Inicio = new Admin_Inicio();
            admin_Inicio.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var trabalhador_cc = new Trabalhador_cc();
            trabalhador_cc.Show();
        }
    }
}
