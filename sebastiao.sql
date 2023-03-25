-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 10-Mar-2023 às 00:21
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sebastiao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `data_ultimo_acesso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`id`, `nome`, `login`, `senha`, `data_ultimo_acesso`) VALUES
(1, 'Sebastião Alves', 'sebastiao', 'Alves', ''),
(2, 'Ana Rita Pereira', 'ana', '1234', '22:54:12 - 09/03/2023');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  `texto_grande` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `imagem`, `texto_grande`) VALUES
(1, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/Imagens_autor/FOTO-editada.jpg', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!&nbsp;<br><br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem.Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus.&nbsp;<br><br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!&nbsp;<br><br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!&nbsp;<br><br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `observacao` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `texto` longtext NOT NULL,
  `imagem_desktop` varchar(5000) NOT NULL,
  `imagem_mobile` varchar(5000) NOT NULL,
  `saber_mais` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carousel`
--

INSERT INTO `carousel` (`id`, `observacao`, `titulo`, `texto`, `imagem_desktop`, `imagem_mobile`, `saber_mais`) VALUES
(1, '', 'SENHORA DO AMOR E DA GUERRA', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_desktop/cabecalho1.jpg', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_mobile/cabecalho1_230225103714.jpg', 'livro.php?livro=1'),
(2, '', 'O CARACOL ESTRÁBICO', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_desktop/cabecalho2.jpg', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_mobile/cabecalho2_230225103714.jpg', 'livro.php?livro=3'),
(3, '', 'O COLECIONADOR DE AMNÉSIAS', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_desktop/cabecalho3.jpg', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_mobile/cabecalho3_230225103714.jpg', 'livro.php?livro=4'),
(4, '', 'O VELHO QUE PENSAVA QUE FUGIA', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum nemo necessitatibus dicta accusantium tenetur id in reiciendis omnis soluta blanditiis, inventore eos! Repellendus, nostrum deserunt! A quisquam tempore quidem quas.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_desktop/cabecalho4.jpg', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/cabecalho_mobile/cabecalho4_230225103713.jpg', 'livro.php?livro=2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `morada` varchar(200) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `horario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contactos`
--

INSERT INTO `contactos` (`id`, `telefone`, `morada`, `mail`, `horario`) VALUES
(1, '+351 123 456 789', 'Lorem ipsum dolor sit amet, 12 1234-543 Lorem', 'lorem@lorem.pt', 'De Segunda a Sexta das 09:00h às 18:00h');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `imagem_autor` varchar(5000) NOT NULL,
  `ultimos_livros` longtext NOT NULL,
  `destaque_1` varchar(11) NOT NULL,
  `destaque_2` varchar(11) NOT NULL,
  `destaque_3` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `home`
--

INSERT INTO `home` (`id`, `imagem_autor`, `ultimos_livros`, `destaque_1`, `destaque_2`, `destaque_3`) VALUES
(1, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/Imagens_autor/FOTO-editada.jpg', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!&nbsp;<br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quae inventore unde, dolorem vero doloremque vitae impedit quisquam officia nam neque quaerat culpa ullam. Sapiente eveniet quos quibusdam quae, eius enim in temporibus. Assumenda quibusdam autem temporibus unde nulla harum rerum quasi porro delectus iusto blanditiis beatae quaerat a doloribus odio molestiae eius quod, laborum adipisci dolorem. Explicabo similique id incidunt asperiores ea deserunt nostrum saepe dolore vitae nihil dolores, sequi officiis vel perferendis consequuntur voluptatem quasi ratione, mollitia perspiciatis amet veritatis!</p>', '1', '4', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imprensa`
--

CREATE TABLE `imprensa` (
  `id` int(11) NOT NULL,
  `imagem` varchar(1000) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `texto` longtext NOT NULL,
  `data_pub` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `imprensa`
--

INSERT INTO `imprensa` (`id`, `imagem`, `titulo`, `texto`, `data_pub`) VALUES
(1, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/imagens_imprensa/conteudo-imprensa1.jpg', 'LANÇAMENTO | SENHORA DO AMOR E DA GUERRA', '', 'PUBLICADO A 17 JUNHO 2020'),
(2, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/imagens_imprensa/conteudo-imprensa2.jpg', 'LANÇAMENTO | O VELHO QUE PENSAVA QUE FUGIA', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br><br>Noticia de Técnico Lisboa&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic</p>', 'PUBLICADO A 6 DEZEMBRO 2017'),
(16, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/imagens_imprensa/conteudo-imprensa2.jpg', 'LANÇAMENTO | O VELHO QUE PENSAVA QUE FUGIA', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br><br>Noticia de Técnico Lisboa&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic</p>', 'PUBLICADO A 6 DEZEMBRO 2017'),
(17, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/imagens_imprensa/conteudo-imprensa2.jpg', 'LANÇAMENTO | O VELHO QUE PENSAVA QUE FUGIA', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br><br>Noticia de Técnico Lisboa&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic</p>', 'PUBLICADO A 6 DEZEMBRO 2017'),
(18, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/imagens_imprensa/conteudo-imprensa1.jpg', 'LANÇAMENTO | SENHORA DO AMOR E DA GUERRA', '', 'PUBLICADO A 17 JUNHO 2020'),
(19, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/imagens_imprensa/conteudo-imprensa2.jpg', 'LANÇAMENTO | O VELHO QUE PENSAVA QUE FUGIA', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic tempora reprehenderit! Eum sunt ab a quod reprehenderit rem molestias nam, maxime dicta illo in?&nbsp;<br><br>Noticia de Técnico Lisboa&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate tenetur nam necessitatibus quos molestias hic</p>', 'PUBLICADO A 6 DEZEMBRO 2017'),
(20, 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/imagens_imprensa/conteudo-imprensa1.jpg', 'LANÇAMENTO | SENHORA DO AMOR E DA GUERRA', '', 'PUBLICADO A 17 JUNHO 2020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `observacao` varchar(100) NOT NULL,
  `texto` longtext NOT NULL,
  `imagem` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `observacao`, `texto`, `imagem`) VALUES
(1, 'SENHORA DO AMOR E DA GUERRA', 'Novidade', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus.<br>Quisquam ea explicabo tempora nisi ab excepturi. Ad at sed officiis aperiam soluta mollitia est reiciendis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis placeat, harum saepe officiis esse debitis error nulla consectetur? Obcaecati nulla ullam, corrupti vel dicta ea error eos aut debitis ducimus.&nbsp;<br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque.&nbsp;<br>Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/livros/livro-conteudo.jpg'),
(2, 'O CARACOL ESTRÁBICO', '', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus. Quisquam ea explicabo tempora nisi ab excepturi. Ad at sed officiis aperiam soluta mollitia est reiciendis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis placeat, harum saepe officiis esse debitis error nulla consectetur? Obcaecati nulla ullam, corrupti vel dicta ea error eos aut debitis ducimus. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/livros/livro-conteudo3.jpg'),
(3, 'COLECCIONADOR DE AMNÉSIAS', 'Em Promoção', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus. Quisquam ea explicabo tempora nisi ab excepturi. Ad at sed officiis aperiam soluta mollitia est reiciendis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis placeat, harum saepe officiis esse debitis error nulla consectetur? Obcaecati nulla ullam, corrupti vel dicta ea error eos aut debitis ducimus. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/livros/livro-conteudo2.jpg'),
(4, 'O VELHO QUE PENSAVA QUE FUGIA', 'Mais Vendido', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus. Quisquam ea explicabo tempora nisi ab excepturi. Ad at sed officiis aperiam soluta mollitia est reiciendis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis placeat, harum saepe officiis esse debitis error nulla consectetur? Obcaecati nulla ullam, corrupti vel dicta ea error eos aut debitis ducimus. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/livros/livro-conteudo4.jpg'),
(5, 'O VELHO QUE PENSAVA QUE FUGIA', '', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus. Quisquam ea explicabo tempora nisi ab excepturi. Ad at sed officiis aperiam soluta mollitia est reiciendis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis placeat, harum saepe officiis esse debitis error nulla consectetur? Obcaecati nulla ullam, corrupti vel dicta ea error eos aut debitis ducimus. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugiat in atque vero voluptatem obcaecati ab, voluptas et! Quas eos nulla tempore sequi dignissimos, voluptatum porro dicta fugiat quasi aperiam neque. Alias ea ratione eveniet, cum qui veniam illo quae consequatur ducimus quasi numquam similique exercitationem nihil voluptas eum. Nihil sint provident dolor ullam? Dolor porro aut reiciendis amet id consectetur optio veniam magni quam magnam earum quaerat natus.</p>', 'http://localhost/Codemaster/Projecto_Final/Projecto_final_PHP/uploads/livros/livro-conteudo4.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `redessociais`
--

CREATE TABLE `redessociais` (
  `id` int(11) NOT NULL,
  `insta` varchar(500) NOT NULL,
  `face` varchar(500) NOT NULL,
  `linkd` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `redessociais`
--

INSERT INTO `redessociais` (`id`, `insta`, `face`, `linkd`) VALUES
(1, 'https://www.instagram.com', 'https://pt-pt.facebook.com', 'https://pt.linkedin.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imprensa`
--
ALTER TABLE `imprensa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `redessociais`
--
ALTER TABLE `redessociais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `imprensa`
--
ALTER TABLE `imprensa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `redessociais`
--
ALTER TABLE `redessociais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
