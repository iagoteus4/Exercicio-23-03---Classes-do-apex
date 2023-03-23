public class Pessoa {
	public String nome;
    public String rg;
    public String cpf;
    public String endereco;
    public String telefone;
    
    public void exibirDados(){
        System.debug('Nome: ' + nome);
        System.debug('Rg: ' + rg);
        System.debug('CPF: ' + cpf);
        System.debug('Endereco: ' + endereco);
        System.debug('Telefone: ' + telefone);
    }
}