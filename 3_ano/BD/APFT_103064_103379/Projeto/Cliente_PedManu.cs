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
    public partial class Cliente_PedManu : Form
    {
        private Empresa emp;
        private BDProxy bd;
        List<Maquina> maqlist;
        public Cliente_PedManu(Empresa emp, BDProxy bd)
        {
            InitializeComponent();
            this.emp = emp;
            this.bd = bd;
        }


        private void button4_Click(object sender, EventArgs e)
        {
            String urgencyselected = comboBox1.Text;
            int nif = emp.NIF;
            String descricao = txtCompany.Text;
            int index = comboBox2.SelectedIndex;
            Maquina m = maqlist.ElementAt(index);
            

            
            bool checkpedido = bd.insertPedidoManutencao(nif, descricao, urgencyselected, m.id);
            if (checkpedido)
            {
                MessageBox.Show("Pedido enviado com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Hide();
                var cliente_Inicio = new Cliente_Inicio(emp, bd);
                cliente_Inicio.Show();
            }
                
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var cliente_Inicio = new Cliente_Inicio(emp, bd);
            cliente_Inicio.Show();
        }


        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        

        private void Cliente_Pedido_Load(object sender, EventArgs e)
        {
            maqlist = bd.getMaquinasEmpresa(emp.NIF);

            foreach(Maquina m in maqlist)
            {
                comboBox2.Items.Add(m.id + ": " + m.nome + " -> " + m.marca);
            }

        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void txtCompany_TextChanged(object sender, EventArgs e)
        {
            
        }

       
        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged_1(object sender, EventArgs e)
        {

        }
    }
}
