package lab.java.basic;

public class InterfaceTest {

	public static void main(String[] args) {
		//Animal animal = new Animal();
		System.out.println(Animal.EYES);//static�Ӽ����� ����
		Animal animal = new Cat(); //������ ��ü
		animal.move();
		((Cat)animal).eat();
		
	}

}