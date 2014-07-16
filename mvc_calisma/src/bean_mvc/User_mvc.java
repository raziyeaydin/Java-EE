package bean_mvc;

public class User_mvc {

	private int firstName;
	private String lastName;
	
	public User_mvc(){
		
	}
	
	public User_mvc(int firstName, String lastName){
		this.firstName=firstName;
		this.lastName=lastName;
	}
	
	public int getFirstName(){
		return(firstName);
	}
	
	public void setFirstName(int fN){
		this.firstName = fN;
	}
	
	public String getLastName(){
		return(lastName);
	}
	
	public void setLastName(String lN){
		this.lastName = lN;
	}
}
