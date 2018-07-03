package com.dev.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class LogoutController {

	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest req, HttpServletResponse resp)
	{
		HttpSession session = req.getSession(false);
		if(session!=null)
		{
			session.invalidate();
		}
		Cookie[]cookie = req.getCookies();
		if(cookie!=null)
		{
			for(Cookie cookie1:cookie)
			{
				String name = cookie1.getName();
				if(name.equals("JSESSIONID"))
				{
					cookie1.setMaxAge(0);
					resp.addCookie(cookie1);
					System.out.println("cookie deleted");
				   
				}
			}
		}
		
		return "AdminLogin";
	}
}
