package bean;

public class finalBeanSorusu {

	private int numara;
	private String ad;
	private String soyad;
	private String dogumTarih;
	private String bolum;
	
	public int getNumara(){
		return(numara);
	}
	
	public void setNumara(int yeniNumara){
		this.numara = yeniNumara;
	}
	
	public String getAd(){
		return(ad);
	}
	
	public void setAd(String yeniAd){
		this.ad = yeniAd;
	}
	
	public String getSoyad(){
		return(soyad);
	}
	
	public void setSoyad(String yeniSoyad){
		this.soyad = yeniSoyad;
	}
	
	public String getDogumTarih(){
		return(dogumTarih);
	}
	
	public void setDogumTarih(String yeniDogumTarih){
		this.dogumTarih = yeniDogumTarih;
	}
	
	public String getBolum(){
		return(bolum);
	}
	
	public void setBolum(String yeniBolum){
		this.bolum = yeniBolum;
	}
	
	public void finalBeanSorusu(){
		
	}
	
	public String toString(){
		String str = "<table border='1'><tr><td>Numara</td><td>"+ numara + "</td></tr>";
		str+= "<tr><td>Ad</td><td>"+ad+"</td></tr>";
		str+="<tr><td>Soyad</td><td>"+soyad+"</td></tr>";
		str+="<tr><td>dogumTarihi</td><td>"+dogumTarih+"</td></tr>";
		str+="<tr><td>bolum</td><td>"+bolum+"</td></tr>";
		return(str);
	}
	
}
