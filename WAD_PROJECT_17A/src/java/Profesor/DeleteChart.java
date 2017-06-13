package Profesor;

import com.opensymphony.xwork2.ActionSupport;
import entity.Chart;
import entity.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DeleteChart extends ActionSupport {
    
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public DeleteChart() {
    }
    
    public String execute() throws Exception {
        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Transaction t = hibernateSession.beginTransaction();
        Chart chart = (Chart)hibernateSession.load(Chart.class, id);
        hibernateSession.delete(chart);
        t.commit();
        
        return SUCCESS;
    }
    
}
