package cn.mark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import cn.mark.dao.StudentDao;
import cn.mark.model.Student;

public class StudentAction extends ActionSupport implements ServletRequestAware{

	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private StudentDao studentDao = new StudentDao();
	
	private Student student;
	private String error;
	
	/**
	 * 学生登陆
	 */
	public String login() throws Exception{
		HttpSession session = request.getSession();
		Student currentStu = studentDao.login(student);
		if (currentStu == null){
			error = "准考证号或密码错误";
			return ERROR;
		}else{
			session.setAttribute("currentStu", currentStu);
			return SUCCESS;
		}
		
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}
	
	
	
}
