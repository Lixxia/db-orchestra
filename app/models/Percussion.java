package models;

@Entity
@Table(name = "Percussion")
public class Percussion extends Model {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "instrument")
	private String instrument;

	@Column(name = "type")
	private String type;

	@Column(name = "player_id")
	private int player_id;

}