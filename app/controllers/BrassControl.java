package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

import models.*;

import views.html.*;

public class BrassControl extends Controller {

    public static Result createForm() {
        Form<Brass> brassForm = form(Brass.class);
        return ok(views.html.brassForm.render(brassForm));
    }

    public static Result save() {
    	Form<Brass> brassForm = form(Brass.class).bindFromRequest();
    	if (brassForm.hasErrors()) {
    		return badRequest(views.html.brassForm.render(brassForm));
    	}
    	Brass myBrass = brassForm.get();
        myBrass.save();
    	return redirect(routes.BrassControl.brass());
    }

    public static Result brass() {
    	return ok(brass.render(
    		Brass.find.all()
    	));
    }

    public static Result update(int id) {
    	return TODO;
    }

    public static Result delete(int id) {
		Brass.delete(id);
        return redirect(routes.BrassControl.brass());    	
    }

}
