# **Birthday CRUD Application**

Este projeto é uma aplicação **CRUD** (**Create**, **Read**, **Update**, **Delete**) para gerenciar aniversários. Os usuários podem cadastrar, listar, editar e excluir aniversariantes, além de proteger as rotas com autenticação **JWT**. A aplicação utiliza as tecnologias **Node.js** com **TypeScript** no backend, **Angular** no frontend e **MySQL** como banco de dados, com **Sequelize** para gerenciar a comunicação com o banco de dados.

A aplicação é containerizada utilizando **Docker** e pode ser facilmente deployada no **Render**.

## **Funcionalidades**
- **Cadastro de Aniversariantes**: Adicione aniversariantes com nome, data de nascimento e outras informações.
- **Visualização de Aniversariantes**: Liste todos os aniversariantes cadastrados no sistema.
- **Edição e Exclusão**: Edite ou exclua aniversariantes conforme necessário.
- **Autenticação JWT**: Protege rotas e garante que apenas usuários autenticados possam realizar operações de CRUD.

## **Tecnologias Utilizadas**

### **Backend**:
- **Node.js** com **TypeScript**: Para o servidor e a lógica da aplicação.
- **Sequelize**: ORM para comunicação com o banco de dados **MySQL**.
- **MySQL**: Banco de dados relacional para armazenar os dados dos aniversariantes.
- **JWT**: Autenticação de usuários com **JSON Web Tokens** para proteger rotas sensíveis.

### **Frontend**:
- **Angular**: Framework para desenvolver a interface de usuário interativa e dinâmica.

### **Docker**:
A aplicação é containerizada usando **Docker** para facilitar o deploy em ambientes de produção como o **Render**.
