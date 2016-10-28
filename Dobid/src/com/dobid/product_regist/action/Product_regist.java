package com.dobid.product_regist.action;

import iba.SqlMapConfig;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.dobid.beans.AuctionDTO;
import com.dobid.model.Product_registDAO;
import com.dobid.product_regist.action.form.Product_regist_form;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Product_regist extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		
		//액션 폼.
		Product_regist_form forms = (Product_regist_form)form;
		
		//유저 아이디
		String user_id = (String) request.getSession().getAttribute("logincheck");

		//데이터 가져오기.
		String cate = forms.getCate();
		System.out.println(cate);
		String title_text  = forms.getTitle_text();
		String count_text  = forms.getCount_text();
		FormFile main_file = forms.getMain_file();
		List<FormFile> sub_file =  forms.getSub_file();
		String auction_check = forms.getAuction_check();
		String start_cach = forms.getStart_cach();
		String day = forms.getDay();
		String hour = forms.getHour(); 
		String minute = forms.getMinute();
		String text = forms.getTextarea();
		String oldcheck = forms.getOldcheck();
		
		//현재 시간과 종료시간 셋팅.
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String regist_date = df.format(date);
		SimpleDateFormat dfa = new SimpleDateFormat("yyyyMM");
		String end_date = dfa.format(date);
		
		System.out.println(sub_file.get(0).getFileName());
		String main_path= "/";
		String sub_path= "/";
		//이미지 업로드하고 경로 받기.
		if(main_file != null){
			main_path = file_upload(main_file);
		}
		if(sub_file != null){
			sub_path = multifileUpload(sub_file);
		}
	    System.out.println(sub_path);
		ActionForward forward = null;

		//추후 등록자 아이디로 변경해야됨.
		AuctionDTO auctionDTO = new AuctionDTO(user_id, title_text, text, main_path,sub_path, 
				Integer.parseInt(start_cach), cate, Integer.parseInt(count_text),end_date+day+hour+minute+"00", regist_date, auction_check,oldcheck);
		
		//SqlMapClient client = SqlMapConfig.getSqlMapInstance();
		Product_registDAO dao = new Product_registDAO();
		
		//성공시 리스티 페이지로 이동. 실패지 따로 처리.
		if(dao.insert(auctionDTO) == true ){
			//if(client.insert("product_regist.auction_regist",auctionDTO) != null ){
			forward = mapping.findForward("success");
			}else {
			forward = mapping.findForward("fail");
			}

		//}
		return forward;
	
	
	}
	//파일 업로드. 현자 1개만 업로드 가능.
		private String file_upload(FormFile attr){
			
			String realName = "";
			String fileName = attr.getFileName();
		       String fileContextType = attr.getContentType();
		       int fileSize = attr.getFileSize();
		    
		       String path = "/image";  // 업로드할 경로
		      String realPath = "";
		    
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
		       return realPath+'/'+realName;
		}
		
		private String multifileUpload(List<FormFile> files) {
			
			String dbInput = "";	
			for(int i =0; i < files.size(); i++){
				dbInput += "@"+upload(files.get(i));
				
			}
			return dbInput;
		}
		
		private String upload(FormFile attr) {
			String realName = "";
			String fileName = attr.getFileName();
		       String fileContextType = attr.getContentType();
		       int fileSize = attr.getFileSize();
		    
		       String path = "/image";  // 업로드할 경로
		      String realPath = "";
		    
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
			return realPath+"/"+realName;
		}
	
}
