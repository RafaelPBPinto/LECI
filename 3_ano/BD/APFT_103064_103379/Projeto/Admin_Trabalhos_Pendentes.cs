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
    public partial class Admin_Trabalhos_Pendentes : Form
    {
        BDProxy bd;
        List<TrabalhosPendentes> trabalhos;
        public Admin_Trabalhos_Pendentes(BDProxy bd)
        {
            InitializeComponent();
            this.bd = bd;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Inicio = new Admin_Inicio();
            admin_Inicio.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int index = dataGridView1.SelectedRows[0].Index;
            TrabalhosPendentes tr = trabalhos.ElementAt(index);
            this.Hide();
            var aux = new Admin_Trabalho_Feito(tr.numero);
            aux.Show();
            // Marcar com feito
        }

        private void Admin_Trabalhos_Pendentes_Load(object sender, EventArgs e)
        {
            trabalhos = bd.GetTrabalhosPendentes();
            foreach (TrabalhosPendentes t in trabalhos)
            {
                dataGridView1.Rows.Add(t.nome_maquina,t.nome_empresa, t.localizacao,t.datainicio);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int index = dataGridView1.SelectedRows[0].Index;
            TrabalhosPendentes tr = trabalhos.ElementAt(index); this.Hide();
            var aux = new Admin_add_trabalhador(tr.numeropedido);
            aux.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int index = dataGridView1.SelectedRows[0].Index;
            TrabalhosPendentes tr = trabalhos.ElementAt(index);
            this.Hide();
            var aux = new Admin_add_trabalhador(tr.numeropedido);
            aux.Show();
        }
    }
}
