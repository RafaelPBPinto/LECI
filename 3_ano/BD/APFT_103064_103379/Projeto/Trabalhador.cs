using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Trabalhador
    {
        String _nome;
        int _num_cc;
        String _morada;
        List<Trabalho> _trabalhos;

        public String nome
        {
            get { return _nome; }
            set { _nome = value; }
        }

        public int num_cc
        {
            get { return _num_cc; }
            set { _num_cc = value; }
        }

        public String morada
        {
            get { return _morada; }
            set { _morada = value; }
        }

        public List<Trabalho> trabalhos
        {
            get { return _trabalhos;}
            set { _trabalhos = value;}
        }

        public override string ToString()
        {
            return num_cc.ToString() + '\t' + nome + '\t' + morada;
        }
    }
}
