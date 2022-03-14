import React, { useState } from "react";

const Movie = () => {
  const [movies, setMovies] = useState([]);
  
  await  function fetchMoviesHandler(){
    const response = await fetch('https://swapi.dev/api/films');
    const data = await response.json();

    const transformdMovies = data.results.map((movieData)=> {
      return {
        id: movieData.episode_id,
        title: movieData.title,
      };
    });
    setMovies(transformdMovies);
  } 
};

export default Movie