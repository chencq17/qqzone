package com.gem.qqzone.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.gem.qqzone.util.StringUtil;

public class CharacterEncodingFilter implements Filter{
	
	private String encoding = "UTF-8";

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
		response.setCharacterEncoding(encoding);
		response.setContentType("text/html;charset="+encoding);
	}

	public void init(FilterConfig config) throws ServletException {
		String encoding = config.getInitParameter("encoding");
		if(StringUtil.isNotEmpty(encoding)){
			this.encoding = encoding;
		}
	}
	
}
