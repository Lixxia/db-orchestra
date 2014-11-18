package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;
import com.avaje.ebean.Ebean;

import models.*;

import views.html.*;

public class OrchestraControl extends Controller {

    public static Result createForm() {
        Form<Orchestra> orchestraForm = form(Orchestra.class);
        return ok(views.html.orchestraForm.render(orchestraForm));
    }

    public static Result save() {
    	Form<Orchestra> orchestraForm = form(Orchestra.class).bindFromRequest();
    	if (orchestraForm.hasErrors()) {
    		return badRequest(views.html.orchestraForm.render(orchestraForm));
    	}
    	Orchestra myOrchestra = orchestraForm.get();
        myOrchestra.save();
    	return redirect(routes.OrchestraControl.orchestra());
    }

    public static Result createUpdateForm(int id) {
        Form<Orchestra> orchestraUpdateForm = form(Orchestra.class).fill(Orchestra.find.byId(id));
        return ok(views.html.orchestraUpdateForm.render(orchestraUpdateForm));
    }

    public static Result update(int id) {
        Form<Orchestra> orchestraUpdateForm = form(Orchestra.class).fill(Orchestra.find.byId(id)).bindFromRequest();
        if (orchestraUpdateForm.hasErrors()) {
            return badRequest(views.html.orchestraUpdateForm.render(orchestraUpdateForm));
        }
        Orchestra updateOrchestra = orchestraUpdateForm.get();
        updateOrchestra.setId(id);
        // Ebean.update(updateOrchestra);
        updateOrchestra.update();
        return redirect(routes.OrchestraControl.orchestra());
    }

    public static Result orchestra() {
    	return ok(orchestra.render(
    		Orchestra.find.all()
    	));
    }

    public static Result delete(int id) {
		Orchestra.delete(id);
        return redirect(routes.OrchestraControl.orchestra());    	
    }

}
