package com.anadoree08.gamestore.Repository;

import org.springframework.data.repository.CrudRepository;

import com.anadoree08.gamestore.Model.Game;

public interface GameRepository extends CrudRepository<Game,Integer>{

    
}
