package net.shilenko.blog.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.shilenko.blog.Constants;
import net.shilenko.blog.controller.AbstractController;
import net.shilenko.blog.entity.Article;
import net.shilenko.blog.entity.Category;
import net.shilenko.blog.model.Items;
import net.shilenko.blog.model.Pagination;

/**
 * @author Nikolay Shilenko
 *
 */
@WebServlet({"/news", "/news/*"})
public class NewsController extends AbstractController {
	private static final long serialVersionUID = 216595477139640552L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int offset = getOffset(req, Constants.LIMIT_ARTICLES_PER_PAGE);
		String requestUrl = req.getRequestURI();
		Items<Article> items = null;
		if(requestUrl.endsWith("/news") || requestUrl.endsWith("/news/")){
			items = getBusinessService().listArticles(offset, Constants.LIMIT_ARTICLES_PER_PAGE);
		}
		else{
			String categoryUrl = requestUrl.replace("/news", "");
			items = getBusinessService().listArticlesByCategory(categoryUrl, offset, Constants.LIMIT_ARTICLES_PER_PAGE);
			Category category = getBusinessService().findCategoryByUrl(categoryUrl);
			req.setAttribute("selectedCategory", category);
		}
		req.setAttribute("list", items.getItems());
		Pagination pagination = new Pagination.Builder(requestUrl+"?", offset, items.getCount()).withLimit(Constants.LIMIT_ARTICLES_PER_PAGE).build();
		req.setAttribute("pagination", pagination);
		forwardToPage("news.jsp", req, resp);
	}
}