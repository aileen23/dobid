package com.dobid.product_regist.action;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlMapconfig {

	/*
	 * sqlMapConfig.xml(sql문을 포함한 XML) 문서를 객체화 시켜주는 클래스.
	 * 
	 * sqlMapClient클래스 : xml에 작성한 sql문을 호출
	 */
	private static final SqlMapClient sqlMap;
	
	static{
		try{
		String resource = "./com/dobid/etc/sqlMapConfig.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("MyAppSqlConfig초기화 중 에러"+e);
		}
	}
	
	
	public static SqlMapClient getSqlMapInstance(){
		return sqlMap;
	}
}
