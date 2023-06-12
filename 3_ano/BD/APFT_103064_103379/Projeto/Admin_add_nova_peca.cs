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
    public partial class Admin_add_nova_peca : Form
    {
        BDProxy bd;
        public Admin_add_nova_peca(BDProxy bd)
        {
            this.bd = bd;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var auxiliar = new Admin_Stock(bd);
            auxiliar.Show();
                
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string nome = textBox1.Text;
            string marca = textBox2.Text;
            string funcionalidade = textBox3.Text;
            bd.insertpeca(nome, marca, funcionalidade);
            MessageBox.Show("Peca adicionada com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            var auxiliar = new Admin_Inicio();
            auxiliar.Show();
        }
    }
}
