package com.bk.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.model.CampDAO;
import com.bk.model.CampVO;

@WebServlet("/filterSerivce")
public class filterService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		request.setCharacterEncoding("UTF-8");
		String[] f1 = request.getParameterValues("category1");
		String[] f2 = request.getParameterValues("category2");
		String[] f3 = request.getParameterValues("category3");
		String[] f4 = request.getParameterValues("category4");
		String[] f5 = request.getParameterValues("category5");
		
		List<CampVO> list1 = new ArrayList<CampVO>();
		CampDAO dao = new CampDAO();	
//		list1 = dao.SearchList(f1);
//		System.out.println(list1.size());
		List<String> f1_list = new ArrayList<>();
		if(f1==null) {
			f1_list.add("�غ�");
			f1_list.add("���");
			f1_list.add("��");
			f1_list.add("����");
			f1_list.add("��");
		}else {
			for(int i = 0; i<f1.length;i++) {		
				f1_list.add(f1[i]);
			}
		}
		List<String> f2_list = new ArrayList<>();
		if(f2==null) {
			f2_list.add("�Ϲݾ߿���");
			f2_list.add("�ڵ����߿���");
			f2_list.add("ī���");
			f2_list.add("�۷���");
		}else {
			for(int i = 0; i<f2.length;i++) {		
				f2_list.add(f2[i]);
			}
		}
		List<String> f3_list = new ArrayList<>();
		if(f3==null) {
			f3_list.add("�� ���� ����");
			f3_list.add("����");
			f3_list.add("Ŀ��");
		}else {
			for(int i = 0; i<f3.length;i++) {		
				f3_list.add(f3[i]);
			}
		}
		List<String> f4_list = new ArrayList<>();
		if(f4==null) {
			f4_list.add("0");
			f4_list.add("1");
			f4_list.add("2");
		}else {
			for(int i = 0; i<f4.length;i++) {		
				f4_list.add(f4[i]);
			}
		}		
		
		List<String> f5_list = new ArrayList<>();
		if(f5==null) {
			f5_list.add("����");
			f5_list.add("��������");
			f5_list.add("�¼�");
			f5_list.add("�ȱ��");
			f5_list.add("��Ʈ");
		}else {
			for(int i = 0; i<f5.length;i++) {		
				f5_list.add(f5[i]);
			}
		}
				
		Map<String, Object> category = new HashMap<>();
		category.put("f1_list", f1_list);
		category.put("f2_list", f2_list);
		category.put("f3_list", f3_list);
		category.put("f4_list", f4_list);
		category.put("f5_list", f5_list);
		//HashMap<>
		list1 = dao.SearchList(category);
		
		System.out.println(list1.size());
		
		HttpSession session3 = request.getSession();
	    session3.setAttribute("select", list1);
	      
		response.sendRedirect("filter2.jsp");	
		
		
		
	}

}
