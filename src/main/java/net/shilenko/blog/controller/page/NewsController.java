package net.shilenko.blog.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.shilenko.blog.Constants;
import net.shilenko.blog.controller.AbstractController;
import net.shilenko.blog.entity.Article;
import net.shilenko.blog.model.Items;

/**
 * @author Nikolay Shilenko
 *
 */
@WebServlet({"/news", "/news/*"})
public class NewsController extends AbstractController {
	private static final long serialVersionUID = 216595477139640552L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestUrl = req.getRequestURI();
		Items<Article> items = null;
		if(requestUrl.endsWith("/news") || requestUrl.endsWith("/news/")){
			items = getBusinessService().listArticles(0, Constants.LIMIT_ARTICLES_PER_PAGE);
		}
		else{
			//TODO display articles for category
		}
		req.setAttribute("list", items.getItems());
		forwardToPage("news.jsp", req, resp);
	}
}