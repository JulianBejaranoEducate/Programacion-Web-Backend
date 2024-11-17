package co.edu.entidadfinanciera.infraestructura;

import co.edu.entidadfinanciera.domain.TipoPersona;
import co.edu.entidadfinanciera.domain.TipoPersonaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping({"/tipopersonasrest"})
public class TipoPersonaRest {

    @Autowired
    TipoPersonaService service;

    // Persona
    @GetMapping("/tipopersona")
    public List<TipoPersona> listar() {
        return service.listar();
    }

    @PostMapping("/tipopersona/add")
    public TipoPersona agregar(@RequestBody TipoPersona p) {
        return service.add(p);
    }

    @GetMapping("/tipopersona/{id}")
    public TipoPersona listarId(@PathVariable("id") int id) {
        return service.listarId(id);
    }

    @PutMapping("/tipopersona/{id}")
    public TipoPersona editar(@RequestBody TipoPersona p, @PathVariable("id") int id) {
        p.setTipo_id(id);
        return service.edit(p);
    }

    @DeleteMapping("/tipopersona/{id}")
    public TipoPersona delete(@PathVariable("id") int id) {
        return service.delete(id);
    }
}
