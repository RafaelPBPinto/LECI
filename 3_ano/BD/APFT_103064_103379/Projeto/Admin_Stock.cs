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
    public partial class Admin_Stock : Form
    {
        BDProxy bd;
        List<Peca> pecas = new List<Peca>();

        public Admin_Stock(BDProxy bd)
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

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Admin_Stock_Load(object sender, EventArgs e)
        {
            pecas = bd.getStock();
            foreach(Peca p in pecas)
            {
                dataGridView1.Rows.Add(p.id,p.nome, p.marca, p.funcionalidade, p.stock.ToString());
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            var auxiliar = new Admin_ad_quant_to_peca(bd);
            auxiliar.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            var auxiliar = new Admin_add_nova_peca(bd);
            auxiliar.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string text = textBox1.Text;
            text = "%" + text + "%";
            List<Peca> listpecas = bd.getStockWithFilter(text);
            dataGridView1.Rows.Clear();
            
            foreach(Peca p in listpecas)
            {
                dataGridView1.Rows.Add(p.id, p.nome, p.marca, p.funcionalidade, p.stock.ToString());

            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            string text = "ID";
            List<Peca> listpecas = bd.getStockWithOrder(text);
            dataGridView1.Rows.Clear();

            foreach (Peca p in listpecas)
            {
                dataGridView1.Rows.Add(p.id, p.nome, p.marca, p.funcionalidade, p.stock.ToString());

            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            string text = "Nome";
            List<Peca> listpecas = bd.getStockWithOrder(text);
            dataGridView1.Rows.Clear();

            foreach (Peca p in listpecas)
            {
                dataGridView1.Rows.Add(p.id, p.nome, p.marca, p.funcionalidade, p.stock.ToString());

            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            string text = "Marca";
            List<Peca> listpecas = bd.getStockWithOrder(text);
            dataGridView1.Rows.Clear();

            foreach (Peca p in listpecas)
            {
                dataGridView1.Rows.Add(p.id, p.nome, p.marca, p.funcionalidade, p.stock.ToString());

            }
        }
    }
}
