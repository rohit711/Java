package online.hibernate;

public class Property 
{
	int PlotNo,area,cost;
	public int getPlotNo() {
		return PlotNo;
	}
	public void setPlotNo(int plotNo) {
		PlotNo = plotNo;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getApartmentName() {
		return apartmentName;
	}
	public void setApartmentName(String apartmentName) {
		this.apartmentName = apartmentName;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	String apartmentName,locality;
	

}
