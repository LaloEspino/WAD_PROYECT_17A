package Student;

import com.opensymphony.xwork2.ActionSupport;
import entity.Chart;
import entity.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ViewChart extends ActionSupport {
    
    public Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    
    public ViewChart() {
    }
    
    public String execute() throws Exception {

        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Transaction t = hibernateSession.beginTransaction();
        Chart chart = (Chart)hibernateSession.load(Chart.class, id);
        //hibernateSession.delete(user);
        t.commit();
        
        return SUCCESS;

    }
    
}
