using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Peca
    {
        int _id;
        String _nome;
        String _marca;
        String _funcionalidade;
        int _stock;

        public int id
        {
            get { return _id; }
            set { _id = value; }
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

        public String funcionalidade
        {
            get { return _funcionalidade; }
            set { _funcionalidade = value; }
        }

        public int stock
        {
            get { return _stock; }
            set { _stock = value; }
        }
    }
}
