// Author: Rafael Pinto, 103379, p5_09

package Movies;

/*
 * Place class
 * Represents a place object
 */
public class Place {
    String city;
    String country;

    /*
     * Place constructor
     * Initializes the place object
     */
    public Place(String city, String country) {
        this.city = city;
        this.country = country;
    }

    /*
     * getCity method returns the city of the place
     * @return city of the place
     */
    public String getCity() {
        return this.city;
    }

    /*
     * getCountry method returns the country of the place
     * @return country of the place
     */
    public String getCountry() {
        return this.country;
    }

    /*
     * setCity method sets the city of the place
     * @param city the city of the place
     */
    public void setCity(String city) {
        this.city = city;
    }

    /*
     * setCountry method sets the country of the place
     * @param country the country of the place
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /*
     * toString method returns the string representation of the place
     * @return string representation of the place
     */
    @Override
    public String toString() {
        return this.city + ", " + this.country;
    }
}
