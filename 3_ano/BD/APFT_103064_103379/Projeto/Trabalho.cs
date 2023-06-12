using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Trabalho
    {
        String _tipo;
        int _num_trabalho;
        int _num_pedido;
        String _maquina;
        String _empresa;
        String _localizacao;
        String _data_inicio;
        String _data_fim;
        String _nr_horas;
        Trabalhador _trabalhador;
        String _material;
        String _foi_feito;
        String _custo;
        String _descricao;

        public String tipo
        {
            get { return _tipo; }
            set { _tipo = value; }
        }

        public String descricao
        {
            get { return _descricao; }
            set { _descricao = value; }
        }
        public String maquina
        {
            get { return _maquina; }
            set { _maquina = value; }
        }
        public String empresa
        {
            get { return _empresa; }
            set { _empresa = value; }
        }
        public String localizacao
        {
            get { return _localizacao; }
            set { _localizacao = value; }
        }
        public int num_trabalho
        {
            get { return _num_trabalho; }
            set { _num_trabalho = value; }
        }

        public int num_pedido
        {
            get { return _num_pedido; }
            set { _num_pedido = value;}
        }

        public String data_inicio
        {
            get { return _data_inicio; }
            set { _data_inicio = value;}
        }

        public String data_fim 
        { 
            get { return _data_fim;} 
            set { _data_fim = value; }
        }

        public String nr_horas
        {
            get { return _nr_horas; }
            set { _nr_horas = value;}
        }

        public Trabalhador trabalhador
        {
            get { return _trabalhador; }
            set { _trabalhador = value; }
        }

        public String material
        {
            get { return _material; }
            set { _material = value; }
        }

        public String foi_feito
        {
            get { return _foi_feito; }
            set { _foi_feito = value; }
        }

        public String custo
        {
            get { return _custo; }
            set { _custo = value; }
        }
    }
}
