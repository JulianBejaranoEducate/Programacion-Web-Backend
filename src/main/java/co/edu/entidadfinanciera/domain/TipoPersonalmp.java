package co.edu.entidadfinanciera.domain;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipoPersonalmp implements TipoPersonaService{
    
    @Autowired
    private TipoPersonaRepository repositorio;
    
    @Override
    public List<TipoPersona> listar() {
        return repositorio.findAll();
    }

    @Override
    public TipoPersona listarId(int id) {
        return repositorio.findById(id);
    }

    @Override
    public TipoPersona add(TipoPersona p) {
        return repositorio.save(p);
    }

    @Override
    public TipoPersona edit(TipoPersona p) {
        return repositorio.save(p); 
    }

    @Override
    public TipoPersona delete(int id) {
        TipoPersona tPersona = repositorio.findById(id);
        if (tPersona != null) {
            repositorio.delete(tPersona);
        }
        return tPersona;
    }
    
}
