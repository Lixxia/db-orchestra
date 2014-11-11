package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Orchestra")
public class Orchestra extends Model {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "type")
	private String type;

	@Column(name = "num_players")
	private int num_players;

	@Column(name = "style")
	private String style;

	@JsonIgnore
    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	private Player myPlayer;
}