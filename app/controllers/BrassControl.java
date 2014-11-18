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

    public static Result createUpdateForm(int id) {
        Form<Brass> brassUpdateForm = form(Brass.class).fill(Brass.find.byId(id));
        return ok(views.html.brassUpdateForm.render(brassUpdateForm));
    }

    public static Result update(int id) {
        Form<Brass> brassUpdateForm = form(Brass.class).fill(Brass.find.byId(id)).bindFromRequest();
        if (brassUpdateForm.hasErrors()) {
            return badRequest(views.html.brassUpdateForm.render(brassUpdateForm));
        }
        Brass updateBrass = brassUpdateForm.get();
        updateBrass.setId(id);
        // Ebean.update(updateBrass);
        updateBrass.update();
        return redirect(routes.BrassControl.brass());
    }

    public static Result brass() {
    	return ok(brass.render(
    		Brass.find.all()
    	));
    }

    public static Result delete(int id) {
		Brass.delete(id);
        return redirect(routes.BrassControl.brass());    	
    }

}
