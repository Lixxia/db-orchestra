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
    	Form<Orchestra> orchestraForm = form(Orchestra.class).bindFromRequest().get();
    	if (orchestraForm.hasErrors()) {
    		return badRequest(views.html.update.render(orchestraForm));
    	}
    	orchestraForm.get().save();
    	flash("Success");
        System.out.println((Controller.request().queryString()).toString());
    	return ok(views.html.update.render(orchestraForm));
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
            return redirect(routes.Application.players());
    	}
    	else if(name.equals("Orchestra")) {
    		Orchestra.delete(id);
            return redirect(routes.Application.orchestra());
    	}
    	else if(name.equals("Brass")) {
    		Brass.delete(id);
            return redirect(routes.Application.brass());
    	}
    	else if(name.equals("Keyboard")) {
    		Keyboard.delete(id);
            return redirect(routes.Application.keyboard());
    	}
    	else if(name.equals("Percussion")) {
    		Percussion.delete(id);
            return redirect(routes.Application.percussion());
    	}
    	else if(name.equals("SymphonicString")) {
    		SymphonicString.delete(id);
            return redirect(routes.Application.symphonicstring());
    	}
    	else if(name.equals("Woodwind")) {
    		Woodwind.delete(id);
            return redirect(routes.Application.woodwind());
    	}
        else {
            return redirect(routes.Application.index());
        }
    	
    }

}
