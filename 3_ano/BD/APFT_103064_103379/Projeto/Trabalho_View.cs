using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Trabalho_View
    {
        int _numero_trabalho;
        String _localizacao;

        String _nome_empresa;
        String _marca;
        String _tipo;
        String _nome_maquina;
        String _data_inicio;

        public String data_inicio
        {
            get { return _data_inicio; }
            set { _data_inicio = value; }
        }

        public String nome_empresa
        {
            get { return _nome_empresa; }
            set { _nome_empresa = value; }
        }
        public String localizacao
        {
            get { return _localizacao; }
            set { _localizacao = value; }
        }
        public String marca
        {
            get { return _marca; }
            set { _marca = value; }
        }
        public String tipo
        {
            get { return _tipo; }
            set { _tipo = value; }
        }
        public String nome_maquina
        {
            get { return _nome_maquina; }
            set { _nome_maquina = value; }
        }
        public int numero_trabalho
        {
            get { return _numero_trabalho; }
            set { _numero_trabalho = value; }
        }
        
    }
}
