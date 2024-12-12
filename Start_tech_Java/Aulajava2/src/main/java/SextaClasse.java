import java.util.Scanner;

public class SextaClasse {
    public static void main(String[] args) {
        Scanner dados = new Scanner(System.in);

        System.out.println("Descubra o seu Indice de Massa Corporal");
        System.out.println("Digite o seu peso: ");
        double peso = dados.nextDouble();
        System.out.println("Digite a sua altura: ");
        double altura = dados.nextDouble();

        double imc = peso / (altura * altura);

        if (imc < 18.5) {
            System.out.println( imc + " Abaixo do peso");
        } else if (imc >= 18.5 && imc <= 24.9){
            System.out.println( imc + " Peso Ideal");
        } else if (imc >= 25 && imc <= 29.9){
            System.out.println(imc + " Levemente acima do peso");
        } else if  (imc >= 30 && imc <= 34.9) {
            System.out.println(imc + " Obesidade grau I ");
        }else if (imc >= 35 && imc <= 39.9){
            System.out.println(imc + " Obesidade grau II");
        } else {
            System.out.println(imc + " Obesidade III");
        }



    }
}
