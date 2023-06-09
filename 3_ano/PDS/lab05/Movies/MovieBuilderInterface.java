// Author: Rafael Pinto, 103379, p5_09

package Movies;

/*
 * MovieBuilder interface
 * Defines the methods that a movie builder class must implement
 */
public interface MovieBuilderInterface {
    public void createMovie(String name, int year);
    public Movie getMovie();
    public void setTitle(String title);
    public void setMovieDirector(Person director);
    public void setYear(int year);
    public void setMovieWriter(Person writer);
    public void setMovieSeries(String series);
    public void addCastMember(Person actor);
    public void removeCastMember(Person actor);
    public void addMovieLocation(Place location);
    public void removeMovieLocation(Place location);
    public void addMovieGenre(String genre);
    public void removeMovieGenre(String genre);
    public void addMovieLanguage(String language);
    public void removeMovieLanguage(String language);
    public void setTelevision(boolean television);
    public void setNetflix(boolean netflix);
    public void setIndependent(boolean independent);
}
