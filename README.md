# 🌸 AniWorld – Gerenciamento de Animes e Estúdios

## 📖 Sobre o Projeto

O **AniWorld** é uma aplicação web dinâmica voltada para o catalogamento e gerenciamento de **estúdios de animação e seus respectivos animes**. 

O sistema integra páginas frontend a um banco de dados relacional em MySQL por meio de PHP, implementando controle de acesso com sessões, operações completas de CRUD (Create, Read, Update, Delete), upload de imagens (logotipos e capas) e filtros dinâmicos de pesquisa.

---

## 👥 Equipe de Desenvolvimento

| Integrante | Função / Responsabilidade | GitHub |
| :--- | :--- | :--- |
| **Danielli Gonsalves Martins** | **DEV** | [Danielli](https://github.com/daniellimartins) |
| **Eduardo Farias Moreira** | **S.M.** | [Eduardo](https://github.com/EduFM202) |
| **Júlia Vitória Silva Sanches** | **DEV** | [Júlia](https://github.com/JuVitori) |
| **Samilly Matos Barranova** | **DEV** | [Samilly](https://github.com/matossamilly) |
| **Thiago Marcelino Vieira** | **P.O.** | [Thiago](https://github.com/ThiagoMarcelinoVieira) |


---

## ✨ Funcionalidades Implementadas

- **🔐 Autenticação e Controle de Sessão:**
  - Cadastro de usuários com senhas criptografadas (`password_hash`).
  - Login seguro e verificação de sessão (`$_SESSION`) para proteção de rotas administrativas.
  - Logout com destruição segura da sessão.
- **🏢 Gerenciamento de Estúdios (CRUD):**
  - Cadastro, visualização, edição e exclusão de estúdios de animação (ex: MAPPA, Wit Studio, Kyoto Animation, Madhouse).
  - Upload e exibição do logotipo/banner de cada estúdio.
- **🎬 Gerenciamento de Animes (CRUD):**
  - Cadastro, visualização, edição e exclusão de animes vinculados a um estúdio responsável (chave estrangeira).
  - Upload e exibição da imagem de capa/pôster de cada anime.
- **🔍 Busca e Filtros Dinâmicos:**
  - Pesquisa por título do anime ou nome do estúdio.
  - Filtragem dinâmica de animes por estúdio, gênero ou ano de lançamento.
- **🛡️ Segurança e Boas Práticas:**
  - Prevenção contra SQL Injection através de consultas preparadas (**PDO / Prepared Statements**).
  - Tratamento e sanitização de dados recebidos via formulário (`filter_input`, `htmlspecialchars`).
  - Validação de tipo e tamanho de arquivo no upload de imagens.

---

## 🛠️ Tecnologias Utilizadas

* **Frontend:** HTML5, CSS3.
* **Backend:** PHP
* **Banco de Dados:** MySQL

---

## 🗄️ Estrutura do Banco de Dados

O banco de dados (`sistema_animes`) segue o modelo relacional **1:N** (um estúdio pode produzir vários animes):

1. **`usuarios`**: Controla o acesso ao painel (`id`, `nome`, `senha`).
2. **`estudios`**: Armazena os estúdios de animação (`id`, `nome`, `genero`, `ano_criacao`, `imagem`).
3. **`animes`**: Armazena as obras cadastradas e sua relação com o estúdio (`id`, `estudio`, `titulo`, `ano_lancamento`, `genero`, `youtube_link`, `sinopse`, `imagem_capa`).

*(O arquivo `.sql` com toda a estrutura e dados iniciais de exemplo encontra-se na pasta `/database` deste repositório).*

---

## 📂 Organização dos Arquivos

```Sistema Animes
/
├── assets/                 # imagens
├── BD_animes/              # Script SQL para importação das tabelas e php
├── css/
|    ├── pages/             # Arquivos contendo o CSS de cada página
|    └── global.css         # Arquivo CSS base que será usado em todas as páginas
├── cadastro_anime.html
├── cadastro_estudio.html
├── index.html
├── listagem_animes.html
└── login.html
