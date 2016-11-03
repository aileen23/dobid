package com.dobid.actions.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.dobid.beans.NoticeboardDTO;
import com.dobid.model.boardDAO;

public class Admin_noticeboard_write_Action extends Action{

	
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
	    Date date = new Date();
	    String board_date = df.format(date);
	    //request.getParameter("free_whiter_user")
	    System.out.println(request.getParameter("notice_title"));
	    System.out.println(request.getParameter("notice_contents"));
	    System.out.println(request.getParameter("notice_file"));
	    NoticeboardDTO dto = new NoticeboardDTO(0,(String)request.getSession().getAttribute("logincheck"),
	    		request.getParameter("notice_title"),request.getParameter("notice_contents"),
	    		request.getParameter("notice_file"),0,board_date);
		
		boardDAO dao = new boardDAO();
		dao.noticeBoardWrite(dto);
		
		return mapping.findForward("success");
	}
	
	//파일 업로드. 현자 1개만 업로드 가능.
			private String file_upload(FormFile attr){
				
				String realName = "";
				String fileName = attr.getFileName();
			
			       String fileContextType = attr.getContentType();
			       int fileSize = attr.getFileSize();
			    
			       String path = "/image";  // 업로드할 경로
			      String realPath = "";
			      String dbPath = "/image"; //path와 같게 해주세요.
			       /*
			        * 파일 업로드 시작
			      */
			       InputStream in = null;
			       OutputStream os = null;
			    
			       try
			       {
			         // 파일 확장자 구하기
			        String ext = attr.getFileName();
			    
			         int last = 0;
			         boolean findExt = false;
			     
			         while((last = ext.indexOf(".")) != -1) {
			           findExt = true;
			           ext = ext.substring(last+1);
			         }
			     
			         // 파일 이름 중복 방지
			        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			         String rndName = sdf.format(new java.util.Date()) + System.currentTimeMillis();
			     
			         // 실제 저장될 파일 이름
			        realName = findExt ? rndName + "." + ext : rndName;
			     
			         // 실제 저장될 디렉토리 구하기
			        ServletContext application = getServlet().getServletContext();
			         realPath = application.getRealPath(path);
			     
			         // 실제로 저장될 파일 풀 경로
			        File file = new File(realPath + "/" + realName); 
			     
			         // 저장하기(복사)
			         os = new BufferedOutputStream(new FileOutputStream(file));
			         in = attr.getInputStream();
			     
			         int i;
			         byte[] buffer = new byte[1024*4];
			         while((i=in.read(buffer, 0, 1024*4)) != -1) {
			           os.write(buffer, 0, i);
			         }
			    
			       }
			       catch(Exception e) {
			         e.printStackTrace();
			       }
			       finally {
			         try { if(os != null) os.close(); } catch (IOException ignore) { }
			         try { if(in != null) in.close(); } catch (IOException ignore) { }
			       }
			       /*
			        * 파일 업로드 끝
			      */
			       return dbPath+'/'+realName;
			}
}
