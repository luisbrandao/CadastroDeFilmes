# Cadastro de filmes

Sistema para cadastro de filmes assistidos.
 
## Historia

Sistema desenvolvido para o meu pai, afim de substituir o documento de Access que ele utilizava para o mesmo fim.

## Documentação

Para instalar o sistema, inicialmente é necessário instalar a linguagem Ruby e o framework Rails. Utilizaremos para esta tarefa a ferramenta RVM, que ajuda no gerenciamento de versões e nas instalações. Em um shell execute o seguinte comando:

```
\curl -sSL https://get.rvm.io | bash -s stable --rails
```

O próprio RVM se preocupa em instalar a versão estável mais recente do ruby e a flag --rails informa que desejamos instalar o framework Rails na sequência. O fonte podem ser baixados do github utilizando o clone do git:

```
git clone https://github.com/techmago/CadastroDeFilmes
```

Depois de baixado, precisamos encontrar as dependências de gemas do sistema. Elas podem ser vistas num arquivo chamado Gemfile que fica dentro do diretório raiz da aplicação. Para baixá-las utilizamos o seguinte comando:

```
bundle install
```

Execute todas as migrações:

```
rake db:create db:migrate db:seed
```

Inicialize o servidor em modo de desenvolvimento:

```
rails server
```

Agora você pode usar o sistema em modo desenvolvimento através de qualquer navegador acessando o endereço:

```
http://localhost:3000
```



