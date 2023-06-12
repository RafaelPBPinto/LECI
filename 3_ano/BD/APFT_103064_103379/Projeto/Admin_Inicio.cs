using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BD_Interface
{
    public partial class Admin_Inicio : Form
    {
        BDProxy bd;

        public Admin_Inicio()
        {
            InitializeComponent();
            bd = new BDProxy();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Pedidos = new Admin_Pedidos();
            admin_Pedidos.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Trabalhos_Pendentes = new Admin_Trabalhos_Pendentes(bd);
            admin_Trabalhos_Pendentes.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Pedido = new Admin_Pedido_de_Material(bd);
            admin_Pedido.Show();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Trabalhadores = new Admin_Trabalhadores(bd);
            admin_Trabalhadores.Show();
        }

        private void Admin_Inicio_Load(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            var inicio = new Inicio();
            inicio.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Stock = new Admin_Stock(bd);
            admin_Stock.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Historico = new Admin_Historico_de_Trabalhos(bd);
            admin_Historico.Show();
        }
    }
}
