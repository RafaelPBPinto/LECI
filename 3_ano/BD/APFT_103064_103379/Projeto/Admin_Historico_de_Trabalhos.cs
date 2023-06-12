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
    public partial class Admin_Historico_de_Trabalhos : Form
    {
        BDProxy bd;
        List<Trabalho> trabalhos;
        public Admin_Historico_de_Trabalhos(BDProxy bd)
        {
            InitializeComponent();
            this.bd = bd;
        }

        private void Admin_Historico_de_Trabalhos_Load(object sender, EventArgs e)
        {
            trabalhos = bd.GetTrabalhos();
            foreach (Trabalho t in trabalhos)
            {
                dataGridView1.Rows.Add(t.maquina, t.tipo, t.empresa,t.localizacao,t.foi_feito, t.data_inicio, t.data_fim, t.nr_horas, t.custo);
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Inicio = new Admin_Inicio();
            admin_Inicio.Show();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
