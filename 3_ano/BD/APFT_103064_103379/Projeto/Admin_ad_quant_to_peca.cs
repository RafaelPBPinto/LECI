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
    public partial class Admin_ad_quant_to_peca : Form
    {
        BDProxy bd;
        public Admin_ad_quant_to_peca(BDProxy bd)
        {
            InitializeComponent();
            this.bd = bd;
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var auxiliar = new Admin_Stock(bd);
            auxiliar.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int pecaid = (int)numericUpDown1.Value;
            int quantidade = (int)numericUpDown2.Value;
            bd.updatestock(pecaid, quantidade);
            MessageBox.Show("Quantidade adicionada ao stock", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            var auxiliar = new Admin_Stock(bd);
            auxiliar.Show();
        }
    }
}
