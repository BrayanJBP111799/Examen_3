
package controller;

import bean.contact;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import model.data_queries;

public class controller_contact extends ActionSupport {

    private contact ct = new contact();

    public contact getCt() {
        return ct;
    }

    public void setCt(contact ct) {
        this.ct = ct;
    }

    public String execute() throws SQLException {
        data_queries da = new data_queries();

        da.insertMensaje(getCt());

        return SUCCESS;
    }

    public void validate() {

        if (ct.getName().length() == 0) {

            addFieldError("ct.name", "**Su Nombre es un campo obligatorio.**");

        }else if (ct.getPhone() == 0) {

            addFieldError("ct.mail", "**Su Teléfono es un campo obligatorio.**");

        }else if (ct.getEmail().length() == 0) {

            addFieldError("ct.mail", "**Su E-mail es un campo obligatorio.**");

        }else if (!ct.getEmail().contains("@")) {

            addFieldError("ct.mail", "**Su E-mail no posee un formato valido.**");

        }else if (ct.getMsj().length() == 0) {

            addFieldError("ct.msj", "**Su Mensaje es un campo obligatorio.**");

        }

    }

}
