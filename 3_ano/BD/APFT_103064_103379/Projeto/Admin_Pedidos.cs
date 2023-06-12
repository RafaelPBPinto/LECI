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
    public partial class Admin_Pedidos : Form
    {
        BDProxy bd;
        List<PedidoTrabalho> pedidos = new List<PedidoTrabalho>();

        public Admin_Pedidos()
        {
            InitializeComponent();
            bd = new BDProxy();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var admin_Inicio = new Admin_Inicio();
            admin_Inicio.Show();
        }

        private void Admin_Pedidos_Load(object sender, EventArgs e)
        {
            pedidos = bd.GetPedidoTrabalhos();
            foreach (PedidoTrabalho p in pedidos)
            {
                dataGridView1.Rows.Add(p.nome_empresa, p.nome_maquina, p.foiAceite, p.data, p.tipo, p.urgencia, p.descricao);
            }
           
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //RECUSAR
            string selectState = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();
            int index = dataGridView1.SelectedRows[0].Index;
            PedidoTrabalho ptr = pedidos.ElementAt(index);
            if (selectState.Equals("Aceite") | selectState.Equals("Rejeitado"))
            {
                MessageBox.Show("Proposta ja confirmada", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                bd.insertPedidoAceite(ptr.id, "Rejeitado");
                MessageBox.Show("Proposta rejeitada com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Hide();
                var aux = new Admin_Inicio();
                aux.Show();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string selectState = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();
            int index = dataGridView1.SelectedRows[0].Index;
            PedidoTrabalho ptr = pedidos.ElementAt(index);
            if (selectState.Equals("Aceite") | selectState.Equals("Rejeitado"))
            {
                MessageBox.Show("Proposta ja confirmada", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                bd.insertPedidoAceite(ptr.id, "Aceite");
                MessageBox.Show("Proposta aceite com sucesso", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                var confirmation = MessageBox.Show("Quer associar ja um trabalhador a esse trabalho", "Questao",MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (confirmation == DialogResult.Yes) {
                    this.Hide();
                    var aux = new Admin_add_trabalhador(ptr.id);
                    aux.Show();
                } else
                {
                    this.Hide();
                    var aux = new Admin_Inicio();
                    aux.Show();
                }
                
            }
            //ACEITAR

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            string tofilter = comboBox1.Text;
            pedidos.Clear();
            dataGridView1.Rows.Clear();
            pedidos = bd.GetTrabalhosComFiltragem(tofilter);

            foreach (PedidoTrabalho p in pedidos)
            {
                dataGridView1.Rows.Add( p.nome_empresa, p.nome_maquina,p.foiAceite, p.data, p.tipo, p.urgencia, p.descricao);
            }

        }
    }
}
