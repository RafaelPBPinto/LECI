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
    public partial class Trabalhador_Pecas : Form
    {
        BDProxy bd;
        Trabalhador trabalhador;
        int trabalho;
        public Trabalhador_Pecas(BDProxy bd, Trabalhador trabalhador, int trabalho)
        {
            this.bd = bd;
            this.trabalhador = trabalhador;
            this.trabalho = trabalho;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Trabalhador_Pedido_de_Material(bd, trabalhador,trabalho);
            aux.Show();
        }

        private void Trabalhador_Pecas_Load(object sender, EventArgs e)
        {
            List<Peca> listpecas = bd.getAllPecas();

            foreach (Peca p in listpecas)
            {
                dataGridView1.Rows.Add(p.id,p.nome,p.marca,p.funcionalidade);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string text = "%" + textBox1.Text + "%";
            List<Peca> listpecas = bd.getAllPecasWithFilter(text);
            dataGridView1.Rows.Clear();
            foreach (Peca p in listpecas)
            {
                dataGridView1.Rows.Add(p.id, p.nome, p.marca, p.funcionalidade);
            }

        }
    }
}
