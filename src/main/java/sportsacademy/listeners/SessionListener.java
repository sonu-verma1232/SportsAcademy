package sportsacademy.listeners;

import java.util.Calendar;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public SessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent se)  { 

    	System.out.println("In Session Listener");
    	HttpSession hs = se.getSession();
    	System.out.println("Session id is : "+hs.getId());
    	
    	long ct = hs.getCreationTime();      // it will give creation time of session in long value
    	
    	Calendar c = Calendar.getInstance();  // object creation of calendar class
    	
    	c.setTimeInMillis(ct);       
    	
    	int date = c.get(Calendar.DATE);
    	int month = c.get(Calendar.MONTH);
    	int year = c.get(Calendar.YEAR);
    	int hour = c.get(Calendar.HOUR);
    	int minute = c.get(Calendar.MINUTE);
    	int second = c.get(Calendar.SECOND);
    	
    	System.out.println("Date is "+date+"/"+(month+1)+"/"+year);
    	System.out.println("Login time is "+hour+":"+minute+":"+second);
    	
    	
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent se)  { 

    System.out.println("Session destroyed");
    	
    }
	
}
