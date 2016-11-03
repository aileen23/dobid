package iba;

import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlMapConfig {
	/*
	 * sqlMapConfig.xml(sql문을 포함한 XML) 문서를 객체화 시켜주는 클래스.
	 * 
	 * sqlMapClient클래스 : xml에 작성한 sql문을 호출
	 */
	
	 private static final SqlMapClient sqlMap;
	 
	 static{
		 try{  
		  String resource = "./iba/sqlMapConfig.xml";
		  Charset charset = Charset.forName("UTF-8");
	      Resources.setCharset(charset);
		  Reader reader = Resources.getResourceAsReader(resource); 
		  sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		 }catch(Exception e){
			 e.printStackTrace();
			 throw new RuntimeException("MyAppSqlConfig 초기화문제: "+ e);
		 }
	 }
	 
	 public static SqlMapClient getSqlMapInstance(){
		   return sqlMap;
	 }
}
