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
    public partial class Cliente_Historico : Form
    {
        private Empresa emp;
        private BDProxy bd;
        private List<PedidoTrabalho> pedidos;

        public Cliente_Historico(Empresa emp, BDProxy bd)
        {
            InitializeComponent();
            this.emp = emp;
            this.bd = bd;
        }

        private void Cliente_Historico_Load(object sender, EventArgs e)
        {
            pedidos = bd.getPedidoTrabalhoEmp(emp.NIF);
            foreach (PedidoTrabalho p in pedidos)
            {
                dataGridView1.Rows.Add(p.maquinaID.ToString(), p.tipo, p.urgencia, p.descricao, p.data, p.foiAceite);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var cliente_Inicio = new Cliente_Inicio(emp, bd);
            cliente_Inicio.Show();
        }
    }
}
