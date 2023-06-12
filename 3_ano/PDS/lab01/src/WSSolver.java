import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

public class WSSolver {
    public static void main(String[] args){
        if (args.length != 1){
            System.out.println("Usage: java WSSolver <filename>");
            System.exit(1);
        }
        String file = args[0];
        List<String> lines = FileUtils.readFile(file);
        List<String> puzzle = new ArrayList<>();
        List<String> words = new ArrayList<>();
        String solution;

        puzzle = getPuzzle(lines);
        words = getWords(lines);

        if (validateData(puzzle, words)){
            solution = solvePuzzle(puzzle, words);
            System.out.println(solution);
            int lastDotIndex = file.lastIndexOf(".");
            String newFile = file.substring(0, lastDotIndex) + "_result" + file.substring(lastDotIndex);
            FileUtils.printFile(solution, newFile);
        } else {
            System.out.println("Invalid file!");
            System.exit(1);
        }
    }

    private static List<String> getPuzzle(List<String> lines){
        ArrayList<String> puzzle = new ArrayList<>();
        for(int i = 0; i < lines.size(); i++){
            if(!lines.get(i).contains(";")){
                puzzle.add(lines.get(i));
            }
        }
        return puzzle;
    }

    private static List<String> getWords(List<String> lines){
        List<String> words_lines = new ArrayList<>();
        List<String> words = new ArrayList<>();
        for(int i = 0; i < lines.size(); i++){
            if(lines.get(i).contains(";") || lines.get(i).contains(",") || lines.get(i).contains("\s")){
                words_lines.add(lines.get(i));
            }
        }
        for(int i = 0; i < words_lines.size(); i++){
            String[] temp = words_lines.get(i).split("[;\s,]"); //split on ;, whitespace, and ,
            for(int row = 0; row < temp.length; row++){
                words.add(temp[row]);
            }
        }
        return words;
    }

    private static boolean validateData(List<String> puzzle, List<String> words){
        if (emptyString(puzzle) || emptyString(words) || !validatePuzzle(puzzle) || !validateWords(words)){
            return false;
        }
        return true;
    }

    //check if there are any empty strings in the list
    private static boolean emptyString(List<String> list){
        for(int i = 0; i < list.size(); i++){
            if(list.get(i).equals("")){
                return true;
            }
        }
        return false;
    }

    private static boolean validatePuzzle(List<String> puzzle){
        //check if puzzle is square
        if (!isSquare(puzzle)){
            System.out.println("Puzzle is not square");
            return false;
        }
        //check if puzzle contains only letters and upper case
        if (!isAlphabetical(puzzle) && !isUpperCase(puzzle)){
            System.out.println("Puzzle contains non-letter characters");
            return false;
        }
        return true;
    }

    private static boolean validateWords(List<String> words){
        //check if words are allphabetical
        if (!isAlphabetical(words)){
            System.out.println("Words are not alphabetical");
            return false;
        }
        //check if the words contain atleast 3 letters
        if (!isLongEnough(words)){
            System.out.println("Words are not long enough");
            return false;
        }
        return true;
    }

    private static boolean isSquare(List<String> puzzle){
        int size = puzzle.size();
        for(int i = 0; i < size; i++){
            if(puzzle.get(i).length() != size){
                return false;
            }
        }
        return true;
    }

    private static boolean isUpperCase(List<String> puzzle){
        for(int i = 0; i < puzzle.size(); i++){
            for(int row = 0; row < puzzle.get(i).length(); row++){
                if(!Character.isUpperCase(puzzle.get(i).charAt(row))){
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean isAlphabetical(List<String> words){
        for(int i = 0; i < words.size(); i++){
            for(int row = 0; row < words.get(i).length(); row++){
                if(!Character.isLetter(words.get(i).charAt(row))){
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean isLongEnough(List<String> words){
        for(int i = 0; i < words.size(); i++){
            if(words.get(i).length() < 3){
                return false;
            }
        }
        return true;
    }

    private static String solvePuzzle(List<String> puzzle, List<String> words){
        Map<String, Map<String,Integer>> word_coordinates_map = new HashMap<>(); //map words with its first letter coordinates
        Map<String, String> word_position_map = new HashMap<>(); // map words with its orientation on the puzzle
        List<Map<String,Integer>> positions_to_show_map = new ArrayList<>(); //List with the puzzle positions coordinates to print (used to print solved puzzle) 
        for(int i = 0; i < words.size(); i++){
            String word = words.get(i);
            word = word.toUpperCase();
            for(int row = 0; row < puzzle.size(); row++){
                for(int column = 0; column < puzzle.size(); column++){
                    //check if word is in puzzle horizontally
                    if(word.charAt(0) == puzzle.get(row).charAt(column)){
                        if(word.length() + column <= puzzle.size()){
                            String temp_right = puzzle.get(row).substring(column, column + word.length());
                            if(temp_right.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "Right");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1);
                                    temp_coordinates.put("column", column+1+l);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                        if(column - word.length() + 1 >= 0){
                            String temp_left = "";
                            for(int l = 0; l < word.length(); l++){
                                temp_left += puzzle.get(row).charAt(column - l);
                            }
                            if(temp_left.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "Left");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1);
                                    temp_coordinates.put("column", column+1-l);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                        //check if word is in puzzle vertically
                        if(word.length() + row <= puzzle.size()){
                            String temp_down = "";
                            for(int l = 0; l < word.length(); l++){
                                temp_down += puzzle.get(row + l).charAt(column);
                            }
                            if(temp_down.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "Down");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1+l);
                                    temp_coordinates.put("column", column+1);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                        if(row - word.length() + 1 >= 0){
                            String temp_up = "";
                            for(int l = 0; l < word.length(); l++){
                                temp_up += puzzle.get(row - l).charAt(column);
                            }
                            if(temp_up.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "Up");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1-l);
                                    temp_coordinates.put("column", column+1);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                        //check if word is in puzzle diagonally
                        if(word.length() + column <= puzzle.size() && word.length() + row <= puzzle.size()){
                            String temp_down_right = "";
                            for(int l = 0; l < word.length(); l++){
                                temp_down_right += puzzle.get(row + l).charAt(column + l);
                            }
                            if(temp_down_right.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "DownRight");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1+l);
                                    temp_coordinates.put("column", column+1+l);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                        if(word.length() + column <= puzzle.size() && row - word.length() + 1 >= 0){
                            String temp_up_right = "";
                            for(int l = 0; l < word.length(); l++){
                                temp_up_right += puzzle.get(row - l).charAt(column + l);
                            }
                            if(temp_up_right.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "UpRight");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1-l);
                                    temp_coordinates.put("column", column+1+l);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                        if(column - word.length() + 1 >= 0 && word.length() + row <= puzzle.size()){
                            String temp_down_left = "";
                            for(int l = 0; l < word.length(); l++){
                                temp_down_left += puzzle.get(row + l).charAt(column - l);
                            }
                            if(temp_down_left.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "DownLeft");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1+l);
                                    temp_coordinates.put("column", column+1-l);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                        if(column - word.length() + 1 >= 0 && row - word.length() + 1 >= 0){
                            String temp_up_left = "";
                            for(int l = 0; l < word.length(); l++){
                                temp_up_left += puzzle.get(row - l).charAt(column - l);
                            }
                            if(temp_up_left.equals(word)){
                                Map<String, Integer> coordinates = new HashMap<>();
                                coordinates.put("row", row+1);
                                coordinates.put("column", column+1);
                                word_coordinates_map.put(word, coordinates);
                                word_position_map.put(word, "UpLeft");
                                // add coordinates to positions_to_show_map
                                for(int l = 0; l < word.length(); l++){
                                    Map<String, Integer> temp_coordinates = new HashMap<>();
                                    temp_coordinates.put("row", row+1-l);
                                    temp_coordinates.put("column", column+1-l);
                                    positions_to_show_map.add(temp_coordinates);
                                }
                                break;
                            }
                        }
                    }
                }
            }
        }
        String solution = getSolution(puzzle, word_coordinates_map, word_position_map, positions_to_show_map);
        return solution;
    }

    private static String getSolution(List<String> puzzle, Map<String, Map<String, Integer>> word_coordinates, Map<String, String> word_position, List<Map<String, Integer>> positions_to_show) {
        String solution = "";
        for(String word : word_coordinates.keySet()){
            solution += String.format("%-14s%-4d%d,%d\t%s\n", word, word.length(), word_coordinates.get(word).get("row"), word_coordinates.get(word).get("column"), word_position.get(word));
        }
        solution += "\n";
        for(int i = 0; i < puzzle.size(); i++){
            for(int row = 0; row < puzzle.size(); row++){
                Map<String, Integer> temp_coordinates = new HashMap<>();
                temp_coordinates.put("row", i+1);
                temp_coordinates.put("column", row+1);
                if(positions_to_show.contains(temp_coordinates)){
                    solution += String.format("%-2s", puzzle.get(i).charAt(row));
                } else {
                    solution += String.format("%-2s", ".");
                }
            }
            solution += "\n";
        }
        return solution;
    }   
}
