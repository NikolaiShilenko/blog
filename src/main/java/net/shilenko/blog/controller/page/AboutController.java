package net.shilenko.blog.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.shilenko.blog.controller.AbstractController;

/**
 * @author Nikolay Shilenko
 *
 */
@WebServlet("/about")
public class AboutController extends AbstractController {

	private static final long serialVersionUID = 2481659617397200139L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		forwardToPage("about.jsp", req, resp);
	}
}
