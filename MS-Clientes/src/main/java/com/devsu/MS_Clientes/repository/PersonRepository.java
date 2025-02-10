package com.devsu.MS_Clientes.repository;


import com.devsu.MS_Clientes.model.Person;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PersonRepository extends JpaRepository<Person, Integer> {

    Optional<Person> findByPersonDni(String personDni);
}
