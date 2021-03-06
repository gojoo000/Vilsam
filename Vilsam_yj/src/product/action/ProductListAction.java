package product.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import product.svc.ProductListService;
import vo.ActionForward;
import vo.ProductBean;


public class ProductListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ArrayList<ProductBean> articleList = new ArrayList<ProductBean>();

		/*
		 * if (request.getParameter("page") != null) { page =
		 * Integer.parseInt(request.getParameter("page")); }
		 */
		ProductListService productListService = new ProductListService();
		int listCount = productListService.getListCount(); 

		 articleList = productListService.getArticleList();

		request.setAttribute("articleList", articleList); 
		/* request.setAttribute("product", articleList); */
		
		ActionForward forward = new ActionForward();
		forward.setPath("/index.jsp");
		return forward;
	}
}
