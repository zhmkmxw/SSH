<%@ page language="java" pageEncoding="gb2312"%>
<%@ page import="test.*"%>
<%@ page import="PO.*"%>
<%@ page import="java.util.*"%>

<html>
  <head>
    <title>Hibernate5�Ķ�Զ�˫�������ϵӳ��</title>
  </head>
  
  <body>
  	<h2>Hibernate5�Ķ�Զ�˫�������ϵӳ��</h2>
	<hr>
       
	<%
		TestBean test=new TestBean();
		//����������Ʒ
		test.addItem("001","A��Ʒ");	
		test.addItem("002","B��Ʒ");	
		test.addItem("003","C��Ʒ");					
		//ѡ�����е�������Ʒ
		Set items = new HashSet();
		items.add(test.loadItems(new Integer(1)));
		items.add(test.loadItems(new Integer(2)));
		//��ѡ������Ʒ����һ�Ŷ���
		test.addOrder("A00001",new Double(2100.5),items);
				
		//ѡ�����е�������Ʒ
		Set items1 = new HashSet();
		items1.add(test.loadItems(new Integer(2)));
		items1.add(test.loadItems(new Integer(3)));		
		//��ѡ������Ʒ������һ�Ŷ���
		test.addOrder("A00002",new Double(3680),items1);
		
		//װ�����Ŷ���
		Orders order1 = test.loadOrders(new Integer(1));
		Orders order2 = test.loadOrders(new Integer(2));		
		out.println("<br>������"+order1.getOrderno().trim()+"���е���Ʒ�嵥Ϊ:");					
		Iterator it = order1.getItems().iterator();
		Items item = null;
		while (it.hasNext()){
			item = (Items)it.next();
			out.println("<br>��Ʒ��ţ�"+item.getItemno().trim());
			out.println("<br>��Ʒ���ƣ�"+item.getItemname().trim());			
		}
		out.println("<br>������"+order2.getOrderno().trim()+"���е���Ʒ�嵥Ϊ:");					
		it = order2.getItems().iterator();
		item = null;
		while (it.hasNext()){
			item = (Items)it.next();
			out.println("<br>��Ʒ��ţ�"+item.getItemno().trim());
			out.println("<br>��Ʒ���ƣ�"+item.getItemname().trim());			
		}
		
		//װ��������Ʒ
		Items item1 = test.loadItems(new Integer(1));
		Items item2 = test.loadItems(new Integer(2));
		out.println("<br>��Ʒ��"+item1.getItemname().trim()+"�����ڵĶ���Ϊ:");					
		it = item1.getOrders().iterator();
		order1 = null;
		while (it.hasNext()){
			order1 = (Orders)it.next();
			out.println("<br>������ţ�"+order1.getOrderno().trim());
		}
		out.println("<br>��Ʒ��"+item2.getItemname().trim()+"�����ڵĶ���Ϊ:");					
		it = item2.getOrders().iterator();
		order2 = null;
		while (it.hasNext()){
			order2 = (Orders)it.next();
			out.println("<br>������ţ�"+order2.getOrderno().trim());
		}								
	%>
  </body>
</html>