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
    public partial class Admin_Trabalhadores : Form
    {
        BDProxy bd;
        List<Trabalhador> trabalhadores;

        public Admin_Trabalhadores(BDProxy bd)
        {
            InitializeComponent();
            this.bd = bd;
        }

        private void Label1_Click(object sender, EventArgs e)
        {

        }

        private void bttnCancel_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Inicio = new Admin_Inicio();
            admin_Inicio.Show();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Admin_Trabalhadores_Load(object sender, EventArgs e)
        {
            trabalhadores = bd.GetTrabalhadores();
            foreach(Trabalhador trabalhador in trabalhadores)
            {
                dataGridView1.Rows.Add(trabalhador.num_cc.ToString(), trabalhador.nome, trabalhador.morada);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int numcc = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells[0].Value.ToString());
            bd.removeworker(numcc);
            MessageBox.Show("Trabalhador removido com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            var auxiliar = new Admin_Trabalhadores(bd);
            auxiliar.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            var auxiliar = new Admin_new_Trabalhador(bd);
            auxiliar.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int trabalhador = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells[0].Value.ToString());
            this.Hide();
            var auxiliar = new Admin_Trabalho_por_Trabalhador(trabalhador,bd);
            auxiliar.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string pesquisa = textBox1.Text;
            pesquisa = "%" + pesquisa + "%";
            List<Trabalhador> listworkers = bd.GetTrabalhadoresWithFilter(pesquisa);
            dataGridView1.Rows.Clear();
            foreach (Trabalhador trabalhador in listworkers)
            {
                dataGridView1.Rows.Add(trabalhador.num_cc.ToString(), trabalhador.nome, trabalhador.morada);
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            string order = "NUMCC";
            List<Trabalhador> listworkers = bd.GetTrabalhadoresOrderBy(order);
            dataGridView1.Rows.Clear();
            foreach (Trabalhador trabalhador in listworkers)
            {
                dataGridView1.Rows.Add(trabalhador.num_cc.ToString(), trabalhador.nome, trabalhador.morada);
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            string order = "NOME";
            List<Trabalhador> listworkers = bd.GetTrabalhadoresOrderBy(order);
            dataGridView1.Rows.Clear();
            foreach (Trabalhador trabalhador in listworkers)
            {
                dataGridView1.Rows.Add(trabalhador.num_cc.ToString(), trabalhador.nome, trabalhador.morada);
            }
        }
    }
}
