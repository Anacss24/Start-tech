import java.util.Scanner;

public class QuintaClasse
{
    public static void main(String[] args)
    {
        //usuario entre com 4 notas e o sistema retorna a media

        Scanner notas = new Scanner(System.in);

        System.out.println("Descubra a sua média: ");
        System.out.println("Digite a sua primeira nota: ");
        float nota1 = notas.nextFloat();
        System.out.println("Digite a sua segunda nota: ");
        float nota2 = notas.nextFloat();
        System.out.println("Digite a sua terceira nota: ");
        float nota3 = notas.nextFloat();
        System.out.println("Digite a sua quarta nota: ");
        float nota4 = notas.nextFloat();

        double media = (nota1 + nota2 + nota3 + nota4) / 4;

        if (media >= 6) {
            System.out.println("A sua média é de: " + media + "\n Você foi APROVADO!");
        } else if (media >= 5) {
            System.out.println("A sua média é de: " + media + "\n Você está de RECUPERAÇÃO!");
        } else {
            System.out.println("A sua média é de: " + media + "\n Você foi REPROVADO!");
        }


    }

}
