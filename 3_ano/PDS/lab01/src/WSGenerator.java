import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

public class WSGenerator {
    public static void main(String[] args) {
        if(args.length < 4) {
            System.out.println("Usage: java WSGenerator -i <input_file> -s <puzzle_size>");
            System.exit(1);
        }
        String input_file = "";
        int puzzle_size = 0;
        String output_file = "";
        for(int i = 0; i < args.length; i++){
            switch(args[i]){
                case "-i":
                    input_file = args[i+1];
                    break;
                case "-s":
                    puzzle_size = Integer.parseInt(args[i+1]);
                    break;
                case "-o":
                    output_file = args[i+1];
                    break; 
            }
        }
        List<String> lines = new ArrayList<String>();
        lines = FileUtils.readFile(input_file);
        List<String> words = new ArrayList<String>();
        // if a line as more than one word, split it and add each word to the list
        for(int i = 0; i < lines.size(); i++){
            if(lines.get(i).contains("\s") || lines.get(i).contains(",") || lines.get(i).contains(";")){
                String[] splitWords = lines.get(i).split("[;\s,]");
                for(int j = 0; j < splitWords.length; j++){
                    words.add(splitWords[j]);
                }
            } else {
                words.add(lines.get(i));
            }
        }
        int max_word_length = getMaxWordLength(words);
        int number_of_characters = getNumberOfCharacters(words);
        if(!validParameters(max_word_length, number_of_characters, puzzle_size)){
            System.out.println("Puzzle size is too small for the words in the file");
            System.exit(1);
        }
        String puzzle = generatePuzzle(words, puzzle_size);
        System.out.println(puzzle);
        if(output_file != ""){
            FileUtils.printFile(puzzle, output_file);
        }
    }

    private static int getNumberOfCharacters(List<String> words){
        int number_of_characters = 0;
        for(int i = 0; i < words.size(); i++){
            number_of_characters += words.get(i).length();
        }
        return number_of_characters;
    }

    private static int getMaxWordLength(List<String> words){
        int max_length = 0;
        for(int i = 0; i < words.size(); i++){
            if(words.get(i).length() > max_length){
                max_length = words.get(i).length();
            }
        }
        return max_length;
    }

    private static boolean validParameters(int max, int number_of_characters, int puzzle_size){
        if(max > puzzle_size){
            return false;
        }
        if(number_of_characters > puzzle_size * puzzle_size){
            return false;
        }
        return true;
    }

    private static String generatePuzzle(List<String> words, int puzzle_size) {
        Map<String, String> word_orientation = new HashMap<>();
        Map<String, Map<String, Integer>> word_start_position = new HashMap<>();
        List<Map<Character, Map<String,Integer>>> letter_positions = new ArrayList<>();
        List<Map<String,Integer>> occupied_positions = new ArrayList<>();
        for(int i=0; i < words.size(); i++){
            String word = words.get(i);
            int word_length = word.length();
            // generate random orientation horizontal, vertical or diagonal
            int orientation = (int) (Math.random() * 8);
            switch(orientation){
                case 0:
                    word_orientation.put(word, "left");
                    break;
                case 1:
                    word_orientation.put(word, "right");
                    break;
                case 2:
                    word_orientation.put(word, "up");
                    break;
                case 3:
                    word_orientation.put(word, "down");
                    break;
                case 4:
                    word_orientation.put(word, "upleft");
                    break;
                case 5:
                    word_orientation.put(word, "upright");
                    break;
                case 6:
                    word_orientation.put(word, "downleft");
                    break;
                case 7:
                    word_orientation.put(word, "downright");
                    break;
            }
            // generate random start position
            Map<String, Integer> start_position = new HashMap<>();
            do{
                int x = (int) (Math.random() * puzzle_size);
                int y = (int) (Math.random() * puzzle_size);
                start_position.put("x", x);
                start_position.put("y", y);
            } while(!checkPosition(start_position, word_orientation.get(word), word_length, puzzle_size, occupied_positions));
            word_start_position.put(word, start_position);
            // get rest of word letters position
            for(int j = 0; j < word_length; j++){
                Map<Character, Map<String, Integer>> letter_position = new HashMap<>();
                Map<String, Integer> position = new HashMap<>();
                switch(word_orientation.get(word)){
                    case "right":
                        position.put("x", start_position.get("x") + j);
                        position.put("y", start_position.get("y"));
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;
                    case "left":
                        position.put("x", start_position.get("x") - j);
                        position.put("y", start_position.get("y"));
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;
                    case "up":
                        position.put("x", start_position.get("x"));
                        position.put("y", start_position.get("y") - j);
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;
                    case "down":
                        position.put("x", start_position.get("x"));
                        position.put("y", start_position.get("y") + j);
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;
                    case "upright":
                        position.put("x", start_position.get("x") + j);
                        position.put("y", start_position.get("y") - j);
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;
                    case "upleft":
                        position.put("x", start_position.get("x") - j);
                        position.put("y", start_position.get("y") - j);
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;
                    case "downright":
                        position.put("x", start_position.get("x") + j);
                        position.put("y", start_position.get("y") + j);
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;
                    case "downleft":
                        position.put("x", start_position.get("x") - j);
                        position.put("y", start_position.get("y") + j);
                        letter_position.put(word.charAt(j), position);
                        occupied_positions.add(position);
                        break;    
                }
                letter_positions.add(letter_position);
            }
        }
        // get String representation of puzzle
        String puzzle = puzzleAsString(puzzle_size, letter_positions, words);
        return puzzle;
    }

    private static boolean checkPosition(Map<String, Integer> start_position, String orientation, int word_length, int puzzle_size, List<Map<String, Integer>> occupied_positions) {
        int x = start_position.get("x");
        int y = start_position.get("y");
        // check if word fits in puzzle and doesn't overlap with other words
        switch(orientation){
            case "right":
                if(x + word_length > puzzle_size){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x + i);
                    position.put("y", y);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
            case "left":
                if(x - word_length < 0){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x - i);
                    position.put("y", y);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
            case "up":
                if(y - word_length < 0){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x);
                    position.put("y", y - i);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
            case "down":
                if(y + word_length > puzzle_size){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x);
                    position.put("y", y + i);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
            case "upright":
                if(x + word_length > puzzle_size || y - word_length < 0){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x + i);
                    position.put("y", y - i);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
            case "upleft":
                if(x - word_length < 0 || y - word_length < 0){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x - i);
                    position.put("y", y - i);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
            case "downright":
                if(x + word_length > puzzle_size || y + word_length > puzzle_size){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x + i);
                    position.put("y", y + i);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
            case "downleft":
                if(x - word_length < 0 || y + word_length > puzzle_size){
                    return false;
                }
                for(int i = 0; i < word_length; i++){
                    Map<String, Integer> position = new HashMap<>();
                    position.put("x", x - i);
                    position.put("y", y + i);
                    if(occupied_positions.contains(position)){
                        return false;
                    }
                }
                break;
        }
        return true;
    }

    private static String puzzleAsString(int puzzle_size, List<Map<Character, Map<String,Integer>>> letter_positions, List<String> words) {
        String puzzle = "";
        for(int i = 0; i < puzzle_size; i++){
            for(int j = 0; j < puzzle_size; j++){
                Map<String, Integer> position = new HashMap<>();
                position.put("x", i);
                position.put("y", j);
                boolean found = false;
                for(int k = 0; k < letter_positions.size(); k++){
                    if(letter_positions.get(k).containsValue(position)){
                        String letter = letter_positions.get(k).keySet().toArray()[0].toString();
                        puzzle += String.format("%s", letter.toUpperCase());
                        found = true;
                    }
                }
                if(!found){
                    char letter = (char) (Math.random() * 26 + 'a');
                    puzzle += String.format("%s", Character.toUpperCase(letter));
                }
            }
            puzzle += "\n";
        }
        for(int i = 0; i < words.size(); i++){
            puzzle += words.get(i) + ";";
            if(i % 4 == 0 && i != 0){
                puzzle += "\n";
            }
        }
        if(puzzle.charAt(puzzle.length() - 1) == '\n'){
            puzzle = puzzle.substring(0, puzzle.length() - 1);
        }
        return puzzle;
    }
}
