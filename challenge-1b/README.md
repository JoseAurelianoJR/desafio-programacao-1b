## Procedimentos para execução do aplicativo

Obs: Versão do ruby utilizada `2.1.10` (vide .ruby-version )

1. Com a versão correta do ruby instalada, va até a pasta do projeto e execute `gem intstall bundle`
2. Instale as dependências com `bundle install`
3. Crie o banco de dados com `rake db:create` `rake db:migrate`
4. Rode os testes com `rspec`
5. Inicie o servidor para acessar a aplicação com `rails s`
6. Acesse pelo navegador o endereço `http://localhost:3000`
