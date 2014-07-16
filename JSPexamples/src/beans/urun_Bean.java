package beans;

public class urun_Bean {

	private String marka ;
	private double fiyat ;
	private int adet ;
	
	public String getMarka(){
		return(marka);
	}
	
	public int getAdet(){
		return(adet);
	}
	
	public double getFiyat(){
		return(fiyat);
	}
	
	public void setMarka(String yeniMarka){
		this.marka = yeniMarka;
	}
	
	public void setFiyat(double yeniFiyat){
		this.fiyat = yeniFiyat;
	}
	
	public void setAdet(int yeniAdet){
		this.adet = yeniAdet;
	}
	
	public void urun_Bean(){
		
	}
	
	public String ToString()
    {
          String str = "<table border='1'><tr><td>MARKA</td><td>ADET</td></tr>" ;
          str += "<tr><td>" + marka + "</td><td>" + adet + "</td></tr></table>";
          return str;
    }
}
