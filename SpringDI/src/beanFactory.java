import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;


public class beanFactory {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		BeanFactory factory=new XmlBeanFactory(new FileSystemResource("hello.xml"));
		greetingService greet= (greetingService) factory.getBean("greetingSer");
		greet.sayGreeting();
	}

}
