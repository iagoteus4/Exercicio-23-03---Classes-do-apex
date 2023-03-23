public class Concessionaria {
	List<Funcionario> funcionarios = new List<Funcionario>();
    List<Veiculo> veiculos = new List<Veiculo>();
    
    //Efetuando registros apena com o minimo
    public void registrar_funcionario(String nome,String cpf,String matricula){
        funcionarios.add(new Funcionario(nome,cpf,matricula));
    }
    //Efetuando registros apena com o minimo
    public void registrar_veiculo(String marca,String modelo,String placa){
        veiculos.add(new Veiculo(marca,modelo,placa));
    }
    
    public void exibir_funcionarios(){
        for(Funcionario f: funcionarios){
            f.exibir_dados_basicos();
        }
    }
    
    public void exibir_veiculos(){
        for(Veiculo v: veiculos){
            v.exibir_dados_basicos();
        }
    }
}