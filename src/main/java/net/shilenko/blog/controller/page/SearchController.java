package net.shilenko.blog.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import net.shilenko.blog.Constants;
import net.shilenko.blog.controller.AbstractController;
import net.shilenko.blog.entity.Article;
import net.shilenko.blog.model.Items;

/**
 * @author Nikolay Shilenko
 *
 */
@WebServlet("/search")
public class SearchController extends AbstractController {
	private static final long serialVersionUID = 7089871282763553056L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String query = req.getParameter("query");
		if (StringUtils.isNotBlank(query)) {
			Items<Article> items = getBusinessService().listArticlesBySearchQuery(query, 0, Constants.LIMIT_ARTICLES_PER_PAGE);
			req.setAttribute("list", items.getItems());
			req.setAttribute("count", items.getCount());
			req.setAttribute("searchQuery", query);
			forwardToPage("search.jsp", req, resp);
		} else {
			resp.sendRedirect("/news");
		}
	}
}
