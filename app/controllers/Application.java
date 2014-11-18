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
        return ok(views.html.index.render("Index"));
    }

    public static Result createForm(String path) {
        System.out.println(path);
        if(path.equals("players") || path.equals("/players")) {
            return redirect(routes.PlayersControl.createForm());
        }
        else if(path.equals("orchestra") || path.equals("/orchestra")) {
            return redirect(routes.OrchestraControl.createForm());
        }
        else if(path.equals("brass") || path.equals("/brass")) {
            return redirect(routes.BrassControl.createForm());
        }
        else if(path.equals("keyboard") || path.equals("/keyboard")) {
            return redirect(routes.KeyboardControl.createForm());
        }
        else if(path.equals("percussion") || path.equals("/percussion")) {
            return redirect(routes.PercussionControl.createForm());
        }
        else if(path.equals("symphonicstring") || path.equals("/symphonicstring")) {
            return redirect(routes.SymphStringControl.createForm());
        }
        else if(path.equals("woodwind") || path.equals("/woodwind")) {
            return redirect(routes.WoodwindControl.createForm());
        }
        else {
            return redirect(routes.Application.index());
        }
    }
}
