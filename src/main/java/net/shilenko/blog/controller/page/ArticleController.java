package net.shilenko.blog.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import net.shilenko.blog.controller.AbstractController;
import net.shilenko.blog.entity.Article;
import net.shilenko.blog.exception.RedirectToValidUrlException;

/**
 * @author Nikolay Shilenko
 *
 */
@WebServlet("/article/*")
public class ArticleController extends AbstractController {
	private static final long serialVersionUID = 7089871282763553056L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String requestUrl = req.getRequestURI();
			String id = StringUtils.split(requestUrl, "/")[1];
			Article article = getBusinessService().viewArticle(Long.parseLong(id), requestUrl);
			if (article == null) {
				resp.sendRedirect("/404?url="+requestUrl);
			}
			else{
				req.setAttribute("article", article);
				forwardToPage("article.jsp", req, resp);
			}
		}  catch (RedirectToValidUrlException e) {
			resp.sendRedirect(e.getUrl());
		}  catch (NumberFormatException | ArrayIndexOutOfBoundsException e) {
			resp.sendRedirect("/news");
		}
	}
}
