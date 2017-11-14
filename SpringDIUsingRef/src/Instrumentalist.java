
public class Instrumentalist implements Perform {
	
	public Instrumentalist() {
	
	}

	@Override
	public void performer() {
		
		instrument.play();
	}
	
  private Instrument instrument;

public void setInstrument(Instrument instrument) {
	this.instrument = instrument;
}
  

	
	
	

}
