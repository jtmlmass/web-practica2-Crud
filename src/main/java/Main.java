import freemarker.template.Configuration;

import static spark.Spark.*;
import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.Redirect;
import spark.Spark;
import spark.template.freemarker.FreeMarkerEngine;

public class Main {
    public static void main(String[] args) {
        //Configuración para asignar donde se conseguiran todos los ftl de Freemarker
        Configuration configuration=new Configuration(Configuration.getVersion());
        configuration.setClassForTemplateLoading(Main.class, "/templates");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);


    }
}
