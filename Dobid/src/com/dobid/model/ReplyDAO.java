package com.dobid.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;
import com.dobid.beans.ReplyDTO;

public class ReplyDAO {
	
	SqlMapClient sqlMap;
	
	public ReplyDAO() {
	  sqlMap = SqlMapConfig.getSqlMapInstance();
	}	
	
    public boolean insert(ReplyDTO reply){
       try {
		sqlMap.insert("reply.add",reply);		
		   return true;
	   } catch (SQLException e) {
		e.printStackTrace();
	   }
       return false;
    }//insert
    
    public boolean delete(int no){
       try {
		int t = sqlMap.delete("reply.delete",no);
		   if(t==1)return true;
	  } catch (SQLException e) {
		e.printStackTrace();
	  }       
       return false;	
    }//delete
    
    public boolean update(ReplyDTO reply){
       try {
		int t = sqlMap.update("reply.update",reply);
		   if(t==1)return true;
	  } catch (SQLException e) {
		e.printStackTrace();
	  }       
       return false;	
    }//update
    
    public ReplyDTO find(int no){
       ReplyDTO reply=null;
	try {
		reply = (ReplyDTO) sqlMap.queryForObject("reply.find",no);
		} catch (SQLException e) {
			e.printStackTrace();
	   }       
       return reply;
    }//find
    
    public List<ReplyDTO> findAll(){
       List<ReplyDTO> list=null;
		try {
			list = sqlMap.queryForList("reply.findAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
       return list;	
    }//findAll
}




