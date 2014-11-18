package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

import models.*;

import views.html.*;

public class WoodwindControl extends Controller {

    public static Result createForm() {
        Form<Woodwind> woodwindForm = form(Woodwind.class);
        return ok(views.html.woodwindForm.render(woodwindForm));
    }

    public static Result save() {
    	Form<Woodwind> woodwindForm = form(Woodwind.class).bindFromRequest();
    	if (woodwindForm.hasErrors()) {
    		return badRequest(views.html.woodwindForm.render(woodwindForm));
    	}
    	Woodwind myWoodwind = woodwindForm.get();
        myWoodwind.save();
    	return redirect(routes.WoodwindControl.woodwind());
    }

    public static Result createUpdateForm(int id) {
        Form<Woodwind> woodwindUpdateForm = form(Woodwind.class).fill(Woodwind.find.byId(id));
        return ok(views.html.woodwindUpdateForm.render(woodwindUpdateForm));
    }

    public static Result update(int id) {
        Form<Woodwind> woodwindUpdateForm = form(Woodwind.class).fill(Woodwind.find.byId(id)).bindFromRequest();
        if (woodwindUpdateForm.hasErrors()) {
            return badRequest(views.html.woodwindUpdateForm.render(woodwindUpdateForm));
        }
        Woodwind updateWoodwind = woodwindUpdateForm.get();
        updateWoodwind.setId(id);
        // Ebean.update(updateWoodwind);
        updateWoodwind.update();
        return redirect(routes.WoodwindControl.woodwind());
    }

    public static Result woodwind() {
    	return ok(woodwind.render(
    		Woodwind.find.all()
    	));
    }

    public static Result delete(int id) {
		Woodwind.delete(id);
        return redirect(routes.WoodwindControl.woodwind());    	
    }

}
