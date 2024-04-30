package co.edu.poli.ces3.universitas.dao;
import java.util.Random;

public class ArraySupreme {
    private int[] array;
    public ArraySupreme(int lengt) {
        this.array = new int[lengt];
        fillArray();
    }

    private void fillArray() {
        Random random = new Random();
        for (int i = 0; i < array.length; i++) {
            array[i] = random.nextInt(501) + 500;
        }
    }

    public void printOddSum() {
        int suma = 0;
        for (int num : array) {
            if (num % 2 != 0) {
                suma += num;
            }
        }
        System.out.println("La suma de los  impares en el arreglo es: " + suma);
    }

    public static void main(String[] args) {

        ArraySupreme array = new ArraySupreme(250);
        array.printOddSum();
    }
}
