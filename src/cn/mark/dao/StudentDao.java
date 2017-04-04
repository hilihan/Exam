package cn.mark.dao;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.mark.model.Student;
import cn.mark.util.HibernateUtil;

public class StudentDao {
	
	/**
	 * 学生登陆
	 * @param student
	 */
	public Student login(Student student) throws Exception{
		//获取当前Session
		Session session =HibernateUtil.getSessionFactory().getCurrentSession();
		//开始事务
		session.beginTransaction();
		
		Query query = session.createQuery("from Student as s where s.id=:id and s.password=:password");
		query.setString("id", student.getId());
		query.setString("password", student.getPassword());
		Student resultStu = (Student)query.uniqueResult();//单结果
		
		//提交事务
		session.getTransaction().commit();
		
		return resultStu;
	}
}
