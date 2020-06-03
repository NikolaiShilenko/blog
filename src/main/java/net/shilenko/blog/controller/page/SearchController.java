/**
 * 
 */
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
@WebServlet("/search")
public class SearchController extends AbstractController {
	private static final long serialVersionUID = -1474332365208695415L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		forwardToPage("search.jsp", req, resp);
	}
}
