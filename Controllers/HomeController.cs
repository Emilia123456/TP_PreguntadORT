using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP_PreguntadOrt.Models;

namespace TP_PreguntadOrt.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();
        
        return View();
    }

    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, dificultad, categoria);
        if(Juego._preguntas!=null){
            return View("Jugar");
        }else{
            return View("ConfigurarJuego");
        }
    }

    public IActionResult Jugar(int idPregunta)
    {
        ViewBag.SigPregunta=Juego.ObtenerProximaPregunta();
        if(Juego._preguntas!=null){
            ViewBag.SigRespuesta=Juego.ObtenerProximasRespuestas(idPregunta);
            return View("Jugar");
        }else{
            return View("Fin");
        }
    }

    [HttpPost] public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta){
        ViewBag.verificado=Juego.VerificarRespuesta(idPregunta, idRespuesta);
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
