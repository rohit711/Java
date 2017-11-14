
/**
 * @author Rohit
 *
 */
public class greetingServiceImpl implements greetingService {
	
	public String greeting;
	public greetingServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	public greetingServiceImpl(String data){
		this.greeting=data;
	}
	
	public void setGreeting(String greeting) {
		this.greeting = greeting;
	}
	
	@Override
	public void sayGreeting() {
		System.out.println(greeting);
		
	}

	
	

}
