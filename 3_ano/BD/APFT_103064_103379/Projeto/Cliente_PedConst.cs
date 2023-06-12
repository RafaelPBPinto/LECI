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
    public partial class Cliente_PedConst : Form
    {
        private Empresa emp;
        private BDProxy bd;
        public Cliente_PedConst(Empresa emp, BDProxy bd)
        {
            this.emp = emp;
            this.bd = bd;
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            String tipo = textBox1.Text;
            String marca = textBox2.Text;
            String nome = textBox3.Text;
            String nivel_urgencia = comboBox1.Text;
            String descricao = textBox4.Text;
            
            bd.insertPedidoConstrucao(tipo, marca, nome, emp.NIF, descricao, nivel_urgencia);
            MessageBox.Show("Pedido enviado com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            var aux = new Cliente_Inicio(emp,bd);
            aux.Show();
            

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Cliente_EscPedido(emp, bd);
            aux.Show();
        }

        private void Cliente_PedConst_Load(object sender, EventArgs e)
        {

        }
    }
}
