package faq;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Faq;
import model.Topic;
import service.FaqFacet;

public class FaqDataServlet extends HttpServlet  {
	public FaqDataServlet() {
	
		// TODO Auto-generated constructor stub
	}
	
	FaqFacet faqFacet = new FaqFacet();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Topic> topics=faqFacet.findAllTopics();
		request.setAttribute("topics", topics);
		request.setAttribute("test", "test");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String topicId = request.getParameter("searchTopic");
		
		List<Faq> faqs;
		if(topicId != null)
		{		
			faqs=faqFacet.getAllFaqsByTopic(Integer.parseInt(topicId));
			request.setAttribute("faqs", faqs);	
		}
		else
		{
			request.setAttribute("faqs", null);	
		}
		
		List<Topic> topics=faqFacet.findAllTopics();
		request.setAttribute("topics", topics);
		
		request.setAttribute("test", "test33");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
		return;
	}
}
