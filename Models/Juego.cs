public class Juego{
    public string _username {get; set;}
    public int _puntajeActual {get; set;}
    public int _cantidadPreguntasCorrectas {get; set;}
    public List<Pregunta> _preguntas {get; set;}
    public List<Respuesta> _respuestas {get; set;}
    public List<Categorias> _categorias {get; set;}
    public List<Dificultades> _dificultades {get; set;}
}

public static void InicializarJuego(){
    _username = "";
    _puntajeActual = 0;
    _cantidadPreguntasCorrectas = 0;
}

public static void ObtenerCategorias(){
    _categorias = BD.ObtenerCategorias();
}

public static void ObtenerDificultades(){
    _dificultades = BD.ObtenerDificultades();
}
