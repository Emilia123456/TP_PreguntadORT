using System.Data.SqlClient;
using Dapper;
public class BD{
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

    public static List<Preguntas> ObtenerPreguntas(int dificultad, int categoria){
        string sql = "exec sp_ObtenerPreguntas dificultad, categoria";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            return db.Query<Preguntas>(sql).ToList();
        }
    }

    public static List<Respuestas> ObtenerRespuestas(List<Pregunta> preguntas){
        string sql = "exec sp_ObtenerRespuestas preguntas";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            return db.Query<Respuestas>(sql).ToList();
        }
    }
}