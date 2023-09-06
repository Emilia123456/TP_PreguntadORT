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

        public IActionResult Creditos()
    {
        return View();
    }

    public IActionResult ConfigurarJuego()
    {
        ViewBag.listaDificultades=BD.ObtenerDificultades();
        ViewBag.listaCategorias=BD.ObtenerCategorias();

        Juego.InicializarJuego();
           
        return View();
    }

    [HttpPost]
    public IActionResult Comenzar(string _username, int dificultad, int categoria, int _puntajeActual)
    {
        Juego.CargarPartida(_username, dificultad, categoria);
        Juego._username=_username;
        Juego._puntajeActual=_puntajeActual;
        if(Juego._preguntas!=null){
           return RedirectToAction("Jugar");

        }else{
            return View("ConfigurarJuego");
        }
    }

    public IActionResult Jugar()
    {
        ViewBag.username = Juego._username; 
        ViewBag.puntajeActual = Juego._puntajeActual;
        ViewBag.SigPregunta=Juego.ObtenerProximaPregunta();
        ViewBag.cantidadPreguntas = Juego._cantidadPreguntas;
        if(Juego._preguntas!=null){
            ViewBag.SigRespuesta=Juego.ObtenerProximasRespuestas( ViewBag.SigPregunta.idPregunta);
            
            return View("Jugar");   
        }else{
            return View("Fin");
        }
    }
 // RESOLVER
 [HttpGet]
public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
{
    //verificado es un booleano que te dice si es correcta o no
        bool ok=false;
        string TXT;
        string TXTcont="";
        ok=Juego.VerificarRespuesta(idPregunta, idRespuesta);
        if(ok){
            TXT="¡Respuesta correcta!!";
            TXTcont="Se te suman 50 puntos";
        }else{
            TXT="Respuesta incorrecta :(";
        }
       
        ViewBag.txtCont=TXTcont;
        ViewBag.username = Juego._username; 
        ViewBag.puntajeActual = Juego._puntajeActual;
        return View("Respuesta");
}


    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
