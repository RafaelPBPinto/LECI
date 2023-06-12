using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BD_Interface
{
    public class Empresa
    {
        private int _NIF;
        private String _nome;
        private String _localizacao;
        private Dictionary<Maquina, int> _maquinas = new Dictionary<Maquina, int>();

        public int NIF
        {
            get { return _NIF; }
            set { _NIF = value; }
        }

        public String Nome
        {
            get { return _nome; }
            set { _nome = value; }
        }

        public String Localizacao
        {
            get { return _localizacao; }
            set { _localizacao = value; }
        }

        public Dictionary<Maquina, int> Maquinas
        {
            get { return _maquinas; }
            set { _maquinas = value;  }
        }

        public void addMaquina(Maquina maquina)
        {
            if (_maquinas.ContainsKey(maquina))
            {
                _maquinas[maquina] += 1;
            } else
            {
                _maquinas.Add(maquina, 1);
            }
        }

        public void removeMaquina(Maquina maquina, int qnt)
        {
            if (_maquinas.ContainsKey(maquina))
            {
                if (_maquinas[maquina] - qnt > 0)
                {
                    _maquinas[maquina] -= qnt;
                } else
                {
                    _maquinas.Remove(maquina);
                }
                    
            } else
            {
                System.Console.WriteLine("empresa não possui máquinas dessas");
                //talvez pop-up
            }
        }
        public override String ToString()
        {
            return _nome + "\t" + _localizacao + "\t" + _NIF ;
        }

    }
}
