package controllers;

import play.*;
import play.mvc.*;
import play.data.*;
import static play.data.Form.*;
import static play.data.Form.form;

import models.*;

import views.html.*;

public class PlayersControl extends Controller {

    public static Result createForm() {
        Form<Players> playersForm = form(Players.class);
        return ok(views.html.playersForm.render(playersForm));
    }

    public static Result save() {
    	Form<Players> playersForm = form(Players.class).bindFromRequest();
    	if (playersForm.hasErrors()) {
    		return badRequest(views.html.playersForm.render(playersForm));
    	}
    	Players myPlayers = playersForm.get();
        myPlayers.save();
    	return redirect(routes.PlayersControl.players());
    }

    public static Result players() {
    	return ok(players.render(
    		Players.find.all()
    	));
    }

    public static Result update(int id) {
    	return TODO;
    }

    public static Result delete(int id) {
		Players.delete(id);
        return redirect(routes.PlayersControl.players());    	
    }

}
