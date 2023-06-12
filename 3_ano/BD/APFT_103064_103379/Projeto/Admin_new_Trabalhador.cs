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
    public partial class Admin_new_Trabalhador : Form
    {
        BDProxy bd;
        public Admin_new_Trabalhador(BDProxy bd)
        {
            this.bd = bd;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Admin_Trabalhadores(bd);
            aux.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int numcc = (int)numericUpDown1.Value;
            string nome = textBox1.Text;
            string morada = textBox2.Text;
            bd.insertworker(numcc, nome, morada);
            MessageBox.Show("Trabalhador adicionado com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            var auxiliar = new Admin_Trabalhadores(bd);
            auxiliar.Show();
        }
    }
}
