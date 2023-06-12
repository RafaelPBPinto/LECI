using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Despesa
    {
        Trabalho _trabalho;
        Trabalhador _trabalhador;
        String _descricao;
        int _despesa;

        public Trabalho trabalho
        {
            get { return _trabalho; }
            set { _trabalho = value; }
        }

        public Trabalhador trabalhador
        {
            get { return _trabalhador; }
            set { _trabalhador = value; }
        }

        public String descricao
        {
            get { return _descricao; }
            set { _descricao = value; }
        }

        public int despesa
        {
            get { return _despesa; }
            set { _despesa = value; }
        }
    }
}
