package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

import models.*;

import views.html.*;

public class SymphStringControl extends Controller {

    public static Result createForm() {
        Form<SymphonicString> symphonicstringForm = form(SymphonicString.class);
        return ok(views.html.symphonicstringForm.render(symphonicstringForm));
    }

    public static Result save() {
    	Form<SymphonicString> symphonicstringForm = form(SymphonicString.class).bindFromRequest();
    	if (symphonicstringForm.hasErrors()) {
    		return badRequest(views.html.symphonicstringForm.render(symphonicstringForm));
    	}
    	SymphonicString mySymphonicString = symphonicstringForm.get();
        if (SymphonicString.find.findRowCount() > 400) {
            return badRequest(symphonicstring.render(SymphonicString.find.all(),"inherit","Cannot add new Symphonic String entry at this time."));
        }
        else {
            mySymphonicString.setPlayer(Integer.parseInt(symphonicstringForm.data().get("player_id")));
            mySymphonicString.save();
        	return redirect(routes.SymphStringControl.symphonicstring());
        }
    }

    public static Result createUpdateForm(int id) {
        Form<SymphonicString> symphonicstringUpdateForm = form(SymphonicString.class).fill(SymphonicString.find.byId(id));
        return ok(views.html.symphonicstringUpdateForm.render(symphonicstringUpdateForm,id));
    }

    public static Result update(int id) {
        Form<SymphonicString> symphonicstringUpdateForm = form(SymphonicString.class).fill(SymphonicString.find.byId(id)).bindFromRequest();
        if (symphonicstringUpdateForm.hasErrors()) {
            return badRequest(views.html.symphonicstringUpdateForm.render(symphonicstringUpdateForm,id));
        }
        SymphonicString updateSymphonicString = symphonicstringUpdateForm.get();
        updateSymphonicString.setId(id);
        updateSymphonicString.setPlayer(Integer.parseInt(symphonicstringUpdateForm.data().get("player_id")));
        updateSymphonicString.update();
        return redirect(routes.SymphStringControl.symphonicstring());
    }

    public static Result symphonicstring() {
    	return ok(symphonicstring.render(
    		SymphonicString.find.all(), "none", ""
    	));
    }

    public static Result delete(int id) {
		SymphonicString.delete(id);
        return redirect(routes.SymphStringControl.symphonicstring());    	
    }

}
