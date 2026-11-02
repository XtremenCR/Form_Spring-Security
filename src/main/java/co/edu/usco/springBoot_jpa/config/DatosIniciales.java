package co.edu.usco.springBoot_jpa.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import co.edu.usco.springBoot_jpa.model.Role;
import co.edu.usco.springBoot_jpa.model.Usuario;
import co.edu.usco.springBoot_jpa.repository.RoleRepository;
import co.edu.usco.springBoot_jpa.repository.UsuarioRepository;

@Component
public class DatosIniciales implements CommandLineRunner {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void run(String... args) {

        // Crear los roles solamente si todavía no existen
        obtenerOCrearRol("ESTUDIANTE");
        obtenerOCrearRol("GRADUADO");
        obtenerOCrearRol("DOCENTE");
        obtenerOCrearRol("ADMIN");

        // Evitar insertar nuevamente los usuarios
        if (usuarioRepository.count() > 0) {
            return;
        }

        // Crear usuarios iniciales
        crearUsuario("admin", "admin1234", "ADMIN");
        crearUsuario("docente1", "docente1234", "DOCENTE");
        crearUsuario("maria", "maria123", "ESTUDIANTE");
        crearUsuario("juan", "juan123", "ESTUDIANTE", "GRADUADO");
        crearUsuario("ana", "gabriel123", "GRADUADO", "DOCENTE");
    }

    // Buscar un rol. Si no existe, crearlo.
    private Role obtenerOCrearRol(String nombre) {

        return roleRepository.findByName(nombre)
                .orElseGet(() -> roleRepository.save(new Role(nombre)));
    }

    // Crear usuarios y asignarles sus respectivos roles
    private void crearUsuario(String username, String clave, String... nombresRoles) {

        Usuario u = new Usuario();

        u.setUsername(username);
        u.setPassword(passwordEncoder.encode(clave));
        u.setEnabled(true);

        for (String nombre : nombresRoles) {

            Role role = obtenerOCrearRol(nombre);

            u.getRoles().add(role);
        }

        usuarioRepository.save(u);
    }
}