**Como rodar o projeto**

**Pré-requisitos:**

 - PHP 8.0 ou superior instalado.

 - Banco de dados MySQL.

**Passo a passo:**

 - Banco de Dados:

 1. Crie um banco de dados vazio.

 2. Importe o arquivo sql/gerenciador-tarefas.sql para criar as tabelas necessárias.

  - Configuração:

  1. Vá até a pasta src/Config/.

  2. Duplique o arquivo con_test.php.

  3. Renomeie a cópia para con.php.

  4. Abra este novo arquivo e coloque suas credenciais (usuário e senha do banco).

   - Executar:

   1. Abra o terminal na pasta do projeto.

   2. Rode o comando:
```php -S localhost:8080 -t public```

   3. Acesse no navegador: ```http://localhost:8080```