public class Cliente {
    public String nome = 'Não definido';
    public String rg = 'Não definido';
    public String cpf = 'Não definido';
    public String telefone = 'Não definido';
    public String email = 'Não definido';
    public String endereco = 'Não definido';

public void exibirDados(){
      System.debug('Nome: ' + nome);
      System.debug('Rg: ' + rg);
      System.debug('CPF: ' + cpf);
      System.debug('Telefone: ' + telefone);
      System.debug('E-mail: ' + email);
      System.debug('Endereco: ' + endereco);
    }

// Bloco de inicialização
    {
        telefone = '';
        email = '';
        endereco = '';
    }

// Construtores
    public Cliente() {}

    public Cliente(String nome, String cpf, String telefone) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
    }

    public Cliente(String nome, String cpf, String telefone, String email, String endereco) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
        this.endereco = endereco;
    }
}