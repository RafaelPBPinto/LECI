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
    public partial class Admin_Trabalho_por_Trabalhador : Form
    {
        int trabalhador;
        BDProxy bd;
        public Admin_Trabalho_por_Trabalhador(int trabalhador, BDProxy bd)
        {
            this.bd = bd;
            this.trabalhador = trabalhador;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Admin_Trabalhadores(bd);
            aux.Show();
        }

        private void Admin_Trabalho_por_Trabalhador_Load(object sender, EventArgs e)
        {
            List<Trabalho_View> listworkers = bd.GetTrabalhosByTrabalhador(trabalhador);
            foreach(Trabalho_View t in listworkers)
            {
                dataGridView1.Rows.Add(t.nome_maquina,t.tipo,t.marca,t.nome_empresa,t.localizacao,t.data_inicio);
            }
        }
    }
}
