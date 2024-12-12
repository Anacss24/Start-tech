import java.util.Scanner;

public class SegundaClasse {
    public static void main(String[] args) {
        Scanner dados = new Scanner(System.in);

        System.out.println("Bem vindo ao nosso sistema ");
        System.out.println("Digite o seu nome: ");
        String nome = dados.nextLine();
        System.out.println("Digite a sua idade ");
        int idade = dados.nextInt();
        System.out.println("Digite o seu peso");
        float peso = dados.nextFloat();
        System.out.println("Digite a sua altura");
        float altura = dados.nextFloat();
        System.out.println("Cliente: " + nome + " tem " + idade + " anos" + " com o peso de " + peso + " e altura de " + altura);

    }
}
