package ch02;

public class MainClass {

	public static void main(String[] args) {
		Object kitty = new Cat();
		Object snoopy = new Dog();
		System.out.println(kitty.getClass().getName());
		System.out.println(snoopy.getClass().getName());
		// "abc.def.ijk.xyz.Mouse"; 
		// "http://tw.yahoo.com/abc/def/kitty.gif"
		// "c:\\windows\\system32\\readme.txt"
		
		String classname =  kitty.getClass().getName();  
		int idx = classname.lastIndexOf(".");
		String name = classname.substring(idx+1);
		System.out.println(name);
		
		
		
//		Vet v = new Vet();
//		v.vaccinate(kitty);
//		v.vaccinate(snoopy);

	}

}
