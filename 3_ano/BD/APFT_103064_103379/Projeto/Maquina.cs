using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Maquina
    {
        private int _id;
        private String _tipo;
        private String _nome;
        private String _marca;
        private int _qtd;
        private int _pend;

        public int id
        {
            get { return _id; }
            set { _id = value; }
        }

        public String tipo
        {
            get { return _tipo; }
            set { _tipo = value; }
        }

        public String nome
        {
            get { return _nome; }
            set { _nome = value; }
        }

        public String marca
        {
            get { return _marca; }
            set { _marca = value; }
        }

        public int qtd
        {
            get { return _qtd; }
            set { _qtd = value; }
        }
        public int pend
        {
            get { return _pend; }
            set { _pend= value; }
        }
        public override String ToString()
        {
            return _nome;
        }
    }
}
