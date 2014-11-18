package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

import models.*;

import views.html.*;

public class PercussionControl extends Controller {

    public static Result createForm() {
        Form<Percussion> percussionForm = form(Percussion.class);
        return ok(views.html.percussionForm.render(percussionForm));
    }

    public static Result save() {
    	Form<Percussion> percussionForm = form(Percussion.class).bindFromRequest();
    	if (percussionForm.hasErrors()) {
    		return badRequest(views.html.percussionForm.render(percussionForm));
    	}
    	Percussion myPercussion = percussionForm.get();
        myPercussion.save();
    	return redirect(routes.PercussionControl.percussion());
    }

    public static Result percussion() {
    	return ok(percussion.render(
    		Percussion.find.all()
    	));
    }

    public static Result update(int id) {
    	return TODO;
    }

    public static Result delete(int id) {
		Percussion.delete(id);
        return redirect(routes.PercussionControl.percussion());    	
    }

}
