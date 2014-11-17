package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;

import models.*;

import views.html.*;

public class Application extends Controller {

    public static Result index() {
        return ok(index.render(
        	Orchestra.find.all(),
        	Players.find.all()
        ));
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

    public static Result updateRow(int id) {
    	return TODO;
    }

    public static Result deleteRow(int id) {
    	Players.delete(id);
    	return redirect(routes.Application.index());
    }

}
