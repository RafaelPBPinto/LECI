using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class PedidoMaterial
    {
        int _numero;
        DateTime _data;
        DateTime _hour;
        double _price;
        int _pecaid;
        string _nome_peca;
        int _quantidade;
        int _fornecedor;
        string _nome_trablhador;
        int _trabalho;
        int _trabalhador;
        String _verify;

        public int numero
        {
            get { return _numero; }
            set { _numero = value; }
        }

        public DateTime data
        {
            get { return _data; }
            set { _data = value; }
        }
        public DateTime hour
        {
            get { return _hour; }
            set { _hour = value; }
        }

        public double price
        {
            get { return _price; }
            set { _price = value; }
        }
        public int pecaid
        {
            get { return _pecaid; }
            set { _pecaid = value; }
        }
        public int quantidade
        {
            get { return _quantidade; }
            set { _quantidade = value; }
        }
        public int fornecedor
        {
            get { return _fornecedor; }
            set { _fornecedor = value; }
        }
        public int trabalho
        {
            get { return _trabalho; }
            set { _trabalho = value; }
        }
        public int trabalhador
        {
            get { return _trabalhador; }
            set { _trabalhador = value; }
        }
        public String verify
        {
            get { return _verify; }
            set { _verify = value; }
        }

        public String nome_peca
        {
            get { return _nome_peca; }
            set { _nome_peca = value; }
        }

        public String nome_trabalhador
        {
            get { return _nome_trablhador; }
            set { _nome_trablhador = value; }
        }

    }
}
