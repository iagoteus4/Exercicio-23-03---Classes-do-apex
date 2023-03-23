public class funcionario {
    public Pessoa funcionario;
    public String matricula;
    public String cargo;
    public Decimal salario;
    
    public Funcionario(String nome,String cpf,String matricula){
        this.funcionario.nome = nome;
        this.funcionario.cpf = cpf;
        this.matricula = matricula;
    }
    
    public Funcionario(String nome,String rg,String cpf,String telefone,String cargo,Decimal salario){
        this.funcionario.nome = nome;
        this.funcionario.rg = rg;
        this.funcionario.cpf = cpf;
        this.funcionario.telefone = telefone;
        this.cargo = cargo;
        this.salario = salario;
    }
    
    //Exibir os dados minimos
    public void exibir_dados_basicos(){
        System.debug('Nome: ' + this.funcionario.nome + ' | Cpf: ' + this.funcionario.cpf + ' | Matricula: ' + this.matricula);
    }
}