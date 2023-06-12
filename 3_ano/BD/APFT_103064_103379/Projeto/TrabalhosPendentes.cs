using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class TrabalhosPendentes
    {
        int _numero;
        int _numeropedido;
        string _datainicio;
        string _nome_empresa;
        string _nome_maquina;
        string _localizacao;

        public int numero
        {
            get { return _numero; }
            set { _numero = value; }
        }

        public int numeropedido
        {
            get { return _numeropedido; }
            set { _numeropedido = value; }
        }

        public string datainicio
        {
            get { return _datainicio; }
            set { _datainicio = value; }
        }

       
        public string nome_empresa
        {
            get { return _nome_empresa; }
            set { _nome_empresa = value; }
        }

        public string localizacao
        {
            get { return _localizacao; }
            set { _localizacao = value; }
        }

        public string nome_maquina
        {
            get { return _nome_maquina; }
            set { _nome_maquina = value; }
        }
    }
}
