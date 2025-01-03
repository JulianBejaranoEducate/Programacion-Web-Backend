package co.edu.entidadfinanciera.domain;

import java.util.List;

public interface TipoPersonaService {

    List<TipoPersona> listar();

    TipoPersona listarId(int id);

    TipoPersona add(TipoPersona p);

    TipoPersona edit(TipoPersona p);

    TipoPersona delete(int id);
}
