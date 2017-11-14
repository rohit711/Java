
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;


public class BeanFactory {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		org.springframework.beans.factory.BeanFactory factory=new XmlBeanFactory(new FileSystemResource("hello.xml"));
		Perform inst= (Perform) factory.getBean("rohit");
		inst.performer();
		

	}

}
