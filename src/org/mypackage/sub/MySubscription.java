package org.mypackage.sub;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.stream.Stream;

import org.apache.tomcat.util.buf.StringUtils;

import java.util.*;

import java.time.Month;
/**
 * 
 */

/**
 * @author basha
 *
 */
public class MySubscription {
	private float amount;
	private String type;
	private String sdate;
	private String edate;
	public MySubscription (){
	    amount = 0;
	    type = "";
	}

	    /**
	     * @return the amount
	     */
	    public float getAmount() {
	        return amount;
	    }
	    /**
	     * @param amount to set
	     */
	    public void setAmount(float a) {
	        this.amount = a;
	    }

	    /**
	     * @param type to set
	     */
	    public void setType(String t) {
	        type = t;
	    }
	    
	    public String getType() {
	        return type;
	    }
	    
	    public void setEdate(String e) {
	        edate = e;
	    }
	    
	    public String getEdate() {
	        return edate;
	    }
	    
	    public void setSdate(String s) {
	        sdate = s;
	    }
	    
	    public String getSdate() {
	        return sdate;
	    }
}

