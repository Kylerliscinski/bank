using System.Data.Common;

namespace bank.Repositories;

public class PlayersRepository
{
  private readonly DbConnection _db;

  public PlayersRepository(DbConnection db)
  {
    _db = db;
  }

  internal Player CreatePlayer(Player playerData)
  {
    string sql = @"
      INSERT INTO 
      players(name, img, score)
      VALUES(Name, Img, Score);";

    Player player = _db.Query<Player>(sql, playerData).FirstOrDefault();
    return player;
  }
}