using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security.Cryptography;
using System.IO;

namespace BD_Interface
{
    public partial class Cliente_Empresa : Form
    {
        private BDProxy bd;

        public Cliente_Empresa()
        {
            InitializeComponent();
            bd = new BDProxy();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int NIF_Empresa = Int32.Parse(textBox1.Text);

            Empresa emp = bd.checkempresa(NIF_Empresa);
            Console.WriteLine(emp.ToString());
            if (emp.NIF != 0)
            {
                this.Hide();
                var cliente_Inicio = new Cliente_Inicio(emp, bd);
                cliente_Inicio.Show();
            }
            else
            {
                MessageBox.Show("Empresa não existe!", "Erro - Empresa não existe", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            var inicio = new Inicio();
            inicio.Show();
        }

        private void Cliente_Empresa_Load(object sender, EventArgs e)
        {

        }
    }
}
