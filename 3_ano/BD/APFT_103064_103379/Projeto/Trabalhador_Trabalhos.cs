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
    public partial class Trabalhador_Trabalhos : Form
    {
        BDProxy bd;
        Trabalhador trabalhador;
        List<Trabalho_View> list;
        public Trabalhador_Trabalhos(BDProxy bd, Trabalhador trabalhador)
        {
            InitializeComponent();
            this.bd = bd;
            this.trabalhador = trabalhador;
        }

        private void Trabalhador_Pedidos_Load(object sender, EventArgs e)
        {
            list = bd.GetTrabalhosByTrabalhador(trabalhador.num_cc);
            foreach (Trabalho_View t in list)
            {
                dataGridView1.Rows.Add(t.nome_maquina, t.tipo, t.marca, t.nome_empresa,t.localizacao,t.data_inicio);
            }
        }


        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Trabalhador_cc();
            aux.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int index = dataGridView1.SelectedRows[0].Index;
            Trabalho_View trv = list.ElementAt(index);
            this.Hide();
            var aux = new Trabalhador_Pedido_de_Material(bd, trabalhador, trv.numero_trabalho);
            aux.Show();
        }
    }
}
