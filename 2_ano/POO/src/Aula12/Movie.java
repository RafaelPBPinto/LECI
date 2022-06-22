package Aula12;

public class Movie implements Comparable<Movie> {
    private String name;
    private double score;
    private String rating;
    private String genre;
    private int time;

    public Movie(String name, double score, String rating, String genre, int time){
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.time = time;
    }

    public String getName(){
        return name;
    }

    public double getScore(){
        return score;
    }

    public String getRating(){
        return rating;
    }

    public String getGenre(){
        return genre;
    }

    public int getTime(){
        return time;
    }

    public int compareTo(Movie m){
        if(score == m.score){
            return 0;
        }else if(score > m.score){
            return -1;
        }else{
            return 1;
        }
    }

    @Override
    public String toString(){
        return String.format("%s\t%.1f\t%s\t%s\t%d\n", name, score, rating, genre, time);
    }
}
