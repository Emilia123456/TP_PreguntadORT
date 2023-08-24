using Dapper;
using System.Data.SqlClient;

public class BD{
    //FALTAN TODOS LOS STORED PROCEDURES
    //conectamos el tp con la base de datos
    private static string _connectionString = @"Server=localhost; DataBase=PreguntadOrt;Trusted_Connection=True;";

    public static List<Categorias> ObtenerCategorias(){
        string sql = "exec sp_ObtenerCategorias";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            return db.Query<Categorias>(sql).ToList();
        }

    }

    public static List<Dificultades> ObtenerDificultades(){
        string sql = "exec sp_ObtenerDificultades";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            return db.Query<Dificultades>(sql).ToList();
        }
    }
    
    //falta hacer que cuando pongan opcion -1 sean todas las categorias o dificultades 
    public static List<Preguntas> ObtenerPreguntas(int dificultad, int categoria){
        string sql = "exec sp_ObtenerPreguntas @pdificultad, @pcategoria";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            return db.Query<Preguntas>(sql, new {pdificultad=dificultad, pcategoria=categoria}).ToList(); //reemplazar  dificultad y categoria
        }
    }

    public static List<Respuestas> ObtenerRespuestas(List<Preguntas> preguntas){
        
        string sql = "exec sp_ObtenerRespuestas @idPregunta";
        List<Respuestas> respuestas = new List <Respuestas>();

        using(SqlConnection db = new SqlConnection(_connectionString)){ 
            foreach(Preguntas pregunta in preguntas){
                respuestas.AddRange(db.Query<Respuestas> (sql, new {idPregunta = pregunta.idPregunta}).ToList());
            }
            return respuestas;
        }
    }

}