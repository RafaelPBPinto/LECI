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
    public partial class Cliente_EscPedido : Form
    {
        private Empresa emp;
        private BDProxy bd;

        public Cliente_EscPedido(Empresa emp,BDProxy bd)
        {
            this.emp = emp;
            this.bd = bd;
            InitializeComponent();
            
        }

        private void button_man_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Cliente_PedManu(emp, bd);
            aux.Show();

        }

        private void button_cons_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Cliente_PedConst(emp, bd);
            aux.Show();

        }

        private void button_back_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Cliente_Inicio(emp, bd);
            aux.Show();
        }
    }
}
