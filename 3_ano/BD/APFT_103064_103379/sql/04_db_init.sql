INSERT INTO PROJETO_Empresa(NIF,nome,[localizacao]) VALUES
(123456789,'Master Industries','Aveiro'),
(987654321,'Industria Portuense','Porto'),
(912837465,'XPTO Machines','Porto');


INSERT INTO PROJETO_Fornecedor (NIF,nome,[localizacao]) VALUES
(928746513,'Fornecedora Industrial Lusitana','Aveiro'),
(187654321,'Peças Portugal','Lisboa'),
(502436871,'Fornecedora de Componentes Industriais','Porto'),
(619237845,'Peças & Soluções Industriais','Braga'),
(354091287,'Fornecedora Nacional de Máquinas e Peças','Aveiro'),
(870562349,'Componentes Industriais Lusitanos','Lisboa'),
(236198745,'Fornecedora de Peças e Equipamentos Industriais','Faro'),
(415896273,'Peças Excelência Industrial','Évora'),
(692173854,'Fornecedora de Componentes para a Indústria','Vila Real'),
(843297156,'Peças de Qualidade Industrial','Porto'),
(530917482,'Fornecedora de Peças e Acessórios Industriais','Porto'),
(724169538,'Soluções Industriais Portugal','Aveiro'),
(268453917,'Fornecedora de Peças Especializadas','Lisboa'),
(987354621,'Peças e Equipamentos Industriais Portugal','Beja'),
(149782635,'Fornecedora de Componentes de Precisão','Viana do Castelo'),
(372659148,'Peças e Soluções para a Indústria','Portalegre'),
(815036297,'Fornecedora Industrial de Portugal','Viseu'),
(536912478,'Peças e Equipamentos para Setor Industrial','Viseu'),
(297615834,'Fornecedora de Peças e Serviços Industriais','Castelo Branco'),
(461283759,'Peças Avançadas para a Indústria','Guarda');


INSERT INTO PROJETO_Peca (nome, marca, funcionalidade) VALUES 
('Engrenagem helicoidal', 'ABC Gear', 'Transmissão de torque suave e silenciosa em máquinas industriais'),
('Válvula de controle pneumático', 'XYZ Controls', 'Regula o fluxo de ar comprimido em sistemas pneumáticos'),
('Correia de transmissão', 'Industrial Belts', 'Transmite energia e movimento entre polias em máquinas industriais'),
('Sensor de temperatura', 'SensiTech', 'Mede a temperatura ambiente ou de componentes em máquinas industriais'),
('Bomba centrífuga', 'FlowMax', 'Fornece pressão e fluxo de líquidos em sistemas industriais'),
('Rolamento de esferas', 'Precision Bearings', 'Suporta cargas radiais e axiais em movimentos rotativos de mquinas'),
('Placa eletrónica de controle', 'Techtronics', 'Controla e monitora operações elétricas em máquinas industriais'),
('Filtro de ar comprimido', 'AirPure', 'Remove impurezas e partículas do ar comprimido para proteger componentes pneumáticos'),
('Motor de passo', 'PowerDrive', 'Converte pulsos elétricos em movimento preciso e controlado em máquinas'),
('Pistão hidráulico', 'HydraForce', 'Gera força mecânica através de fluidos pressurizados em sistemas hidráulicos'),
('Controlador lógico programável (CLP)', 'LogicMaster', 'Automatiza e controla processos em máquinas industriais'),
('Engate rápido pneumático', 'QuickConnect', 'Permite a conexão e desconexão rápida de linhas pneumáticas em sistemas industriais'),
('Corrente transportadora', 'ChainPro', 'Movimenta peças ou produtos em linhas de montagem industriais'),
('Válvula solenoide', 'ElectroValve', 'Controla o fluxo de fluidos em sistemas industriais usando campos eletromagnéticos'),
('Sensor de proximidade', 'ProxiSense', 'Detecta a presença ou ausência de objetos em máquinas industriais'),
('Disco de corte', 'CutMaster', 'Realiza cortes precisos em materiais metálicos em processos industriais'),
('Chave de partida', 'StartKey', 'Inicia e interrompe o funcionamento de motores elétricos em máquinas industriais'),
('Filtro de óleo', 'OilClean', 'Remove impurezas e contaminantes do óleo lubrificante em máquinas industriais'),
('Resistor de potência', 'PowerResist', 'Dissipa energia elétrica excessiva em sistemas de controle e potência'),
('Corrente de rolos', 'RollChain', 'Movimenta cargas pesadas em sistemas de transporte industrial'),
('Cilindro pneumático', 'AirMaster', 'Converte energia do ar comprimido em movimento linear em máquinas industriais'),
('Sensor de pressão', 'PressureSense', 'Mede a pressão de fluidos em sistemas industriais'),
('Bomba de vácuo', 'VacuPump', 'Remove o ar de sistemas ou cria vácuo para processos industriais'),
('Controlador de temperatura', 'TempControl', 'Regula e mantém a temperatura em máquinas e processos industriais'),
('Engate rápido hidráulico', 'HydraConnect','Conecta e desconecta linhas hidráulicas de forma rápida e segura');


INSERT INTO PROJETO_Trabalhador (nome, num_CC, morada) VALUES 
('João Silva', 12345678, 'Rua das Flores, 123, Lisboa'),
('Ana Santos', 98765432, 'Avenida Central, 456, Porto'),
('Pedro Almeida', 45678912, 'Travessa do Sol, 789, Coimbra'),
('Marta Oliveira', 32165498, 'Rua dos Pinheiros, 456, Faro'),
('Carlos Pereira', 78912345, 'Avenida Principal, 789, Braga'),
('Sofia Fernandes', 65498732, 'Praça da Liberdade, 852, Viseu');


INSERT INTO PROJETO_Maquina (tipo, marca, nome, empresa_NIF, Maq_pendente) VALUES 
('Impressora 3D', 'XYZ Corporation', 'ImpressiveXYZ',123456789,0),
('Impressora 3D', 'XYZ Corporation', 'ImpressiveXYZ',123456789,0),
('Impressora 3D', 'HYZ Techno', 'Techno3d',987654321,0),
('Impressora 3D', 'HYZ Techno', 'Techno3d',912837465,0),
('Impressora 3D', 'HYZ Techno', 'Techno3d',912837465,0),
('Impressora 3D', 'HYZ Techno', 'Techno3d',912837465,0),
('Impressora 3D', 'DEF Engineering', 'Impressing the world',912837465,0),
('Impressora 3D', 'DEF Engineering', 'Impressing the world',912837465,0),
('Impressora 3D', 'GHI Machines', 'GHIPower3D  4X53',912837465,0),
('Torno CNC', 'ABC Industries', 'ABCTornPower',123456789,0),
('Torno CNC', 'ABC Industries', 'ABCTornPower',987654321,0),
('Torno CNC', '123 Manufacturing', 'Torno Zulu',123456789,0),
('Fresadora', '123 Manufacturing', 'Manufresadora mxq',987654321,0),
('Fresadora', '123 Manufacturing', 'Manufresadora mxq',987654321,0),
('Fresadora', '123 Manufacturing', 'Manufresadora mxq',987654321,0),
('Fresadora', '123 Manufacturing', 'Manufresadora mxq',987654321,0),
('Máquina de Solda', 'DEF Engineering', 'Forxtok',912837465,0),
('Máquina de Solda', 'DEF Engineering', 'Forxtok',912837465,0),
('Máquina de Solda', 'DEF Engineering', 'Forxtok',123456789,0),
('Máquina de Solda', 'VMX Machining', 'XPKolin',912837465,0),
('Máquina de Solda', 'STU Robotics', 'SoldForce XOS3',912837465,0),
('Máquina de Solda', 'MNO Systems', 'Kdif 3B124H',987654321,0),
('Prensa Hidráulica', 'GHI Machines', 'Maquina Juli',987654321,0),
('Prensa Hidráulica', 'GHI Machines', 'Maquina Juli',987654321,0),
('Prensa Hidráulica', 'GHI Machines', 'Maquina Juli',987654321,0),
('Prensa Hidráulica', 'GHI Machines', 'Maquina Juli V2',912837465,0),
('Prensa Hidráulica', 'GHI Machines', 'Maquina Juli V2',987654321,0),
('Prensa Hidráulica', 'DEF Engineering', 'PrensOptoscal',123456789,0),
('Prensa Hidráulica', 'DEF Engineering', 'PrensOptoscal',123456789,0),
('Prensa Hidráulica', 'DEF Engineering', 'PrensOptoscal',123456789,0),
('Empacotadora Automática', 'JKL Packaging', 'AutoPAckaEmpa',987654321,0),
('Cortadora a Laser', 'MNO Systems', 'Maquina XPTO',912837465,0),
('Cortadora a Laser', 'MNO Systems', 'Maquina XPTO',912837465,0),
('Cortadora a Laser', 'PQR Plastics', 'Cortox',987654321,0),
('Cortadora a Laser', 'PQR Plastics', 'Cortox Modelo 2023',987654321,0),
('Cortadora a Laser', 'XYZ Corportation', 'Lasertixeli',912837465,0),
('Máquina de Injeção de Plástico', 'PQR Plastics', 'MaquinaXYZ',123456789,0),
('Robô Industrial', 'STU Robotics', 'Robot Charles',912837465,0),
('Robô Industrial', 'STU Robotics', 'Robot Charles',912837465,0),
('Robô Industrial', 'MNO Systems', 'Robot Newton',912837465,0),
('Robô Industrial', 'XYZ Corporation', 'Innovate Robot',123456789,0),
('Robô Industrial', 'GHI Machines', 'PowerFul Robot',123456789,0),
('Robô Industrial', 'ABC Industris', 'Robot StrongMan',987654321,0),
('Robô Industrial', 'ABC Industris', 'Robot StrongMan',987654321,0),
('Robô Industrial', 'ABC Industris', 'Robot StrongMan',987654321,0),
('Robô Industrial', '123 Manufacturing', 'Robot Charles',123456789,0),
('Robô Industrial', '123 Manufacturing', 'Robot Charles',123456789,0),
('Centro de Usinagem', 'VWX Machining', 'Todo modelo 123',123456789,0);


INSERT INTO PROJETO_Pedido_de_Trabalho (empresa_NIF,foi_aceite,data_pedido,maquina_ni,nivel_urgencia) VALUES 
(912837465,'Pendente','2023-05-02',5,'Normal'),
(123456789,'Aceite','2023-06-05',10,'Muito Urgente'),
(987654321,'Rejeitado','2022-05-04',3,'Pouco Urgente');

INSERT INTO PROJETO_Manutencao(num_pedido,[descricao]) VALUES 
(1,'Motor da direita nao funciona'),
(2,'Válvula estragada');

INSERT INTO PROJETO_Construcao(num_pedido,notas) VALUES
(3,'Construir maquina nova')

INSERT INTO PROJETO_Trabalho (numero_pedido,data_inicio,data_fim,nr_horas,foi_feito,custo) VALUES
(2,'2023-05-20',NULL,NULL,0,NULL);

INSERT INTO PROJETO_Trabalho_Trabalhador (trabalho,trabalhador) VALUES
(1,12345678);

INSERT INTO PROJETO_Stock([peca_id], [num_de_pecas]) VALUES
(1,5),
(2,2),
(3,1),
(4,10),
(5,0),
(6,11),
(7,1),
(8,18),
(9,7),
(10,0),
(11,0),
(12,0),
(13,12),
(14,22),
(15,1),
(16,0),
(17,1),
(18,0),
(19,19),
(20,2),
(21,0),
(22,9),
(23,0),
(24,0),
(25,6);

INSERT INTO PROJETO_Pedido_de_Material([data], [hora], [preco], [peca_id], [quantidade], [fornecedor], [trabalho], [trabalhador], [verify]) VALUES
('2023-05-02', '10:34:23', 500, 2, 1, NULL, 1, 12345678, NULL);