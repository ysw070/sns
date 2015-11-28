package java76.pms.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import java76.pms.dao.ProjectDao;
import java76.pms.domain.Project;


public class ProjectListServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
  
  @Override
  public void doGet (HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
  //----------------------------------------------------------------------------------------------------
    try {
      
    
    int pageNo = 1;
    int pageSize = 10;
    String keyword = "no";
    String align = "asc";
    if(request.getParameter("pageNo") != null) {
       pageNo = Integer.parseInt(request.getParameter("pageNo"));
    }
    if(request.getParameter("pageSize") != null) {
      pageSize = Integer.parseInt(request.getParameter("pageSize"));
   }
    if(request.getParameter("keyword") != null) {
      keyword = request.getParameter("keyword");
   }
    if(request.getParameter("align") != null) {
      align = request.getParameter("align");
   }
   
    ApplicationContext iocContainer = (ApplicationContext)this.getServletContext()
        .getAttribute("iocContainer");
    ProjectDao projectDao = iocContainer.getBean(ProjectDao.class);
    
    List<Project> project = projectDao.selectList(pageNo, pageSize, keyword, align);
    request.setAttribute("project", project);
    
    response.setContentType("text/html;charset=UTF-8");
    
    RequestDispatcher rd = request.getRequestDispatcher("/project/ProjectList.jsp");
    rd.include(request, response);
    

    } catch (Exception e) {
      RequestDispatcher rd = request.getRequestDispatcher("/error");
      request.setAttribute("error", e);
      rd.forward(request, response);  
      }
    
   
    
    
  //----------------------------------------------------------------------------------------------------  
  }

}
