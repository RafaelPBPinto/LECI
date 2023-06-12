using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class PedidoTrabalho
    {
        int _id;
        int _empNIF;
        String _foiAceite;
        String _data;
        int _maquinaID;
        String _urgencia;
        String _tipo;
        String _descricao;
        String _nome_empresa;
        String _nome_maquina;

        public int id
        {
            get { return _id; }
            set { _id = value; }
        }

        public int empNIF
        {
            get { return _empNIF; }
            set { _empNIF = value; }
        }

        public String foiAceite
        {
            get { return _foiAceite; }
            set { _foiAceite = value; }
        }

        public String data
        {
            get { return _data; }
            set { _data = value; }
        }

        public int maquinaID
        {
            get { return _maquinaID; }
            set { _maquinaID = value; }
        }

        public String urgencia
        {
            get { return _urgencia; }
            set { _urgencia = value; }
        }

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

        public String nome_empresa
        {
            get { return _nome_empresa; }
            set { _nome_empresa = value; }
        }
        public String nome_maquina
        {
            get { return _nome_maquina; }
            set { _nome_maquina = value; }
        }
        public override String ToString()
        {
            return empNIF.ToString() + "\t" + foiAceite.ToString() + "\t" + data + "\t" + maquinaID.ToString() + "\t" + tipo.ToString() + "\t" + descricao.ToString() + "\t" + urgencia.ToString();
        }
    }
}
