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
        mySymphonicString.save();
    	return redirect(routes.SymphStringControl.symphonicstring());
    }

    public static Result createUpdateForm(int id) {
        Form<SymphonicString> symphonicstringUpdateForm = form(SymphonicString.class).fill(SymphonicString.find.byId(id));
        return ok(views.html.symphonicstringUpdateForm.render(symphonicstringUpdateForm));
    }

    public static Result update(int id) {
        Form<SymphonicString> symphonicstringUpdateForm = form(SymphonicString.class).fill(SymphonicString.find.byId(id)).bindFromRequest();
        if (symphonicstringUpdateForm.hasErrors()) {
            return badRequest(views.html.symphonicstringUpdateForm.render(symphonicstringUpdateForm));
        }
        SymphonicString updateSymphonicString = symphonicstringUpdateForm.get();
        updateSymphonicString.setId(id);
        // Ebean.update(updateSymphonicString);
        updateSymphonicString.update();
        return redirect(routes.SymphStringControl.symphonicstring());
    }

    public static Result symphonicstring() {
    	return ok(symphonicstring.render(
    		SymphonicString.find.all()
    	));
    }

    public static Result delete(int id) {
		SymphonicString.delete(id);
        return redirect(routes.SymphStringControl.symphonicstring());    	
    }

}
