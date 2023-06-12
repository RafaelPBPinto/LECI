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
    public partial class Admin_Esc_Fornecedores : Form
    {
        BDProxy bd;
        int pedido;
        public Admin_Esc_Fornecedores(BDProxy bd, int pedido)
        {
            this.bd = bd;
            this.pedido = pedido;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Admin_Pedido_de_Material(bd);
            aux.Show();
        }

        private void Admin_Esc_Fornecedores_Load(object sender, EventArgs e)
        {
            List<Fornecedor> listforn = bd.getAllFornecedores();

            foreach (Fornecedor forn in listforn)
            {
                comboBox1.Items.Add(forn.NIF + " -> " + forn.nome);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            double preco = Double.Parse(textBox1.Text);
            string[] aux  = comboBox1.Text.ToString().Split('-');
            int fornecedor = int.Parse(aux[0]);
            bd.updatematerialwithforn(preco, pedido, fornecedor);
            MessageBox.Show("Fornecedor adicionado a pedido", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            var auxiliar = new Admin_Inicio();
            auxiliar.Show();

        }
    }
}