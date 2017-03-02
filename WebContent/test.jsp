<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
JspWriter mout=pageContext.getOut();
String  mm= request.getParameter("num");
String  cho= request.getParameter("choose");
    int choose=Integer.parseInt(cho);
    int m=Integer.parseInt(mm);
    int i=0;
    if(choose==2)
	{
    	String pp[]=new String[m+1];
    	for(i=1;i<=m;i++)
    	{
		int a=(int)(Math.random() * 100+1);
		int b=(int)(Math.random()*100+1);
		int c=(int)(Math.random()*4+1);
		String s="";
		if(c==1)
		{
			s="+";
		}
		if(c==2)
		{
			s="-";
		}
		if(c==3)
		{
			s="*";
		}
		if(c==4)
		{
			s="/";
		}
		pp[i]=a+s+b;
		while(pp[i].equals(pp[i-1]))
		{
			a=(int)(Math.random() * 100+1);
		    b=(int)(Math.random()*100+1);
		    pp[i]=a+s+b;
		}
		mout.println(i+"、"+pp[i]+"=?");
		mout.print("<br>");
	
    	}
	}
    else
    {
	String qq[]=new String[m+1];
	for(i=1;i<=m;i++)
	{
		int e=(int)(Math.random()*100+1);
		int f=(int)(Math.random()*100+1);
		String ff="";
		String gg="";
		while(e==f)
		{ 
			e=(int)(Math.random()*100+1);
			f=(int)(Math.random()*100+1);
		}
		if(e>f)
		{
			ff=e+"/"+f;
		}
		if(f>e)
		{
			ff=f+"/"+e;
		}
		int p=(int)(Math.random()*100+1);
		int q=(int)(Math.random()*100+1);
		while(p==q)
		{ 
			p=(int)(Math.random()*100+1);
			q=(int)(Math.random()*100+1);
		}
		if(p>q)
		{
			gg=p+"/"+q;
		}
		if(q>p)
		{
			gg=q+"/"+p;
		}
		int x=(int)(Math.random()*4+1);
		String s="";
		if(x==1)
		{
			s="+";
		}
		if(x==2)
		{
			s="-";
		}
		if(x==3)
		{
			s="*";
		}
		if(x==4)
		{
			s="/";
		}
		qq[i]=ff+s+gg;
		while(qq[i].equals(qq[i-1]))
		{
			e=(int)(Math.random()*100+1);
			f=(int)(Math.random()*100+1);		
			while(e==f)
			{ 
				e=(int)(Math.random()*100+1);
				f=(int)(Math.random()*100+1);
				
			}
			if(e>f)
			{ff=e+"/"+f;}
			if(f>e)
			{ff=e+"/"+f;}
			p=(int)(Math.random()*100+1);
			q=(int)(Math.random()*100+1);
			while(q==p)	
			{
				 p=(int)(Math.random()*100+1);
				 q=(int)(Math.random()*100+1);	
			}
			if(p>q)
			{
				gg=p+"/"+q;
			}
			if(p<q)
			{
				gg=p+"/"+q;
			}
			qq[i]=ff+s+gg;
		}
		mout.println(i+"、"+qq[i]+"=?");
		mout.print("<br>");
	}
    }
	
%>


</body>
</html>