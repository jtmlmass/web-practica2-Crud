import freemarker.template.Configuration;

import static spark.Spark.*;

import models.Estudiante;
import spark.ModelAndView;
import spark.Spark;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        staticFiles.location("publico");
        //Configuración para asignar donde se conseguiran todos los ftl de Freemarker
        Configuration configuration=new Configuration(Configuration.getVersion());
        configuration.setClassForTemplateLoading(Main.class, "/publico/templates");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);

        //Información local para Estudiantes base
        Estudiante estudiante1 = new Estudiante(20141130, "Jose", "Molina", "8295722702");
        Estudiante estudiante2 = new Estudiante(20171010, "Maria", "Perez", "8095720101");
        Estudiante estudiante3 = new Estudiante(20190202, "Natalie", "Guzman", "8296451789");

        ArrayList<Estudiante> estudiantes = new ArrayList<>();

        //Donde se mostrara la lista de Estudiantes o tambien decir la Tabla de ellos
        Spark.get("/estudiantes", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            //Pasando atributos de información para el ftl
            attributes.put("titulo", "Listado de Estudiantes");
            attributes.put("estudiantes", estudiantes);
            return new ModelAndView(attributes, "estudiantes.ftl");
        }, freeMarkerEngine);
    }
}
