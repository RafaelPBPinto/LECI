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
    public partial class Trabalhador_cc : Form
    {
        private BDProxy bd;
        private List<Trabalhador> trabalhadores = new List<Trabalhador>();

        public Trabalhador_cc()
        {
            InitializeComponent();
            bd = new BDProxy();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var inicio = new Inicio();
            inicio.Show();
        }

        private void Trabalhador_NIF_Load(object sender, EventArgs e)
        {
            trabalhadores = bd.GetTrabalhadores();
        }

       

        private void Entrar_Click(object sender, EventArgs e)
        {
            int cc = Int32.Parse(textBox1.Text);
            Trabalhador tr = bd.checkTrabalhador(cc);
            if (tr.num_cc != 0)
            {
                this.Hide();
                var trabalhador_Inicio = new Trabalhador_Trabalhos(bd, tr);
                trabalhador_Inicio.Show();
            }
            else
            {
                MessageBox.Show("Trabalhador não existe!", "Erro - Trabalhador não existe", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
