public class Funcionario {
    public String nome;
    public Integer rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    
public void exibirDados(){
      System.debug('Nome: ' + nome);
      System.debug('Rg: ' + rg);
      System.debug('CPF: ' + cpf);
      System.debug('Matricula: ' + matricula);
      System.debug('E-mail: ' + email);
      System.debug('Telefone: ' + telefone);
}

// Bloco de inicialização
    {
        rg = 0;
        matricula = 0;
        email = ',' ;
        telefone = ',' ;
}

// Construtores
public Funcionario() {}

public Funcionario(String nome, Integer matricula) {
        this.nome = nome;
        this.matricula = matricula;
}

public Funcionario(String nome, Integer rg, String cpf, Integer matricula, String email, String telefone) {
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
        this.matricula = matricula;
        this.email = email;
        this.telefone = telefone;
}
}