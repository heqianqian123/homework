package hqq;

public class Danci 
{
	String danci;
	String shiyi;
	int cuowu;
	int chuxian;
	
	Danci(String danci,String shiyi,int cuowu,int chuxian)
	{
		this.danci=danci;
		this.shiyi=shiyi;
		this.cuowu=cuowu;
		this.chuxian=chuxian;
	}
	public String getdanci()
	{
		return danci;
	}
	public String getshiyi()
	{
		return shiyi;
	}
	public int getcuowu()
	{
		return cuowu;
	}
	public int getchuxian()
	{
		return chuxian;
	}
}
