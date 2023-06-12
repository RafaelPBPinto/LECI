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
    public partial class Cliente_Inicio : Form
    {
        private Empresa emp;
        private BDProxy bd;

        public Cliente_Inicio(Empresa emp, BDProxy bd)
        {
            InitializeComponent();
            this.emp = emp;
            this.bd = bd;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var cliente_Maquinas = new Cliente_Maquinas(emp, bd);
            cliente_Maquinas.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {   
            this.Hide();
            var cliente_Pedido = new Cliente_EscPedido(emp, bd);
            cliente_Pedido.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var cliente_Historico =  new Cliente_Historico(emp, bd);
            cliente_Historico.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Hide();
            var cliente_Empresa = new Cliente_Empresa();
            cliente_Empresa.Show();
        }
    }
}
