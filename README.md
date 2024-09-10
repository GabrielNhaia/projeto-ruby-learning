<body>
  <h1>CRUD de Artigos em Ruby</h1>

  <p>
    Este projeto é um sistema básico de gerenciamento de artigos criado com Ruby on Rails.
    Ele implementa funcionalidades de CRUD (Create, Read, Update, Delete) para artigos e
    inclui autenticação de usuários, upload e processamento de imagens, busca avançada e
    estilização com Bootstrap.
  </p>

  <h2>Funcionalidades</h2>
  <ul>
    <li><strong>Autenticação de usuários</strong>: Utilizando a gem <a href="https://github.com/heartcombo/devise">Devise</a>, os usuários podem se registrar, fazer login e gerenciar suas contas.</li>
    <li><strong>Upload e processamento de imagens</strong>: Com a gem <a href="https://github.com/janko/image_processing">ImageProcessing</a>, o sistema permite fazer upload e redimensionamento de imagens associadas aos artigos.</li>
    <li><strong>Busca avançada</strong>: A gem <a href="https://github.com/wvanbergen/scoped_search">ScopedSearch</a> oferece uma busca flexível e avançada para localizar artigos com base em diferentes critérios.</li>
    <li><strong>Estilização com Bootstrap</strong>: Todo o frontend foi estilizado utilizando <a href="https://getbootstrap.com/">Bootstrap</a> para oferecer uma interface responsiva e amigável ao usuário.</li>
  </ul>

  <h2>Gems Utilizadas</h2>
  <ol>
    <li><strong>Devise</strong>: Para autenticação de usuários.</li>
    <li><strong>ImageProcessing</strong>: Para upload e redimensionamento de imagens.</li>
    <li><strong>ScopedSearch</strong>: Para busca avançada e filtragem de artigos.</li>
    <li><strong>Bootstrap</strong>: Para estilização e responsividade da interface.</li>
  </ol>

  <h2>Como Executar o Projeto</h2>
  <ol>
    <li>Clone o repositório:
      <pre><code>git clone https://github.com/GabrielNhaia/projeto-ruby-learning
cd seu-repositorio
      </code></pre>
    </li>
    <li>Instale as dependências:
      <pre><code>bundle install</code></pre>
    </li>
    <li>Configure o banco de dados:
      <pre><code>rails db:create
rails db:migrate
      </code></pre>
    </li>
    <li>Inicie o servidor Rails:
      <pre><code>rails server</code></pre>
    </li>
    <li>Acesse o sistema no navegador:
      <pre><code>http://localhost:3000</code></pre>
    </li>
  </ol>

  <h2>Como Usar</h2>
  <ul>
    <li>Faça o cadastro e login para acessar as funcionalidades de criação, edição e exclusão de artigos.</li>
    <li>Utilize o campo de busca para localizar artigos por título ou conteúdo usando a busca avançada.</li>
    <li>Faça upload de imagens nos artigos, que serão processadas automaticamente para melhor exibição.</li>
  </ul>

  <h2>Estrutura do Projeto</h2>
  <ul>
    <li><strong>Modelos</strong>:
      <ul>
        <li><strong>User</strong>: Gerenciado pelo Devise para autenticação.</li>
        <li><strong>Article</strong>: Representa os artigos criados pelos usuários, contendo título, conteúdo e imagem associada.</li>
      </ul>
    </li>
    <li><strong>Controladores</strong>:
      <ul>
        <li><strong>ArticlesController</strong>: Responsável pelas operações de CRUD de artigos.</li>
      </ul>
    </li>
    <li><strong>Views</strong>:
      <ul>
        <li>Utiliza o <code>form_with</code> para criar e editar artigos.</li>
        <li>Estilização feita com Bootstrap para garantir uma interface limpa e responsiva.</li>
      </ul>
    </li>
  </ul>

  <h2>Contribuindo</h2>
  <p>
    Sinta-se à vontade para contribuir com melhorias. Para isso, siga os passos abaixo:
  </p>
  <ol>
    <li>Faça um fork do projeto.</li>
    <li>Crie uma branch para sua feature (<code>git checkout -b minha-feature</code>).</li>
    <li>Faça commit das suas alterações (<code>git commit -m 'Adiciona minha feature'</code>).</li>
    <li>Envie para a branch principal (<code>git push origin minha-feature</code>).</li>
    <li>Abra um Pull Request.</li>
  </ol>

  <h2>Licença</h2>
  <p>
    Este projeto está sob a licença MIT. Consulte o arquivo LICENSE para mais detalhes.
  </p>
</body>
</html>
