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
        if (Percussion.find.findRowCount() > 100) {
            return badRequest(percussion.render(Percussion.find.all(),"inherit","Cannot add new Percussion entry at this time."));
        }
        else {
            myPercussion.setPlayer(Integer.parseInt(percussionForm.data().get("player_id")));
            myPercussion.save();
        	return redirect(routes.PercussionControl.percussion());
        }
    }

    public static Result createUpdateForm(int id) {
        Form<Percussion> percussionUpdateForm = form(Percussion.class).fill(Percussion.find.byId(id));
        return ok(views.html.percussionUpdateForm.render(percussionUpdateForm,id));
    }

    public static Result update(int id) {
        Form<Percussion> percussionUpdateForm = form(Percussion.class).fill(Percussion.find.byId(id)).bindFromRequest();
        if (percussionUpdateForm.hasErrors()) {
            return badRequest(views.html.percussionUpdateForm.render(percussionUpdateForm,id));
        }
        Percussion updatePercussion = percussionUpdateForm.get();
        updatePercussion.setId(id);
        updatePercussion.setPlayer(Integer.parseInt(percussionUpdateForm.data().get("player_id")));
        updatePercussion.update();
        return redirect(routes.PercussionControl.percussion());
    }

    public static Result percussion() {
    	return ok(percussion.render(
    		Percussion.find.all(), "none", ""
    	));
    }

    public static Result delete(int id) {
		Percussion.delete(id);
        return redirect(routes.PercussionControl.percussion());    	
    }

}
