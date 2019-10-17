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
        String tituloApp = "StudentCRUD";

        //Información local para Estudiantes base
        Estudiante estudiante1 = new Estudiante(20141130, "Jose", "Molina", "8295722702");
        Estudiante estudiante2 = new Estudiante(20171010, "Maria", "Perez", "8095720101");
        Estudiante estudiante3 = new Estudiante(20190202, "Natalie", "Guzman", "8296451789");

        ArrayList<Estudiante> estudiantes = new ArrayList<>();
        estudiantes.add(estudiante1);
        estudiantes.add(estudiante2);
        estudiantes.add(estudiante3);

        //Donde se mostrara la lista de Estudiantes o tambien decir la Tabla de ellos
        Spark.get("/estudiantes/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            //Pasando atributos de información para el ftl
            attributes.put("titulo", tituloApp);
            attributes.put("estudiantes", estudiantes);
            attributes.put("tituloCard", "Listado de Estudiantes");
            return new ModelAndView(attributes, "estudiantes.ftl");
        }, freeMarkerEngine);

        //Redirección general al listado de estudiantes
        Spark.get("/", (request, response)->{
            response.redirect("/estudiantes/");
            return "";
        });

        //Formulario para agregar el Estudiante
        Spark.get("/agregarEstudianteForm/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", tituloApp);
            attributes.put("tituloCard", "Agregar Estudiantes");
            return new ModelAndView(attributes, "agregarEstudiante.ftl");
        }, freeMarkerEngine);

        //Acción de Agregar al estudiante
        Spark.post("/agregarEstudiante/", (request, response) -> {
            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String telefono = request.queryParams("telefono");
            Estudiante estudiante = new Estudiante(matricula, nombre, apellido, telefono);
            estudiantes.add(estudiante);

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", tituloApp);
            attributes.put("estudiantes", estudiantes);
            response.redirect("/estudiantes/");
            return "";
        });

        Spark.get("/editarEstudiante/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", tituloApp);
            return new ModelAndView(attributes, "editarEstudiante.ftl");
        }, freeMarkerEngine);

        Spark.post("/editarEstudiante/:matricula", (request, response) -> {
            int matricula = Integer.parseInt(request.params("matricula"));
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String telefono = request.queryParams("telefono");
            Estudiante estudiante = new Estudiante(matricula, nombre, apellido, telefono);
            int posEstudiante = 0;
            for (Estudiante auxEstudiante: estudiantes) {
                if(auxEstudiante.getMatricula() == estudiante.getMatricula()) {
                    estudiantes.set(posEstudiante, auxEstudiante);
                    break;
                }else{
                    posEstudiante+=1;
                }
            }

            response.redirect("/estudiantes/");
            return "";
        });

        Spark.get("/eliminarEstudiante/:matricula", (request, response)->{
            int matricula = Integer.parseInt(request.params("matricula"));
            for (Estudiante estudiante: estudiantes) {
                if(estudiante.getMatricula() == matricula) {
                    estudiantes.remove(estudiante);
                    break;
                }
            }
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", tituloApp);
            attributes.put("estudiantes", estudiantes);
            response.redirect("/estudiantes/");
            return "";
        });
    }
}
