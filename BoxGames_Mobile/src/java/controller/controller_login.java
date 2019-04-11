package controller;

import bean.usuarios;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.Map;
import model.model_services;

import org.apache.struts2.interceptor.SessionAware;

public class controller_login extends ActionSupport implements SessionAware {

    private usuarios u = new usuarios();
    private Map session;

    public void setSession(Map session) {
        this.session = session;
    }

    public controller_login() {
    }

    @Override
    public String execute() throws SQLException {
        model_services da = new model_services();
        String result = "";

        if ("sinregistro".equals(da.consulta_inicio(getU()))) {
            result = "sinregistro";
            addFieldError("u.Correo", "No existe esa cuenta con esas crendenciales. Registrate para continuar.");
        } else if ("incorrecto".equals(da.consulta_inicio(getU()))) {
            result = "incorrecto";
            addFieldError("u.Correo", "Su cédula o contraseña no son correctas. Intente de nuevo.");
        } else if ("correcto".equals(da.consulta_inicio(getU()))) {

            session.put("session_correo", u.getCorreo());
            da.consulta_session(getU());
            session.put("session_cedula", u.getCedula());
            session.put("session_nombre", u.getNombre_completo());
            String estado = da.consulta_onboarding(getU());

            if ("sinonboarding".equals(estado)) {
                result = "correcto";
            } else if ("inactivo".equals(estado)) {
                result = "correcto";
            } else if ("activo".equals(estado)) {
                result = "onboarding";
            }
        }

        return result;
    }

    public String updateOnboarding() throws SQLException {
        model_services da = new model_services();
        da.updateOnboarding(session.get("session_correo").toString());

        return SUCCESS;
    }

    public usuarios getU() {
        return u;
    }

    public void setU(usuarios u) {
        this.u = u;
    }
}
