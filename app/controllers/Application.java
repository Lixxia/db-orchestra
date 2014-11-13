package controllers;

import play.*;
import play.mvc.*;

import views.html.*;

public class Application extends Controller {

    public static Result index() {
        return ok("App is ready.");
    }

    public static Result addRow() {
    	// do the thing
    }

    public static Result updateRow(int id) {
    	// do the other thing
    }

    public static Result deleteRow(int id) {
    	//do the delete thing
    }

}
