package Administrator;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entity.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class DeleteAction extends ActionSupport {
    
    private List list;

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }    
    
    public DeleteAction() {
    }
    
    public String execute() throws Exception {

        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Query consulta = hibernateSession.createQuery("FROM User");
        list = consulta.list();
        
        return SUCCESS;

    }
    
}
