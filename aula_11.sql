create database loja_online;
use loja_online;


CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(500) DEFAULT NULL,
  `data_criado` timestamp NULL DEFAULT current_timestamp(),
  `data_editado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `produtos` VALUES
(1,'Notebook Pro 16','Processador de alto desempenho, 16GB RAM, SSD 512GB NVMe',4500.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12');



INSERT INTO `produtos` VALUES
(2,'Mouse Sem Fio','Mouse ergonômico óptico de alta precisão 1600 DPI',89.90,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(3,'Teclado Mecânico RGB','Switches azuis táteis, padrão ABNT2 com iluminação LED',249.90,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(4,'Monitor 27 Polegadas','Tela Full HD painel IPS 75Hz com conexões HDMI e DisplayPort',950.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(5,'Headset Gamer 7.1','Som surround virtual 7.1 com microfone antirruído',199.90,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(6,'Webcam Full HD 1080p','Câmera com foco automático e microfone estéreo integrado',159.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(7,'Cadeira Gamer Ergonômica','Apoio lombar, ajuste de altura e inclinação até 180 graus',890.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(8,'SSD NVMe M.2 1TB','Leitura de até 3500MB/s e gravação de 3000MB/s',420.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(9,'Memória RAM DDR4 16GB','Módulo de 3200MHz com dissipador de calor em alumínio',280.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(10,'Placa de Vídeo 8GB GDDR6','Arquitetura de última geração com suporte a Ray Tracing',2100.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(11,'Fonte ATX 650W 80 Plus Bronze','PFC ativo e cabos revestidos em malha de proteção',340.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(12,'Gabinete Gamer Mid Tower','Lateral em vidro temperado e 3 coolers frontais inclusos',290.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(13,'Roteador Wi-Fi 6 Dual Band','Velocidade Gigabit com 4 antenas de alto ganho',310.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(14,'Switch Gigabit 8 Portas','Gerenciamento automático de tráfego plug and play',110.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(15,'HD Externo Portátil 2TB','Conexão USB 3.0 de alta velocidade para backups',390.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(16,'Pen Drive 128GB USB 3.2','Corpo metálico resistente e transferência rápida',65.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(17,'Mousepad Gamer Extra Grande','Superfície speed de 90x40cm com bordas costuradas',59.90,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(18,'Suporte Articulado para Monitor','Pistão a gás compatível com telas de 17 a 32 polegadas',175.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(19,'Base Cooler para Notebook','5 ventoinhas silenciosas com LED e ajuste de inclinação',95.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(20,'Hub USB-C 7 em 1','Saída HDMI 4K, portas USB 3.0, leitor SD e Power Delivery',145.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(21,'Microfone Condensador USB','Padrão cardióide ideal para podcasts, aulas e streaming',230.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(22,'Caixa de Som Bluetooth 20W','Bateria de longa duração e resistência à água IPX6',180.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(23,'Fone de Ouvido Bluetooth TWS','Cancelamento ativo de ruído e estojo de carregamento',160.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(24,'Smartwatch Esportivo','Monitor cardíaco, oxímetro e GPS integrado',270.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(25,'Tablet 10.4 Polegadas 64GB','Tela 2K, 4GB de RAM e conectividade Wi-Fi',1150.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(26,'Smartphone 5G 256GB','Tela AMOLED 120Hz, câmera tripla de 50MP e 8GB RAM',1890.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(27,'Carregador Rápido USB-C 30W','Tecnologia GaN compacta com proteção contra sobrecarga',79.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(28,'Power Bank 20000mAh','Carregamento rápido bidirecional com visor digital LED',135.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(29,'Cabo HDMI 2.1 Ultra High Speed','Suporte a 8K 60Hz e 4K 120Hz com 2 metros',49.90,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(30,'Cabo de Rede Cat6 10 Metros','Cabo blindado RJ45 para conexões Gigabit estáveis',35.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(31,'Adaptador Wi-Fi USB Dual Band','Receptor AC1300 para computadores de mesa e notebooks',75.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(32,'Adaptador Bluetooth 5.3 USB','Plug and play de longo alcance para periféricos sem fio',42.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(33,'Impressora Multifuncional Tanque','Impressão, cópia e digitalização com Wi-Fi Direct',980.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(34,'Scanner Portátil de Mesa','Digitalização frente e verso rápida em PDF e JPEG',720.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(35,'Nobreak 1200VA Bivolt','6 tomadas protegidas com estabilizador interno',590.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(36,'Filtro de Linha 8 Tomadas','Proteção contra surtos de tensão com disjuntor rearmável',68.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(37,'Water Cooler 240mm ARGB','Radiador duplo em alumínio compatível com Intel e AMD',380.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(38,'Pasta Térmica Alta Condutividade','Seringa de 4g à base de prata para processadores e GPUs',39.90,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(39,'Placa-Mãe B550M DDR4','Suporte a NVMe PCIe 4.0 e dissipador nos VRMs',690.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(40,'Processador Octa-Core 3.8GHz','16 threads, 32MB de cache para jogos e produtividade',1290.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(41,'Controle Gamer Sem Fio','Vibração dupla e compatibilidade com PC e dispositivos móveis',165.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(42,'Mesa Digitalizadora Gráfica','Caneta sem bateria com 8192 níveis de sensibilidade',260.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(43,'Leitor de Código de Barras Laser','Conexão USB automática para automação comercial',120.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(44,'Câmera de Segurança Wi-Fi 360','Visão noturna infravermelha e áudio bidirecional',170.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(45,'Lâmpada Inteligente Smart LED','Controle por aplicativo e voz, RGB com 16 milhões de cores',55.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(46,'Fechadura Digital Biométrica','Abertura por impressão digital, senha numérica e cartão',640.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(47,'Projetor Portátil Full HD','Lâmpada LED de 5000 lumens com entradas HDMI e USB',820.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(48,'Tela de Projeção Retrátil 100 Pol','Formato 16:9 widescreen com pintura eletrostática branca',410.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(49,'Kit Limpeza para Eletrônicos','Spray limpa telas, pincel antiestático e flanela de microfibra',29.90,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12'),
(50,'Mochila Executiva para Notebook','Tecido impermeável com saída USB externa para até 17 polegadas',185.00,NULL,'2026-10-25 19:30:12','2026-10-25 19:30:12');

select * from produtos;


DROP USER 'publico'@'localhost';

CREATE USER IF NOT EXISTS 'publico'@'localhost' IDENTIFIED BY 'publico';

GRANT SELECT ON loja_online.produtos TO 'publico'@'localhost';


CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_criado` timestamp NULL DEFAULT current_timestamp(),
  `data_editado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `usuarios` VALUES
(1,'cliente','a60b85d409a01d46023f90741e01b79543a3cb1ba048eaefbe5d7a63638043bf','2026-10-25 19:30:12','2026-10-25 19:30:12');

drop user 'cliente'@'localhost';

CREATE USER IF NOT EXISTS 'cliente'@'localhost' IDENTIFIED BY 'cliente';
GRANT SELECT ON loja_online.usuarios TO 'cliente'@'localhost';
grant select, update (senha) on loja_online.usuarios to 'cliente'@'localhost';


GRANT SELECT ON loja_online.usuarios TO 'publico'@'localhost';