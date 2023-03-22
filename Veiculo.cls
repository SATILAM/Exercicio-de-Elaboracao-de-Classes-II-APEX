public class Veiculo {
    public String placa;
    public String marca;
    public String tipo;
    public String modelo;
    public Integer anoFabricacao;
    public String proprietarioAtual;
    public String proprietarioAnterior;
    public Boolean novo;
    public Double valorCompra;
    public Double valorVenda;

public void exibirDados(){
      System.debug('Placa: ' + placa);
      System.debug('Marca: ' + marca);
      System.debug('Modelo: ' + modelo);
      System.debug('Ano Fabricação: ' + anoFabricacao);
      System.debug('Proprietario Atual: ' + proprietarioAtual);
      System.debug('Proprietario Anterior: ' + proprietarioAnterior);
      System.debug('Novo: ' + novo);
      System.debug('Valor Compra: ' + valorCompra);
      System.debug('Valor Venda: ' + valorVenda);
}

// Bloco de inicialização
 {
    novo = false;
    valorCompra = 0.0;
    valorVenda = 0.0;
 }

// Criando construtores
public Veiculo() {
    placa = ',';
    marca = ',';
    tipo = ',';
    modelo = ',';
    anoFabricacao = 0;
    proprietarioAtual = ',';
    proprietarioAnterior = ',';
    novo = false;
    valorCompra = 0.0;
    valorVenda = 0.0;
}

public Veiculo(String placa, String marca, String tipo, String modelo, Integer anoFabricacao, String proprietarioAtual, String proprietarioAnterior, Boolean novo, Double valorCompra, Double valorVenda) {
    this.placa = placa;
    this.marca = marca;
    this.tipo = tipo;
    this.modelo = modelo;
    this.anoFabricacao = anoFabricacao;
    this.proprietarioAtual = proprietarioAtual;
    this.proprietarioAnterior = proprietarioAnterior;
    this.novo = novo;
    this.valorCompra = valorCompra;
    this.valorVenda = valorVenda;
}

public Veiculo(String placa, Integer anoFabricacao, Double valorCompra) {
    this.placa = placa;
    this.anoFabricacao = anoFabricacao;
    this.valorCompra = valorCompra;
    if (Date.today().year() == anoFabricacao) {
        novo = true;
        proprietarioAtual = 'A loja';
        proprietarioAnterior = 'A loja';
        valorVenda = valorCompra + 1000;
    } else {
        novo = false;
        desvalorizacao();
    }
}

public void desvalorizacao() {
    valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
}
}