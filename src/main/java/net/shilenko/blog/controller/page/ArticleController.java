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
@WebServlet("/article")
public class ArticleController extends AbstractController {
	private static final long serialVersionUID = 6255957835904618339L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		forwardToPage("article.jsp", req, resp);
	}
}
