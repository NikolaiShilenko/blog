package net.shilenko.blog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.shilenko.blog.service.BusinessService;
import net.shilenko.blog.service.impl.ServiceManager;

/**
 * @author Nikolay Shilenko
 *
 */
public abstract class AbstractController extends HttpServlet {
	private static final long serialVersionUID = 7320575339653502722L;
	protected final Logger LOGGER = LoggerFactory.getLogger(getClass());
	private BusinessService businessService;
	
	public final BusinessService getBsinessService() {
		return businessService;
	}
	
	@Override
		public void init() throws ServletException {
			businessService = ServiceManager.getInstance(getServletContext()).getBusinessService();
		}
	
	public final void forwardToPage(String jspPage, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("currentPage", "page/"+jspPage);
		req.getRequestDispatcher("/WEB-INF/JSP/page-template.jsp").forward(req, resp);
	}
	
	public final void forwardToFragment(String jspPage, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/JSP/fragment/"+jspPage).forward(req, resp);
	}
}
