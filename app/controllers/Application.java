package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

import models.*;

import views.html.*;

public class Application extends Controller {

    public static Result index() {
        return ok(index.render(
        	Orchestra.find.all(),
        	Players.find.all()
        ));
    }

    public static Result update() {
    	Form<Players> playerForm = form(Players.class).bindFromRequest();
    	if (playerForm.hasErrors()) {
    		return badRequest(views.html.update.render(playerForm));
    	}
    	playerForm.get().save();
    	flash("Success");
    	return redirect(routes.Application.players());
    }

    //Controllers for each table
    public static Result players() {
    	return ok(players.render(
    		Players.find.all()
    	));
    }

    public static Result orchestra() {
    	return ok(orchestra.render(
    		Orchestra.find.all()
    	));
    }

	public static Result brass() {
    	return ok(brass.render(
    		Brass.find.all()
    	));
    }   

    public static Result woodwind() {
    	return ok(woodwind.render(
    		Woodwind.find.all()
    	));
    }

    public static Result keyboard() {
    	return ok(keyboard.render(
    		Keyboard.find.all()
    	));
    } 

    public static Result percussion() {
    	return ok(percussion.render(
    		Percussion.find.all()
    	));
    }

    public static Result symphonicstring() {
    	return ok(symphonicstring.render(
    		SymphonicString.find.all()
    	));
    }

    public static Result addRow(String name) {
    	return TODO;
    }

    public static Result updateRow(String name, int id) {
    	return TODO;
    }

    public static Result deleteRow(String name, int id) {
    	if(name.equals("Players")) {
    		Players.delete(id);
    	}
    	else if(name.equals("Orchestra")) {
    		Orchestra.delete(id);
    	}
    	else if(name.equals("Brass")) {
    		Brass.delete(id);
    	}
    	else if(name.equals("Keyboard")) {
    		Keyboard.delete(id);
    	}
    	else if(name.equals("Percussion")) {
    		Percussion.delete(id);
    	}
    	else if(name.equals("SymphonicString")) {
    		SymphonicString.delete(id);
    	}
    	else if(name.equals("Woodwind")) {
    		Woodwind.delete(id);
    	}
    	return redirect(routes.Application.players());
    }

}
