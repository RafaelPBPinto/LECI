// Author: Rafael Pinto, 103379, p5_09

import Movies.*;

import java.time.LocalDate;

/*
 * TestMovie class
 * Main class for testing the MovieBuilder pattern
 */
public class TestMovies {
    public static void main(String[] args) {
        // Build the movie Shrek
        MovieBuilder shrekBuilder = new MovieBuilder();
        shrekBuilder.createMovie("Shrek", 2001);
        buildShrek(shrekBuilder);
        Movie shrek = shrekBuilder.getMovie();
        
        // Build the movie High School Musical
        MovieBuilder hsmBuilder = new MovieBuilder();
        hsmBuilder.createMovie("High School Musical 2", 2007);
        buildHSM(hsmBuilder);
        Movie hsm = hsmBuilder.getMovie();

        // Build the movie La La Land
        MovieBuilder lalalandBuilder = new MovieBuilder();
        lalalandBuilder.createMovie("La La Land", 2016);
        buildLaLaLand(lalalandBuilder);
        Movie lalaland = lalalandBuilder.getMovie();

        System.out.println(shrek);
        System.out.println(hsm);
        System.out.println(lalaland);
    }

    public static void buildShrek(MovieBuilder builder){
        builder.setMovieDirector(new Person("Andrew Adamson", LocalDate.of(1966, 12, 1)));
        builder.setMovieWriter(new Person("William Steig", LocalDate.of(1907, 11, 14)));
        builder.setMovieSeries("Shrek");

        builder.addCastMember(new Person("Mike Myers", LocalDate.of(1963, 5, 25)));
        builder.addCastMember(new Person("Eddie Murphy", LocalDate.of(1961, 4, 3)));
        builder.addCastMember(new Person("Cameron Diaz", LocalDate.of(1972, 8, 30)));
        builder.addCastMember(new Person("John Lithgow", LocalDate.of(1945, 10, 19)));

        builder.addMovieLocation(new Place("Duloc", "Far Far Away"));
        builder.addMovieLanguage("English");
        builder.addMovieLanguage("Portuguese");
        builder.addMovieLanguage("Spanish");
        builder.addMovieLanguage("French");
        builder.addMovieLanguage("German");
        builder.addMovieLanguage("Italian");
        builder.addMovieLanguage("Japanese");
        builder.addMovieGenre("Animation");
        builder.addMovieGenre("Comedy");
        builder.addMovieGenre("Adventure");
        builder.addMovieGenre("Fantasy");
        builder.addMovieGenre("Family Friendly");
        builder.setTelevision(false);
        builder.setNetflix(true);
        builder.setIndependent(false);
    }

    public static void buildHSM(MovieBuilder builder){
        builder.setMovieDirector(new Person("Kenny Ortega", LocalDate.of(1950, 4, 18)));
        builder.setMovieWriter(new Person("Peter Barsocchini", LocalDate.of(1952, 1, 1)));
        builder.setMovieSeries("High School Musical");

        builder.addCastMember(new Person("Zac Efron", LocalDate.of(1987, 10, 18)));
        builder.addCastMember(new Person("Vanessa Hudgens", LocalDate.of(1988, 12, 14)));
        builder.addCastMember(new Person("Ashley Tisdale", LocalDate.of(1985, 7, 2)));

        builder.addMovieLocation(new Place("Salt Lake City, Utah", "USA"));
        builder.addMovieLanguage("English");
        builder.addMovieGenre("Musical");
        builder.addMovieGenre("Comedy");
        builder.addMovieGenre("Drama");
        builder.setTelevision(false);
        builder.setNetflix(false);
        builder.setIndependent(false);
    }

    public static void buildLaLaLand(MovieBuilder builder){
        builder.setMovieDirector(new Person("Damien Chazelle", LocalDate.of(1985, 1, 19)));
        builder.setMovieWriter(new Person("Damien Chazelle", LocalDate.of(1985, 1, 19)));
        builder.setMovieSeries("La La Land");

        builder.addCastMember(new Person("Ryan Gosling", LocalDate.of(1980, 11, 12)));
        builder.addCastMember(new Person("Emma Stone", LocalDate.of(1988, 11, 6)));
        builder.addCastMember(new Person("J.K. Simmons", LocalDate.of(1955, 1, 9)));

        builder.addMovieLocation(new Place("Los Angeles, California", "USA"));
        builder.addMovieLanguage("English");
        builder.addMovieGenre("Musical");
        builder.addMovieGenre("Comedy");
        builder.addMovieGenre("Drama");
        builder.addMovieGenre("Romance");
        builder.setTelevision(false);
        builder.setNetflix(false);
        builder.setIndependent(true);
    }
}
