public class Canetajava
{
    String modelo;
    String cor;
    float ponta;
    int carga;
    boolean tampada;


    void rabiscar ()
    {
        if (this.tampada == true){
            System.out.println("Erro! A caneta está tampada!");
        } else {
            System.out.println("Estou rabiscando!");
        }

    }

    void tampar  ()
    {

        this.tampada = true;

    }

    void destampar  ()
    {

        this.tampada = false;

    }

    void estado ()
    {
        System.out.println("Esta caneta é do modelo: " + this.modelo);
        System.out.println("Esta caneta tem a cor: " + this.cor);
        System.out.println("Esta caneta tem a ponta: " + this.ponta);
        System.out.println("Esta caneta esta com a carga em: " + this.carga);
        System.out.println("Esta caneta esta tampada?: " + this.tampada);


    }

    void desenhar ()
    {
        if (this.tampada == true){
            System.out.println("Erro! A caneta está tampada!");
        } else {
            System.out.println("Estou desenhando!");
        }

    }

    void pintar ()
    {
        if (this.tampada == true){
            System.out.println("Erro! A caneta está tampada!");
        } else {
            System.out.println("Estou pintando!");
        }

    }

}


