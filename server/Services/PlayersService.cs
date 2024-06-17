
namespace bank.Services;

public class PlayersService
{
  private readonly PlayersRepository _repo;

  public PlayersService(PlayersRepository repo)
  {
    _repo = repo;
  }

  internal Player CreatePlayer(Player playerData)
  {
    Player player = _repo.CreatePlayer(playerData);
    return player;
  }
}