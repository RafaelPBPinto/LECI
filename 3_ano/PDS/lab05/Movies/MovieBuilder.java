// Author: Rafael Pinto, 103379, p5_09

package Movies;

/*
 * MovieBuilder class implements the MovieBuilderInterface
 * Is used to create a movie object
 */
public class MovieBuilder implements MovieBuilderInterface {
    private Movie movie;

    /*
     * MovieBuilder constructor creates a new movie object
     */
    public MovieBuilder() {
        this.movie = new Movie();
    }

    /*
     * createMovie method creates a new movie object
     * @param name of the movie
     * @param year of the movie
     * @return movie object
     */
    public void createMovie(String name, int year) {
        setTitle(name);
        setYear(year);
    }

    /*
     * getMovie method returns the movie object
     * @return movie object
     */
    public Movie getMovie() {
        return this.movie;
    }

    /*
     * setTitle method sets the title of the movie object
     * @param title of the movie
     */
    public void setTitle(String title) {
        this.movie.setTitle(title);
    }

    /*
     * setMovieDirector method sets the director of the movie object
     * @param director of the movie
     */
    public void setMovieDirector(Person director) {
        this.movie.setDirector(director);
    }

    /*
     * setYear method sets the year of the movie object
     * @param year of the movie
     */
    public void setYear(int year) {
        this.movie.setYear(year);
    }

    /*
     * setMovieWriter method sets the writer of the movie object
     * @param writer of the movie
     */
    public void setMovieWriter(Person writer) {
        this.movie.setWriter(writer);
    }

    /*
     * setMovieSeries method sets the series of the movie object
     * @param series of the movie
     */
    public void setMovieSeries(String series) {
        this.movie.setSeries(series);
    }

    /*
     * addCastMember method adds a cast member to the movie object
     * @param actor of the movie
     */
    public void addCastMember(Person actor) {
        this.movie.addCastMember(actor);
    }

    /*
     * removeCastMember method removes a cast member from the movie object
     * @param actor of the movie
     */
    public void removeCastMember(Person actor) {
        this.movie.removeCastMember(actor);
    }

    /*
     * addMovieLocation method adds a location to the movie object
     * @param location of the movie
     */
    public void addMovieLocation(Place location) {
        this.movie.addMovieLocation(location);
    }

    /*
     * removeMovieLocation method removes a location from the movie object
     * @param location of the movie
     */
    public void removeMovieLocation(Place location) {
        this.movie.removeMovieLocation(location);
    }

    /*
     * addMovieGenre method adds a genre to the movie object
     * @param genre of the movie
     */
    public void addMovieGenre(String genre) {
        this.movie.addMovieGenre(genre);
    }

    /*
     * removeMovieGenre method removes a genre from the movie object
     * @param genre of the movie
     */
    public void removeMovieGenre(String genre) {
        this.movie.removeMovieGenre(genre);
    }

    /*
     * addMovieLanguage method adds a language to the movie object
     * @param language of the movie
     */
    public void addMovieLanguage(String language) {
        this.movie.addMovieLanguage(language);
    }

    /*
     * removeMovieLanguage method removes a language from the movie object
     * @param language of the movie
     */
    public void removeMovieLanguage(String language) {
        this.movie.removeMovieLanguage(language);
    }

    /*
     * setTelevision method sets the television attribute of the movie object
     * @param television attribute of the movie
     */
    public void setTelevision(boolean television) {
        this.movie.setTelevision(television);
    }

    /*
     * setNetflix method sets the netflix attribute of the movie object
     * @param netflix attribute of the movie
     */
    public void setNetflix(boolean netflix) {
        this.movie.setNetflix(netflix);
    }

    /*
     * setIndependent method sets the independent attribute of the movie object
     * @param independent attribute of the movie
     */
    public void setIndependent(boolean independent) {
        this.movie.setIndependent(independent);
    }
}
