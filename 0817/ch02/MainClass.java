package ch02;

public class MainClass {

	public static void main(String[] args) {
		Cat kitty = new Cat();
		Dog snoopy = new Dog();
		Vet v = new Vet();
		v.vaccinate(kitty);
		v.vaccinate(snoopy);

	}

}
