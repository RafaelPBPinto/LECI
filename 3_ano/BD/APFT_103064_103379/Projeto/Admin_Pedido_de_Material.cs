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
    public partial class Admin_Pedido_de_Material : Form
    {
        BDProxy bd;
        List<PedidoMaterial> pedlist;
        public Admin_Pedido_de_Material(BDProxy bd)
        {
            InitializeComponent();
            this.bd = bd;
        }

        private void Admin_Pedido_de_Material_Load(object sender, EventArgs e)
        {
            pedlist = bd.getAllPedidos();

            foreach(PedidoMaterial ped in pedlist)
            {
                string data = ped.data.ToString("dd-MM-yyyy");
                string hora = ped.hour.ToString("HH:mm:ss");
                dataGridView1.Rows.Add(ped.nome_trabalhador,ped.nome_peca, ped.quantidade, data, hora);
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            var adminInicio = new Admin_Inicio();
            adminInicio.Show();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Admin_Stock(bd);
            aux.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int index = dataGridView1.SelectedRows[0].Index;
            PedidoMaterial ped = pedlist.ElementAt(index);

            bool check = bd.updatematerial(ped.numero);

            if (check)
            {
                MessageBox.Show("Pedido aceite , pecas removidas do stock", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Hide();
                var aux = new Admin_Inicio();
                aux.Show();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int index = dataGridView1.SelectedRows[0].Index;
            PedidoMaterial ped = pedlist.ElementAt(index);
            this.Hide();
            var aux = new Admin_Esc_Fornecedores(bd, ped.numero);
            aux.Show();
        }
    }
}
