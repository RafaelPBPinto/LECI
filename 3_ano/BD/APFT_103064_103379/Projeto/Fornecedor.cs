using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Fornecedor
    {
        int _NIF;
        String _nome;
        String _localizacao;

        public int NIF
        {
            get { return _NIF; }
            set { _NIF = value; }
        }

        public String nome
        {
            get { return _nome; }
            set { _nome = value; }
        }

        public String localizacao
        {
            get { return _localizacao; }
            set { _localizacao = value; }
        }
    }
}
