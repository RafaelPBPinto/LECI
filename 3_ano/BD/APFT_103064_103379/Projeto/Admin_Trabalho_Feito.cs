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
    public partial class Admin_Trabalho_Feito : Form
    {
        BDProxy bd;
        int trabalho;
        public Admin_Trabalho_Feito(int trabalho)
        {
            this.trabalho = trabalho;
            InitializeComponent();
        }

        private void Admin_Trabalho_Feito_Load(object sender, EventArgs e)
        {
            bd = new BDProxy();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Admin_Trabalhos_Pendentes(bd);
            aux.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int horas = (int)numericUpDown1.Value;
            float custo = float.Parse(textBox1.Text);
            bd.updateworkdone(trabalho, custo, horas);
            MessageBox.Show("Trabalho marcado como concluido", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            var aux = new Admin_Inicio();
            aux.Show();
        }
    }
}
