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
    public partial class Admin_add_trabalhador : Form
    {
        private BDProxy bd;
        private int num_pedido;

        public Admin_add_trabalhador(int pedido)
        {
            this.num_pedido = pedido;
            InitializeComponent();
            bd = new BDProxy();
        }

        private void Cancelar_Click(object sender, EventArgs e)
        {
            this.Hide();
            var aux = new Admin_Inicio();
            aux.Show();
        }

        private void Enviar_Click(object sender, EventArgs e)
        {
            

                bd.inserirTrabalhoTrabalhador(num_pedido, comboBox1.Text);
                MessageBox.Show("Trabalhor associado", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Hide();
                var aux = new Admin_Inicio();
                aux.Show();
                

            

        }

        private void Add_Click(object sender, EventArgs e)
        {
            
                bd.inserirTrabalhoTrabalhador(num_pedido, comboBox1.Text);
                MessageBox.Show("Trabalhor associado", "Sucesso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Hide();
                var auxi = new Admin_add_trabalhador(num_pedido);
                auxi.Show();
            
        }

        private void Admin_add_trabalhador_Load(object sender, EventArgs e)
        {
            List<Trabalhador> workers = bd.GetTrabalhadores();
            foreach(Trabalhador worker in workers)
            {
                comboBox1.Items.Add(worker.num_cc + " -> "+ worker.nome);
            }
        }
    }
}
