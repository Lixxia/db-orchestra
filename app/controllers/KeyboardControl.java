package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

import models.*;

import views.html.*;

public class KeyboardControl extends Controller {

    public static Result createForm() {
        Form<Keyboard> keyboardForm = form(Keyboard.class);
        return ok(views.html.keyboardForm.render(keyboardForm));
    }

    public static Result save() {
    	Form<Keyboard> keyboardForm = form(Keyboard.class).bindFromRequest();
    	if (keyboardForm.hasErrors()) {
    		return badRequest(views.html.keyboardForm.render(keyboardForm));
    	}
    	Keyboard myKeyboard = keyboardForm.get();
        if (Keyboard.find.findRowCount() > 100) {
            return badRequest(keyboard.render(Keyboard.find.all(),"inherit","Cannot add new Keyboard entry at this time."));
        }
        else {
            myKeyboard.setPlayer(Integer.parseInt(keyboardForm.data().get("player_id")));
            myKeyboard.save();
        	return redirect(routes.KeyboardControl.keyboard());
        }
    }

    public static Result createUpdateForm(int id) {
        Form<Keyboard> keyboardUpdateForm = form(Keyboard.class).fill(Keyboard.find.byId(id));
        return ok(views.html.keyboardUpdateForm.render(keyboardUpdateForm,id));
    }

    public static Result update(int id) {
        Form<Keyboard> keyboardUpdateForm = form(Keyboard.class).fill(Keyboard.find.byId(id)).bindFromRequest();
        if (keyboardUpdateForm.hasErrors()) {
            return badRequest(views.html.keyboardUpdateForm.render(keyboardUpdateForm,id));
        }
        Keyboard updateKeyboard = keyboardUpdateForm.get();
        updateKeyboard.setId(id);
        updateKeyboard.setPlayer(Integer.parseInt(keyboardUpdateForm.data().get("player_id")));
        updateKeyboard.update();
        return redirect(routes.KeyboardControl.keyboard());
    }

    public static Result keyboard() {
    	return ok(keyboard.render(
    		Keyboard.find.all(), "none", ""
    	));
    }

    public static Result delete(int id) {
		Keyboard.delete(id);
        return redirect(routes.KeyboardControl.keyboard());    	
    }

}
