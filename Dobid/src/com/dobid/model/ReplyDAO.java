package com.dobid.model;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

import com.dobid.beans.Reply_freedomDTO;
import com.dobid.beans.Reply_noticeDTO;

public class ReplyDAO {
	
	SqlMapClient smc;
	
	public ReplyDAO() {
	  smc = SqlMapConfig.getSqlMapInstance();
	}	
	
    public boolean insert_freedom(Reply_freedomDTO reply_freedom){
       try {
		smc.insert("reply.add_freedom",reply_freedom);
		   return true;
	   } catch (SQLException e) {
		e.printStackTrace();
	   }
       return false;
    }//insert
    
    public boolean delete_freedom(Reply_freedomDTO reply_freedom){
    	System.out.println("»èÁ¦ ÇÁ¸®´ý");
    	System.out.println(" no="+ reply_freedom.getNo());
    	System.out.println(" name="+ reply_freedom.getName());
       try {
		int t = smc.delete("reply.delete_freedom",reply_freedom);
		   if(t==1)return true;
	  } catch (SQLException e) {
		e.printStackTrace();
	  }       
       return false;	
    }//delete
    
    public boolean update_freedom(Reply_freedomDTO reply_freedom){
       try {
		int t = smc.update("reply.update_freedom",reply_freedom);
		   if(t==1)return true;
	  } catch (SQLException e) {
		e.printStackTrace();
	  }       
       return false;	
    }//update
    
    public Reply_freedomDTO find_freedom(int no){
       Reply_freedomDTO reply=null;
	try {
		reply = (Reply_freedomDTO) smc.queryForObject("reply.find",no);
		} catch (SQLException e) {
			e.printStackTrace();
	   }       
       return reply;
    }//find
    
    public List<Reply_freedomDTO> findAll_freedom(int num){
       List<Reply_freedomDTO> list=null;
		try {
			list = smc.queryForList("reply.findAll_freedom", num);
		} catch (SQLException e) {
			e.printStackTrace();
		}
       return list;	
    }//findAll
    
    
    
    public boolean insert_noitice(Reply_noticeDTO reply_notice){
        try {
 		smc.insert("reply.add_notice",reply_notice);
 		   return true;
 	   } catch (SQLException e) {
 		e.printStackTrace();
 	   }
        return false;
     }//insert
     
     public boolean delete_notice(Reply_noticeDTO reply_notice){
        try {
 		int t = smc.delete("reply.delete_notice", reply_notice);
 		   if(t==1)return true;
 	  } catch (SQLException e) {
 		e.printStackTrace();
 	  }       
        return false;	
     }//delete
     
     public boolean updaten_notice(Reply_noticeDTO reply_freedom){
        try {
 		int t = smc.update("reply.update_notice",reply_freedom);
 		   if(t==1)return true;
 	  } catch (SQLException e) {
 		e.printStackTrace();
 	  }       
        return false;	
     }//update
     
     public Reply_noticeDTO find_notice(int no){
        Reply_noticeDTO reply=null;
 	try {
 		reply = (Reply_noticeDTO) smc.queryForObject("reply.find",no);
 		} catch (SQLException e) {
 			e.printStackTrace();
 	   }       
        return reply;
     }//find
     
     public List<Reply_noticeDTO> findAll_notice(int num){
        List<Reply_noticeDTO> list=null;
 		try {
 			list = smc.queryForList("reply.findAll_notice", num);
 		} catch (SQLException e) {
 			e.printStackTrace();
 		}
        return list;	
     }//findAll
    
}




