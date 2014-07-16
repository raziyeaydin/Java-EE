package bean;

public class hesapla {

	private String ad = "";
	private int vize = 0;
	private int finalNotu = 0;
	private int sonuc = 0;
	
	public void setAd(String ad){
		this.ad = ad ;
	}
	
	public String getAd(){
	return(ad);
	}
	
	public void setVize(int vize){
		this.vize = vize ;
	}
	
	public int getVize(){
		return(vize);
	}
	
	public void setFinal(int finalNotu){
		this.finalNotu = finalNotu;
	}
	
	 
	 
	public int getFinal(){
		return(finalNotu);
	}
	
	public void setSonuc(int sonuc){
		this.sonuc = sonuc;
	}
	
	public int getSonuc(){
		return(sonuc);
	}
	
	public void hesapla(){
		
		sonuc = (int)((vize)*(0.4)+ (finalNotu)*(0.6));
		// return(sonuc);
		
	}
	
	public String toString(){
		String yazi = "Ortalamaniz: ";
		return(yazi+ sonuc);
	}
	
	
	
}
