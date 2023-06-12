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
    public partial class Trabalhador_Pedido_de_Material : Form
    {
        BDProxy bd;
        Trabalhador trabalhador;
        int trabalho;
        public Trabalhador_Pedido_de_Material(BDProxy bd, Trabalhador trabalhador,int trabalho)
        {
            InitializeComponent();
            this.bd = bd;
            this.trabalhador = trabalhador;
            this.trabalho = trabalho;
        }

        private void Trabalhador_Pedido_de_Material_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Trabalhador_Trabalhos(bd,trabalhador);
            aux.Show();

        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Trabalhador_Pecas(bd, trabalhador,trabalho);
            aux.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            // TODO -- INSERT 
            this.Hide();
            var aux = new Trabalhador_Pedido_de_Material(bd, trabalhador,trabalho);
            aux.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            List<Peca> listpecas = bd.getAllPecas();
            bool check = false;
            foreach(Peca p in listpecas)
            {
                if ((int)numericUpDown1.Value == p.id)
                {
                    check = true;
                    break;
                }
            }
            if (check)
            {
                bd.insertPedidoDeMaterial(trabalho, trabalhador.num_cc, (int)numericUpDown1.Value, (int)numericUpDown2.Value);
                MessageBox.Show("Pedido enviado com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Hide();
                var aux = new Trabalhador_Trabalhos(bd, trabalhador);
                aux.Show();
            }
            else
            {
                MessageBox.Show("Peca com ID inexistente", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


        }
    }
}
