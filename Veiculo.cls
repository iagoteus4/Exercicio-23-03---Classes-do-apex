public class Veiculo {
	private String placa;
    private String marca;
    public String tipo;
    public String modelo{
        get{
            return modelo;
        }
        set{
            this.modelo = value;
        }
    }
    public Integer anoFabricacao;
    public Pessoa proprietarioAtual = new Pessoa();
    public Pessoa proprietarioAnterior = new Pessoa();
    public Boolean novo;
    public Decimal valorCompra;
    // Outra forma de Encapsular
    public Decimal valorVenda{
        get{
            return valorVenda;
        }
        set{
            if(value > 0){
            	this.valorVenda = value;    
            }
        }
    }    
    public String getPlaca(){
        return placa;
    }
    public void setPlaca(String placa){
        if(placa.length() >= 8){
            this.placa = placa;
        }else{
            System.debug('Placa inválida.');
        }
        
    }
    public void setPlaca(String letras,String numeros){
       if(letras.length() == 3 && numeros.length() == 4){
           this.placa = letras + '-' + numeros;
       }
    }
    
    public String getMarca(){
        return marca;
    }
    public void setMarca(String marca){
        this.marca = marca;
    }
    {
    	valorVenda = 0;
       // placa = 'hvx-3435';
        
    }
    public Veiculo(){}
    
    public Veiculo(String marca,String modelo,String placa){
        this.marca = marca;
        this.modelo = modelo;
        this.placa = placa;
    }
    
    public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra){
        this.setPlaca(placa);
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
//        	this.proprietarioAtual = 'A loja';
//            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }
    public void desvalorizacao(){
       valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
    }
    
    //Exibir os dados minimos
    public void exibir_dados_basicos(){
        System.debug('Marca: ' + this.marca + ' | Modelo: ' + this.modelo + ' | Placa: ' + placa);
    }
    
    public void exibirDadosProprietarios(){
        System.debug('Dados do propreitário atual:');
        proprietarioAtual.exibirDados();
        System.debug('Dados do proprietário anterior: ');
        proprietarioAnterior.exibirDados();
    }
}