import java.util.Scanner;

public class Tabuada {
    public static void main(String[] args) {

        Scanner tabuada = new Scanner(System.in);

        System.out.println("Digite um número: ");
        int numero = tabuada.nextInt();

        System.out.println("Tabuada do número: " + numero);
        System.out.println(numero + " X 1 = " + numero);
        System.out.println(numero + " X 2 = " + numero * 2);
        System.out.println(numero + " X 3 = " + numero * 3);
        System.out.println(numero + " X 4 = " + numero * 4);
        System.out.println(numero + " X 5 = " + numero * 5);
        System.out.println(numero + " X 6 = " + numero * 6);
        System.out.println(numero + " X 7 = " + numero * 7);
        System.out.println(numero + " X 8 = " + numero * 8);
        System.out.println(numero + " X 9 = " + numero * 9);
        System.out.println(numero + " X 10 = " + numero * 10);


    }
}
