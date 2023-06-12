using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace BD_Interface
{
    public class BDProxy
    {
        private SqlConnection cn = new SqlConnection("data source= tcp:mednat.ieeta.pt\\SQLSERVER,8101; initial catalog=p1g2; uid=p1g2; password=filipe.rafa2002");

        private SqlConnection getSGBDConnection()
        {
            return new SqlConnection("data source= tcp:mednat.ieeta.pt\\SQLSERVER,8101; initial catalog=p1g2; uid=p1g2; password=filipe.rafa2002");
        }

        public bool verifySGBDConnection()
        {
            if (cn == null)
                cn = getSGBDConnection();

            if (cn.State != ConnectionState.Open)
                cn.Open();

            return cn.State == ConnectionState.Open;
        }

        
        public Trabalhador checkTrabalhador(int numCC)
        {
            verifySGBDConnection();

            SqlCommand cmd = new SqlCommand("SELECT * FROM PROJETO_check_trabalhador(@numcc)", cn);
            cmd.Parameters.AddWithValue("@numcc", numCC);
            SqlDataReader reader = cmd.ExecuteReader();
            Trabalhador tr = new Trabalhador();
            while (reader.Read())
            {
                tr.num_cc = (int)reader["num_CC"];
                tr.nome = reader["nome"].ToString();
                tr.morada = reader["morada"].ToString();
            }
            reader.Close();
            return tr;
        }

        public Empresa checkempresa(int NIF)
        {
            verifySGBDConnection();

            SqlCommand cmd = new SqlCommand("SELECT * FROM PROJETO_check_empresa(@nif)", cn);
            cmd.Parameters.AddWithValue("@nif", NIF);
            SqlDataReader reader = cmd.ExecuteReader();
            Empresa emp = new Empresa();
            while (reader.Read())
            {
                emp.Nome = reader["nome"].ToString();
                emp.NIF = (int)reader["NIF"];
                emp.Localizacao = reader["localizacao"].ToString();
            }
            reader.Close();
            return emp;

        }

        public List<Maquina> getMaquinasEmpresa(int NIF)
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM dbo.PROJETO_ListMachines(" + NIF + ");";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Maquina> maquinas = new List<Maquina>();

            while (reader.Read())
            {
                Maquina m = new Maquina();
                m.id = (int)reader["id"];
                m.nome = reader["nome"].ToString();
                m.tipo = reader["tipo"].ToString();
                m.marca = reader["marca"].ToString();
                maquinas.Add(m);
            }

            reader.Close();
            return maquinas;
        }

        public List<Trabalho> GetTrabalhoPorTrabalhador(int numcc)
        {
            string command = "SELECT * FROM PROJETO_trabalho_interface_trabalhador(@trabalhador);";
            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@trabalhador", numcc);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Trabalho> listworks = new List<Trabalho>();

            while (reader.Read())
            {
                Trabalho t = new Trabalho();
                t.num_trabalho = (int)reader["trabalho"];
                listworks.Add(t);
            }
            reader.Close();
            return listworks;
        }
        public List<PedidoTrabalho> GetPedidoTrabalhos()
        {
            if (!verifySGBDConnection())
                return null;

            String command_construcao = "SELECT * FROM PROJETO_listar_pedidos();";

            SqlCommand cmd = new SqlCommand(command_construcao, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<PedidoTrabalho> pedidos = new List<PedidoTrabalho>();

            while (reader.Read())
            {
                PedidoTrabalho pedido = new PedidoTrabalho();
                pedido.id = (int)reader["numero"];
                pedido.nome_empresa = reader["nome_empresa"].ToString();
                pedido.foiAceite = reader["foi_aceite"].ToString();
                pedido.data = reader["data_pedido"].ToString();
                string[] aux = pedido.data.Split(' ');
                pedido.data = aux[0];
                pedido.nome_maquina = reader["nome_maquina"].ToString();
                pedido.urgencia = reader["nivel_urgencia"].ToString();
                pedido.tipo = reader["tipo"].ToString();
                pedido.descricao = reader["descricao"].ToString();
                pedidos.Add(pedido);
            }
            reader.Close();


            return pedidos;
        }
        public List<PedidoTrabalho> GetTrabalhosComFiltragem(string tofilter)
        {
            if (!verifySGBDConnection())
                return null;

            if (tofilter.Equals("Todos"))
            {
                return GetPedidoTrabalhos();
            }
            String command_construcao = "SELECT * FROM PROJETO_listar_pedidos_com_filtros(@filter);";

            SqlCommand cmd = new SqlCommand(command_construcao, cn);
            cmd.Parameters.AddWithValue("@filter", tofilter);
            SqlDataReader reader = cmd.ExecuteReader();

            List<PedidoTrabalho> pedidos = new List<PedidoTrabalho>();

            while (reader.Read())
            {
                PedidoTrabalho pedido = new PedidoTrabalho();
                pedido.id = (int)reader["numero"];
                pedido. nome_empresa = reader["nome_empresa"].ToString();
                pedido.foiAceite = reader["foi_aceite"].ToString();
                pedido.data = reader["data_pedido"].ToString();
                string[] aux = pedido.data.Split(' ');
                pedido.data = aux[0];
                pedido.nome_maquina = reader["nome_maquina"].ToString();
                pedido.urgencia = reader["nivel_urgencia"].ToString();
                pedido.tipo = reader["tipo"].ToString();
                pedido.descricao = reader["descricao"].ToString();
                pedidos.Add(pedido);
            }
            reader.Close();


            return pedidos;
        }
        public List<PedidoTrabalho> getPedidoTrabalhoEmp(int NIF)
        {
            if (!verifySGBDConnection())
                return null;

            String command_construcao = "SELECT * FROM dbo.PROJETO_historicopedidos( " + NIF + ");";

            SqlCommand cmd = new SqlCommand(command_construcao, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<PedidoTrabalho> pedidos = new List<PedidoTrabalho>();

            while (reader.Read())
            {
                PedidoTrabalho pedido = new PedidoTrabalho();
                pedido.foiAceite = reader["foi_aceite"].ToString();
                pedido.empNIF = NIF;
                pedido.data = reader["data_pedido"].ToString();
                string[] aux = pedido.data.Split(' ');
                pedido.data = aux[0];
                pedido.maquinaID = (int) reader["maquina_ni"];
                pedido.urgencia = reader["nivel_urgencia"].ToString();
                pedido.descricao = reader["notas"].ToString();
                pedido.tipo = "Construcao";
                pedidos.Add(pedido);
            }
            reader.Close();

            String command_manutencao = "SELECT * FROM dbo.PROJETO_historicopedidosmanutencao(" + NIF + ");";

            cmd = new SqlCommand(command_manutencao, cn);
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                PedidoTrabalho pedido = new PedidoTrabalho();
                pedido.foiAceite = reader["foi_aceite"].ToString();
                pedido.data = reader["data_pedido"].ToString();
                pedido.maquinaID = (int)reader["maquina_ni"];
                pedido.urgencia = reader["nivel_urgencia"].ToString();
                pedido.descricao = reader["descricao"].ToString();
                pedido.tipo = "Manutencao";
                pedidos.Add(pedido);
            }
            reader.Close();

            return pedidos;
        }
        
        public List<Trabalhador> GetTrabalhadores()
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM Projeto_lista_trabalhadores;";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Trabalhador> trabalhadores = new List<Trabalhador>();

            while(reader.Read())
            {
                Trabalhador trabalhador = new Trabalhador();
                trabalhador.num_cc = (int)reader["num_CC"];
                trabalhador.nome = reader["nome"].ToString();
                trabalhador.morada = reader["morada"].ToString();
                trabalhadores.Add(trabalhador);
            }
            reader.Close();

            return trabalhadores;
        }

        public List<Trabalhador> GetTrabalhadoresWithFilter(string pesquisa)
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_pesquisar_trabalhador(@pesquisa);";

            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@pesquisa", pesquisa);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Trabalhador> trabalhadores = new List<Trabalhador>();

            while (reader.Read())
            {
                Trabalhador trabalhador = new Trabalhador();
                trabalhador.num_cc = (int)reader["num_CC"];
                trabalhador.nome = reader["nome"].ToString();
                trabalhador.morada = reader["morada"].ToString();
                trabalhadores.Add(trabalhador);
            }
            reader.Close();

            return trabalhadores;
        }

        public List<Trabalhador> GetTrabalhadoresOrderBy(string pesquisa)
        {
            if (!verifySGBDConnection())
                return null;

            String command = "EXEC PROJETO_ordenar_trabalhadores @pesquisa;";

            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@pesquisa", pesquisa);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Trabalhador> trabalhadores = new List<Trabalhador>();

            while (reader.Read())
            {
                Trabalhador trabalhador = new Trabalhador();
                trabalhador.num_cc = (int)reader["num_CC"];
                trabalhador.nome = reader["nome"].ToString();
                trabalhador.morada = reader["morada"].ToString();
                trabalhadores.Add(trabalhador);
            }
            reader.Close();

            return trabalhadores;
        }

        public List<TrabalhosPendentes> GetTrabalhosPendentes()
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_lista_trabalhos_pendentes";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<TrabalhosPendentes> trabalhos = new List<TrabalhosPendentes>();

            while (reader.Read())
            {
                TrabalhosPendentes tr = new TrabalhosPendentes();
                tr.numero = (int)reader["numero"];
                tr.numeropedido = (int)reader["numero_pedido"];
                tr.datainicio = reader["data_inicio"].ToString();
                string[] dataaux = tr.datainicio.Split(' ');
                tr.datainicio = dataaux[0];
                tr.nome_empresa = reader["nome_empresa"].ToString();
                tr.nome_maquina = reader["nome_maquina"].ToString();
                tr.localizacao = reader["localizacao"].ToString();

                trabalhos.Add(tr);
            }
            reader.Close();

            return trabalhos;
        }

        public List<Trabalho> GetTrabalhos()
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM Projeto_listar_trabalhos();";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Trabalho> trabalhos = new List<Trabalho>();

            while (reader.Read())
            {
                Trabalho trabalho = new Trabalho();
                trabalho.num_trabalho = (int)reader["numero"];
                trabalho.num_pedido = (int)reader["numero_pedido"];
                trabalho.data_inicio = reader["data_inicio"].ToString();
                string[] aux = trabalho.data_inicio.Split(' ');
                trabalho.data_inicio = aux[0];
                trabalho.data_fim = reader["data_fim"].ToString();
                string[] aux2 = trabalho.data_fim.Split(' ');
                trabalho.data_fim = aux2[0];
                trabalho.foi_feito = "Finalizado";
                trabalho.custo = reader["custo"].ToString();
                trabalho.nr_horas = reader["nr_horas"].ToString();
                trabalho.empresa = reader["nome_empresa"].ToString();
                trabalho.localizacao = reader["localizacao"].ToString();
                trabalho.tipo = reader["tipo"].ToString();
                trabalho.descricao = reader["descricao"].ToString();
                trabalho.maquina = reader["nome_maquina"].ToString();
                trabalhos.Add(trabalho);
            }
            reader.Close();

            return trabalhos;
        }

        public List<Trabalho_View> GetTrabalhosByTrabalhador(int cc)
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_trabalho_interface_trabalhador(@numero_cc);";


            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@numero_cc", cc);

            SqlDataReader reader = cmd.ExecuteReader();

            List<Trabalho_View> trabalhos = new List<Trabalho_View>();

            while (reader.Read())
            {
                Trabalho_View trabalho = new Trabalho_View();
                
                trabalho.nome_empresa = reader["nome_empresa"].ToString();
                trabalho.marca = reader["marca"].ToString();
                trabalho.tipo = reader["tipo"].ToString();
                trabalho.nome_maquina = reader["nome_maquina"].ToString();
                trabalho.numero_trabalho = (int)reader["trabalho"];
                trabalho.localizacao = reader["localizacao"].ToString();
                trabalho.data_inicio = reader["data_inicio"].ToString();
                string[] data = trabalho.data_inicio.Split(' ');
                trabalho.data_inicio = data[0];
                trabalhos.Add(trabalho);
            }
            reader.Close();

            return trabalhos;
        }

        public List<Peca> getStock()
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_listar_stock";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Peca> pecas = new List<Peca>();

            while (reader.Read())
            {
                Peca peca = new Peca();
                peca.id = (int)reader["id"];
                peca.nome = reader["nome"].ToString();
                peca.marca = reader["marca"].ToString();
                peca.stock = (int)reader["num_de_pecas"];
                pecas.Add(peca);
            }
            reader.Close();

            return pecas;
        }

        public List<Peca> getStockWithFilter(string text)
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_pesquisa_peca(@text);";

            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@text", text);

            SqlDataReader reader = cmd.ExecuteReader();

            List<Peca> pecas = new List<Peca>();

            while (reader.Read())
            {
                Peca peca = new Peca();
                peca.id = (int)reader["id"];
                peca.nome = reader["nome"].ToString();
                peca.marca = reader["marca"].ToString();
                peca.stock = (int)reader["num_de_pecas"];
                pecas.Add(peca);
            }
            reader.Close();

            return pecas;
        }
        public List<Peca> getStockWithOrder(string text)
        {
            if (!verifySGBDConnection())
                return null;

            String command = "EXEC PROJETO_ordenar_stock @text";

            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@text", text);

            SqlDataReader reader = cmd.ExecuteReader();

            List<Peca> pecas = new List<Peca>();

            while (reader.Read())
            {
                Peca peca = new Peca();
                peca.id = (int)reader["id"];
                peca.nome = reader["nome"].ToString();
                peca.marca = reader["marca"].ToString();
                peca.stock = (int)reader["num_de_pecas"];
                pecas.Add(peca);
            }
            reader.Close();

            return pecas;
        }
        public int getStockByPeca(int peca)
        {
            return 0;
        }

        public List<Peca> getAllPecas()
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_lista_pecas ";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Peca> pecas = new List<Peca>();

            while (reader.Read())
            {
                Peca peca = new Peca();
                peca.id = (int)reader["id"];
                peca.nome = reader["nome"].ToString();
                peca.marca = reader["marca"].ToString();
                peca.funcionalidade = reader["funcionalidade"].ToString();
                pecas.Add(peca);
            }
            reader.Close();

            return pecas;
        }

        public List<Peca> getAllPecasWithFilter(string pesquisa)
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_pesquisa_peca(@pesquisa)" ;

            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@pesquisa", pesquisa);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Peca> pecas = new List<Peca>();

            while (reader.Read())
            {
                Peca peca = new Peca();
                peca.id = (int)reader["id"];
                peca.nome = reader["nome"].ToString();
                peca.marca = reader["marca"].ToString();
                peca.funcionalidade = reader["funcionalidade"].ToString();
                pecas.Add(peca);
            }
            reader.Close();

            return pecas;
        }

        public List<PedidoMaterial> getAllPedidos()
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_pedido_material_pendentes";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<PedidoMaterial> peds = new List<PedidoMaterial>();

            while (reader.Read())
            {
                PedidoMaterial ped = new PedidoMaterial();
                ped.numero = (int)reader["numero"];
                ped.data = DateTime.Parse(reader["data"].ToString());
                ped.hour = DateTime.Parse(reader["hora"].ToString());
                
                ped.nome_peca = reader["nome_peca"].ToString();
                ped.quantidade = (int)reader["quantidade"];
                ped.nome_trabalhador = reader["nome_trabalhador"].ToString();

                peds.Add(ped);
            }
            reader.Close();

            return peds;
        }
        public List<Fornecedor> getAllFornecedores()
        {
            if (!verifySGBDConnection())
                return null;

            String command = "SELECT * FROM PROJETO_listar_fornecedores ";

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Fornecedor> fornlist = new List<Fornecedor>();

            while (reader.Read())
            {
                Fornecedor forn = new Fornecedor();
                forn.NIF = (int)reader["NIF"];
                forn.nome = reader["nome"].ToString();
                forn.localizacao = reader["localizacao"].ToString();
                fornlist.Add(forn);
            }
            reader.Close();

            return fornlist;
        }
        public bool insertPedidoManutencao(int NIF, String descricao, String urgencia, int maquina)
        {
            String date = DateTime.Now.ToString("yyyy-MM-dd");
            SqlCommand command = new SqlCommand("EXEC PROJETO_inserir_manutencao " + NIF + " , @date , " + maquina + " , @urgencia  , @descricao ", cn);
            command.Parameters.AddWithValue("@date", date);
            command.Parameters.AddWithValue("@urgencia", urgencia);
            command.Parameters.AddWithValue("@descricao", descricao);
            SqlDataReader reader = command.ExecuteReader();
            bool check = true;
            while (reader.Read())
            {
                if (reader.FieldCount > 0)
                {
                    check = false;
                    MessageBox.Show(reader["ErrorMessage"].ToString(), "Erro de servidor", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            reader.Close();
            return check;

        }

        public void insertPedidoConstrucao(String tipo, String marca, String nome, int NIF, String descricao, String urgencia)
        {
            String date = DateTime.Now.ToString("yyyy-MM-dd");
            SqlCommand command = new SqlCommand("EXEC PROJETO_inserir_construcao @tipo , @marca , @nome , " + NIF + " , @date  , @urgencia  , @descricao ", cn);
            command.Parameters.AddWithValue("@tipo", tipo);
            command.Parameters.AddWithValue("@marca", marca);
            command.Parameters.AddWithValue("@nome", nome);
            command.Parameters.AddWithValue("@date", date);
            command.Parameters.AddWithValue("@urgencia", urgencia);
            command.Parameters.AddWithValue("@descricao", descricao);
            command.ExecuteNonQuery();
        }
        public void insertPedidoAceite(int num_pedido,String estado)
        {
            String date = DateTime.Now.ToString("yyyy-MM-dd");
            SqlCommand command = new SqlCommand("EXEC PROJETO_inserir_trabalho_aceite " + num_pedido + ", @state , @date ;", cn);
            command.Parameters.AddWithValue("@state", estado);
            command.Parameters.AddWithValue("@date", date);
            command.ExecuteNonQuery();
        }

        public void inserirTrabalhoTrabalhador(int pedido,string trabalhador)
        {
            string[] worker = trabalhador.Split('-');
            int trab = Convert.ToInt32(worker[0]);

            String command = "EXEC PROJETO_inserir_trabalho_trabalhador " + pedido + " , " + trab;

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();

            reader.Close();

        }
        public void insertPedidoDeMaterial(int trabalho,int trabalhador, int peca, int quantidade)
        {
            String date = DateTime.Now.ToString("yyyy-MM-dd");
            String hour = DateTime.Now.ToString("HH:mm:ss");
            SqlCommand command = new SqlCommand("EXEC PROJETO_inserir_pedido_de_material @date,@hour,@peca_id,@quantidade,@trabalho,@trabalhador;", cn);
            command.Parameters.AddWithValue("@date", date);
            command.Parameters.AddWithValue("@hour", hour);
            command.Parameters.AddWithValue("@peca_id", peca);
            command.Parameters.AddWithValue("@quantidade", quantidade);
            command.Parameters.AddWithValue("@trabalho", trabalho);
            command.Parameters.AddWithValue("@trabalhador", trabalhador);
            command.ExecuteNonQuery();
        }
        public bool updatematerial(int pedidodematerial)
        {

            String command = "EXEC PROJETO_update_material " + pedidodematerial;

            SqlCommand cmd = new SqlCommand(command, cn);
            SqlDataReader reader = cmd.ExecuteReader();
            bool check = true;
            while (reader.Read())
            {
                if (reader.FieldCount > 0)
                {
                    MessageBox.Show(reader["ErrorMessage"].ToString(), "Erro de servidor", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    check = false;

                }           
            }
            reader.Close();
            return check;




        }
        public void updatematerialwithforn(double price, int num_pedido,int fornecedor)
        {

            string command = "EXEC PROJETO_add_fornecedor @pedido,@fornecedor,@preco";
            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@pedido", num_pedido);
            cmd.Parameters.AddWithValue("@fornecedor", fornecedor);
            cmd.Parameters.AddWithValue("@preco", price);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
        }
        public void removeworker(int numcc)
        {
            string command = "EXEC PROJETO_remove_trabalhador @trabalhador";
            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@trabalhador", numcc);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
        }
        public void insertworker(int numcc,string nome,string morada)
        {
            string command = "EXEC PROJETO_insert_trabalhador @nome,@numcc,@morada;";
            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@nome", nome);
            cmd.Parameters.AddWithValue("@numcc", numcc);
            cmd.Parameters.AddWithValue("@morada", morada);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
        }
        public void updatestock(int pecaid,int quantidade)
        {
            string command = "EXEC PROJETO_add_stock @pecaid,@quantidade";
            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@quantidade", quantidade);
            cmd.Parameters.AddWithValue("@pecaid", pecaid);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
        }
        public void insertpeca(string nome, string marca , string funcionalidade)
        {
            string command = "EXEC PROJETO_inserir_nova_peca @nome,@marca,@funcionalidade;";
            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@nome", nome);
            cmd.Parameters.AddWithValue("@marca", marca);
            cmd.Parameters.AddWithValue("@funcionalidade", funcionalidade);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
        }
        public void updateworkdone(int trabalho,float custo , int horas)
        {
            verifySGBDConnection();

            string finaldate = DateTime.Now.ToString("yyyy-MM-dd");

            string command = "EXEC PROJETO_concluir_trabalho @trabalho,@datafinal,@custo,@horas";
            SqlCommand cmd = new SqlCommand(command, cn);
            cmd.Parameters.AddWithValue("@datafinal", finaldate);
            cmd.Parameters.AddWithValue("@horas", horas);
            cmd.Parameters.AddWithValue("@custo", custo);
            cmd.Parameters.AddWithValue("@trabalho", trabalho);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
        }
    }   
}
