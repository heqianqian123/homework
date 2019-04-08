import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;

public class db 
{
/*
	 public static void main(String[] args) throws SQLException 
	 
	{
		testQuery();//查询
		 testDelete();//删除
		testQuery();//删除后查询
		  testInsert();//插入
		testQuery();//插入后查询
		testUpdate();//更新
		testQuery();//更新后查询	     
	}
	*/
	public static int testQuery2(String SQL,String name,String code) throws SQLException
	{
		//String SQL = "SELECT UserID, UserName FROM jzw_User ";
		ResultSet rs=SqlHelper.executeQuery(SQL);
		 while (rs.next()) 
		 {
			 if (rs.getString("userid").equals(name)&&rs.getString("code").equals(code))
			 {
				 System.out.println("find");
				 return 1;
			 }
	      }
		 System.out.println("notfind");
		 return 0;
	}
	
	public static String testQuery3(String SQL,String danci ) throws SQLException
	{
		//String SQL = "SELECT UserID, UserName FROM jzw_User ";
		ResultSet rs=SqlHelper.executeQuery(SQL);
		int n=-1,m=-1;
		NumberFormat nf=NumberFormat.getPercentInstance();
	    nf.setMaximumFractionDigits(1);
		while (rs.next()) 
		 {
			 if (rs.getString("danci").equals(danci))
			 {
				 n=rs.getInt("cuowu");
				 m=rs.getInt("chuxian");
				 double d=n*1.0/m;
				 Double a = new Double(d);
				 
				 System.out.println("find");
				 
				 d=(double)Math.round(d*100)/100;
				 
				 if (a.compareTo(0.3333)<0)
			    		return rs.getString("shiyi")+"\r\n"+"简单\r\n"+"错误率："+nf.format(d)+"\r\n";
			     else if (a.compareTo(0.6666)<0)
			    		return rs.getString("shiyi")+"\r\n"+"中等\r\n"+"错误率："+nf.format(d)+"\r\n";
			     else
			    		return rs.getString("shiyi")+"\r\n"+"困难\r\n"+"错误率："+nf.format(d)+"\r\n";
				
			 }
	      }
		 System.out.println("notfind");
		 return "无此单词";
	}
	
	public static Danci[] testQuery4(String SQL) throws SQLException
	{
		//String SQL = "SELECT UserID, UserName FROM jzw_User ";
		Danci danci[]=new Danci[5];
		int i=0;
		ResultSet rs=SqlHelper.executeQuery(SQL);
		 while (rs.next()) 
		 {
			 danci[i]=new Danci(rs.getString("danci"),
					 rs.getString("shiyi"),rs.getInt("cuowu"),rs.getInt("chuxian"));
			 i++;
	      }
		 
		 return danci;
	}
	
	public static int testInsert(String SQL)
	{
		 //String SQL = "  insert into jzw_User(UserID,UserName,Psw)values('7','测试','7') ";
		 if(SqlHelper.executeUpdate(SQL))
		 {
			 System.out.println("插入成功 ");
			 return 1;
		 }else
		 {
			 System.out.println("插入失败 ");
			 return 0;
		 }
	}
	public static void testUpdate(String SQL)
	{
		 //String  SQL = "  update  jzw_User set UserName='测试修改'  where UserID='7'";
		 if(SqlHelper.executeUpdate(SQL))
		 {
			 System.out.println("更新成功 ");
		 }else
		 {
			 System.out.println("更新失败 ");
		 }
	}
	public static void testDelete()
	{
		String SQL = "  delete from  jzw_User   where UserID='7'";
		 if(SqlHelper.executeUpdate(SQL))
		 {
			 System.out.println("删除成功 ");
		 }else
		 {
			 System.out.println("删除失败 ");
		 }
	}
}
