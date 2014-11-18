package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

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

    public static Result orchestra() {
    	return ok(orchestra.render(
    		Orchestra.find.all()
    	));
    }

    public static Result update(int id) {
    	return TODO;
    }

    public static Result delete(int id) {
		Orchestra.delete(id);
        return redirect(routes.OrchestraControl.orchestra());    	
    }

}
