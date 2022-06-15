package com.bk.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.model.CampDAO;
import com.bk.model.CampVO;

@WebServlet("/SurveyAjax")
public class SurveyAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Random ran = new Random();
		
		String text =request.getParameter("q");
		String[] x = text.split("/");
		// �˻��Ҽ� �ְ� ��ó��				
		if(x[1].equals("ķ���� ������� �ϰ� �;�!")) {
			x[1]="�Ϲݾ߿���";
		}else if(x[1].equals("�� �� ���� ���� ������ ����")) {
			x[1]="�ڵ����߿���";
		}else if(x[1].equals("ķ���� ���Ÿ��ؾ���!")) {
			x[1]="�۷���";
		}else if(x[1].equals("�� �� °�� �̵��ϰ� �;�!")) {
			x[1]="ī���";
		}
		
		// �ݷ������� ��ó��
		 if(x[2].equals("������ ���ھ��")) {
			x[2]="2";
		}else if(x[2].equals("��� �����")) {
			x[2]="1";
		}else if(x[1].equals("��!!")) {
			x[1]="0";		
		} 				
		 
		 // ù��° �з�		
		CampDAO dao = new CampDAO();
		List<CampVO> list = new ArrayList<CampVO>();
		list = dao.SearchLoc(x[0]);
		
		// 2��° �з�
		List<CampVO> list2 = new ArrayList<CampVO>();
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getMainfacilities().contains(x[1])) {
				list2.add(list.get(i));
			}			
		}
		// ���� �з��ߴµ� ���� �ȵ��� �������� �ٲ���
		if(list2.isEmpty()) {
			list2 = list;			
		}		
		
		// 3��° �з�
		List<CampVO> list3 = new ArrayList<CampVO>();
		for(int i=0; i<list2.size(); i++) {
			if(list2.get(i).getPet().equals(x[2])) {
				list3.add(list2.get(i));
			}			
		}
		if(list3.isEmpty()) {
			list3 = list2;			
		}
		
		// 4��° �з�
		List<CampVO> list4 = new ArrayList<CampVO>();
		for(int i=0; i<list3.size(); i++) {
			if(list3.get(i).getAmenities().contains(x[3])) {
				list4.add(list3.get(i));
			}			
		}
		if(list4.isEmpty()) {
			list4 = list3;			
		}
		
		// 5��° �з�
		List<CampVO> list5 = new ArrayList<CampVO>();
		for(int i=0; i<list4.size(); i++) {
			if(list4.get(i).getTag().contains(x[4])) {
				list5.add(list4.get(i));
			}			
		}
		if(list5.isEmpty()) {
			list5 = list4;			
		}
		
		// result�������� 3���̻� �������ؼ� ����� 3���� �ȵǸ� �������� �߰�	
		while(true) {
			if(list5.size()<3) {
				CampVO vo = new CampVO();
				int search = ran.nextInt(218)+1;
				vo=dao.SearchOne(search);
				list5.add(vo);		
			}else {
				break;
			}
		}
		
		// ��������������
		List<CampVO> sortedList = list5.stream().sorted((a,b)->(int)(b.getRank()*100) - (int)(a.getRank()*100)).collect(Collectors.toList());
		// ���ĵǾ��� ���		
		for(CampVO cvo : sortedList) {
		}
		for(CampVO a : list){
     		if(a.getHomepage()==null){
     			a.setHomepage("Ȩ�������� ������");
     		}
     		if(a.getAddress()==null){
     			a.setHomepage("�ּҰ� ������");
     		}
     	}     	
		
			
		HttpSession session1 = request.getSession();
		session1.setAttribute("keyword", x);
		
		HttpSession session = request.getSession();
		session.setAttribute("list", sortedList);
		
		String nextPage = "Result.jsp";		
		response.sendRedirect(nextPage);		
	}
}
