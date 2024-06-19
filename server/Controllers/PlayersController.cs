namespace bank.Controllers;

[ApiController]
[Route("api/[controller]")]

public class PlayersController : ControllerBase
{
  private readonly Auth0Provider _auth;
  private readonly PlayersService _playersService;

  public PlayersController(Auth0Provider auth, PlayersService playersService)
  {
    _auth = auth;
    _playersService = playersService;
  }

  [HttpPost]
  public ActionResult<Player> CreatePlayer([FromBody] Player playerData)
  {
    try
    {
      Player player = _playersService.CreatePlayer(playerData);
      return Ok(player);
    }
    catch (Exception exception)
    {
      return BadRequest(exception.Message);
    }
  }

  [HttpGet]
  public ActionResult<List<Player>> GetPlayers()
  {
    try
    {
      List<Player> players = _playersService.GetPlayers();
      return Ok(players);
    }
    catch (Exception exception)
    {
      return BadRequest(exception.Message);
    }
  }
}