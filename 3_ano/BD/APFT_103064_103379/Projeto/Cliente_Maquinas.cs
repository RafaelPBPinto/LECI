using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BD_Interface
{
    public partial class Cliente_Maquinas : Form
    {
        private Empresa emp;
        private BDProxy bd;

        public Cliente_Maquinas(Empresa emp, BDProxy bd)
        {
            InitializeComponent();
            this.emp = emp;
            this.bd = bd;
        }

        private void bttnCancel_Click(object sender, EventArgs e)
        {
            this.Hide();
            var cliente_Inicio = new Cliente_Inicio(emp, bd);
            cliente_Inicio.Show();
        }

        private void Cliente_Maquinas_Load(object sender, EventArgs e)
        {
            List<Maquina> maquinas = bd.getMaquinasEmpresa(emp.NIF);
            foreach(Maquina maquina in maquinas)
            {
                dataGridView1.Rows.Add(maquina.id.ToString(), maquina.nome, maquina.marca, maquina.tipo, maquina.qtd);
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
