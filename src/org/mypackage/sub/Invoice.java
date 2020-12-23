package org.mypackage.sub;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Invoice extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	PrintWriter pw=res.getWriter();
	res.setContentType("text/html");
	String sdate=req.getParameter("sdate");
	String edate=req.getParameter("edate");
	String type=req.getParameter("type");
	pw.println(InvoiceDates(sdate, edate, type));
	pw.close();
	
}
public String InvoiceDates(String sdate, String edate, String type)
{
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");

	  //convert String to LocalDate
	  LocalDate sd = LocalDate.parse(sdate, formatter);
	  LocalDate ed = LocalDate.parse(edate, formatter);
	  
	List<LocalDate> totalDates;
	if(type == "daily")
	{
		totalDates =  sd.datesUntil(ed)
    			  .collect(Collectors.toList());
	}
	if(type == "weekly")
	{
		totalDates= sd.datesUntil(ed, Period.ofWeeks(1)).collect(Collectors.toList());
	}
	else
	{
		totalDates= sd.datesUntil(ed, Period.ofMonths(1)).collect(Collectors.toList());
	}
	String str = totalDates.toString();
	return str;
	
}
}