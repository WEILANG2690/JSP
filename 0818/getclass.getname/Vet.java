 package ch02;

public class Vet {
//    void vaccinate(Cat c){
//    	c.cry();
//    }
//    void vaccinate(Dog c){
//    	c.cry();
//    }
	  void vaccinate(Mammal m){
	    	m.cry();
	    	
	    	if (m instanceof Dog){
	    		Dog d = (Dog)m;
	    		d.bark();	
	    	} else if (m instanceof Cat){
	    		Cat c = (Cat)m;
	    		c.meao();	
	    	}  
	    	
	    	
	  }
}
