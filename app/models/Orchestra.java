package models;

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
}