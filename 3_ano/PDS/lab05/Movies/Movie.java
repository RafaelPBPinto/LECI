// Author: Rafael Pinto, 103379, p5_09

package Movies;

import java.util.List;
import java.util.ArrayList;

/*
 * Movie class
 * Represents a movie object
 */
public class Movie {
    private String title;
    private int year;
    private Person director;
    private Person writer;
    private String series;
    private List<Person> cast = new ArrayList<Person>();
    private List<Place> locations = new ArrayList<Place>();
    private List<String> languages = new ArrayList<String>();
    private List<String> genres = new ArrayList<String>();
    private boolean isTelevision;
    private boolean isNetflix;
    private boolean isIndependent;

    /*
     * getTitle method returns the title of the movie
     * @return title of the movie
     */
    public String getTitle() {
        return this.title;
    }

    /*
     * getYear method returns the year of the movie
     * @return year of the movie
     */
    public int getYear() {
        return this.year;
    }

    /*
     * getDirector method returns the director of the movie
     * @return director of the movie
     */
    public Person getDirector() {
        return this.director;
    }

    /*
     * getWriter method returns the writer of the movie
     * @return writer of the movie
     */
    public Person getWriter() {
        return this.writer;
    }

    /*
     * getSeries method returns the series of the movie
     * @return series of the movie
     */
    public String getSeries() {
        return this.series;
    }

    /*
     * getCast method returns the cast of the movie
     * @return cast of the movie
     */
    public List<Person> getCast() {
        return this.cast;
    }

    /*
     * getLocations method returns the locations of the movie
     * @return locations of the movie
     */
    public List<Place> getLocations() {
        return this.locations;
    }

    /*
     * getLanguages method returns the languages of the movie
     * @return languages of the movie
     */
    public List<String> getLanguages() {
        return this.languages;
    }

    /*
     * getGenres method returns the genres of the movie
     * @return genres of the movie
     */
    public List<String> getGenres() {
        return this.genres;
    }

    /*
     * isTelevision method returns true if the movie is on television
     * @return true if the movie is on television
     */
    public boolean isTelevision() {
        return this.isTelevision;
    }

    /*
     * isNetflix method returns true if the movie is on Netflix
     * @return true if the movie is on Netflix
     */
    public boolean isNetflix() {
        return this.isNetflix;
    }

    /*
     * isIndependent method returns true if the movie is independent
     * @return true if the movie is independent
     */
    public boolean isIndependent() {
        return this.isIndependent;
    }

    /*
     * setTitle method sets the title of the movie
     * @param title of the movie
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /*
     * setYear method sets the year of the movie
     * @param year of the movie
     */
    public void setYear(int year) {
        this.year = year;
    }

    /*
     * setDirector method sets the director of the movie
     * @param director of the movie
     */
    public void setDirector(Person director) {
        this.director = director;
    }

    /*
     * setWriter method sets the writer of the movie
     * @param writer of the movie
     */
    public void setWriter(Person writer) {
        this.writer = writer;
    }

    /*
     * setSeries method sets the series of the movie
     * @param series of the movie
     */
    public void setSeries(String series) {
        this.series = series;
    }

    /*
     * addCastMember method adds an actor to the cast of the movie
     * @param actor to add to the cast
     */
    public void addCastMember(Person actor) {
        this.cast.add(actor);
    }

    /*
     * removeCastMember method removes an actor from the cast of the movie
     * @param actor to remove from the cast
     */
    public void removeCastMember(Person actor) {
        this.cast.remove(actor);
    }

    /*
     * addMovieLocation method adds a location to the locations of the movie
     * @param location to add to the locations
     */
    public void addMovieLocation(Place location) {
        this.locations.add(location);
    }

    /*
     * removeMovieLocation method removes a location from the locations of the movie
     * @param location to remove from the locations
     */
    public void removeMovieLocation(Place location) {
        this.locations.remove(location);
    }

    /*
     * addMovieGenre method adds a genre to the genres of the movie
     * @param genre to add to the genres
     */
    public void addMovieGenre(String genre) {
        this.genres.add(genre);
    }

    /*
     * removeMovieGenre method removes a genre from the genres of the movie
     * @param genre to remove from the genres
     */
    public void removeMovieGenre(String genre) {
        this.genres.remove(genre);
    }

    /*
     * addMovieLanguage method adds a language to the languages of the movie
     * @param language to add to the languages
     */
    public void addMovieLanguage(String language) {
        this.languages.add(language);
    }

    /*
     * removeMovieLanguage method removes a language from the languages of the movie
     * @param language to remove from the languages
     */
    public void removeMovieLanguage(String language) {
        this.languages.remove(language);
    }

    /*
     * setTelevision method sets the television status of the movie
     * @param television status of the movie
     */
    public void setTelevision(boolean television) {
        this.isTelevision = television;
    }

    /*
     * setNetflix method sets the Netflix status of the movie
     * @param Netflix status of the movie
     */
    public void setNetflix(boolean netflix) {
        this.isNetflix = netflix;
    }

    /*
     * setIndependent method sets the independent status of the movie
     * @param independent status of the movie
     */
    public void setIndependent(boolean independent) {
        this.isIndependent = independent;
    }

    /*
     * toString method returns a string representation of the movie
     * @return string representation of the movie
     */
    @Override
    public String toString(){
        String s = String.format("Title: %s\nYear: %d\nDirector: %s\nWriter: %s\nSeries: %s\n", this.title, this.year, this.director, this.writer, this.series);
        s += "Cast:\n";
        for (Person p : this.cast) {
            s += String.format("\t%s\n", p);
        }
        s += "Locations:\n";
        for (Place p : this.locations) {
            s += String.format("\t%s\n", p);
        }
        s += "Languages:\n";
        for (String l : this.languages) {
            s += String.format("\t%s\n", l);
        }
        s += "Genres:\n";
        for (String g : this.genres) {
            s += String.format("\t%s\n", g);
        }
        s += String.format("On TV: %b\nOn Netflix: %b\nIs Independent: %b\n", this.isTelevision, this.isNetflix, this.isIndependent);
        return s;
    }
}
