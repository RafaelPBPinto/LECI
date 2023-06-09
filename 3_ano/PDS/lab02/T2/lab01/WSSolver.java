import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.xml.transform.Source;

import java.io.PrintWriter;


class WSSolver{
    
    public static List<String> readFile(String path){//ler o ficheiro
        Path filePath = Paths.get(path);
        List<String> lines = null;

        try {
            lines = Files.readAllLines(filePath);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        return lines;

    }
    public static Boolean verify(List<String> lines) throws IOException{
            Boolean val = true;
            String line;
            List<String> puzzle = new ArrayList<String>(); 
            String[] word;            
            for (int i = 0 ; i < lines.size() ; i++) {
                line = lines.get(i);
                if(line.length() == 0){ //Verificar se há linhas nulas
                    System.out.println("O ficheiro não pode conter linhas vazias");
                    return false;
                }

                if(line.contains(";") || line.contains(",") || line.contains(" ")){ //Separar as palvras
                    word = line.split("[;,' ']");
    
                    for (String s : word){
                        if (s.length() < 3) {
                            System.out.println("As palavras têm de ter pelo menos 3 caracteres");
                            return false;
                        }
                        if (!s.matches("[a-zA-Z]+")) {
                            System.out.println("As palavras devem ser compostas apendas por caracteres alfabéticos");
                            return false;
                        }
                    } 
                }
                else{//Analisar o conteúdo do Puzzle
                    if (line.length() > 40) {
                        System.out.println("O tamanho máximo do puzzle é de 40 colunas");
                        return false;
                    }
                    else{
                        for (char c : line.toCharArray()) { 
                            if(!Character.isUpperCase(c)){
                                System.out.println("O puzzle deve conter apenas caracteres maiúsculos");
                                return false;//Verificar se em uma linha todos os caracteres são maiúsculos
                            } 
                        }
                        puzzle.add(line);// Adicionar o conteúdo do puzzle em uma lista
                    }
                }


            }
            for (String string : puzzle) { //Verificar se o puzzle é quadrado
                if(string.length() != puzzle.size()){
                    System.out.println("O puzzle deve ser quadrado");
                    return false;
                }
            }        
            return val;
        }
            
        public static List<String> SubstringVerifier(List<String> words){ 
            String word;
            List<String> listaCopy = new ArrayList<String>(words);
            List<String> wordsCopy = new ArrayList<String>(words);
            for (int i = 0 ; i < words.size() ; i++) {
                word = words.get(i);
                listaCopy.remove(word);
                for (String s : listaCopy) {
                    
                    if (s.contains(word) || word.contains(s)) {

                        // set.add(word);
                        if(word.length() >s.length()){
                            wordsCopy.remove(s);
                        }
                        if(word.length() < s.length()){
                            wordsCopy.remove(word);
                        }
                    }
                }
                listaCopy.add(word);

            }
            // Não é necessário utilizar o words copy - é so utilizar words.size()
            return wordsCopy;

        }
        
        public static HashMap<String, List<String>> readLines(List<String> lines){
            List<String> puzzle = new ArrayList<String>(); 
            List<String> words = new ArrayList<String>();
            String[] word;
            String line;
            for (int i = 0 ; i < lines.size() ; i++) {
                line = lines.get(i);
                if(line.contains(";") || line.contains(",") || line.contains(" ")){ //Separar as palvras
                    word = line.split("[;,' ']");
                    for (String s : word){
                        words.add(s);
                    } 
                }
                else{//Analisar o conteúdo do Puzzle
                    puzzle.add(line);// Adicionar o conteúdo do puzzle em uma lista
                }
            }
            //Eliminar as substrings
            words = SubstringVerifier(words);
            HashMap<String , List<String>> content = new HashMap<String, List<String>>();
            content.put("words",words);
            content.put("puzzle",puzzle);
            return content;
            
        }
    
        

        public static HashMap<Integer, HashMap<Integer, String>> PuzzleMaker(List<String> puzzle) {//Continuar aqui
            HashMap<Integer,HashMap<Integer,String>> map = new HashMap <>();
            int x = 0;
            int y = 1;
            for (String line : puzzle) {
                for (char c: line.toCharArray()) {
                    if(x==line.length())x=0;             
                    x++;
                    map.computeIfAbsent(y,k->new HashMap<>()).put(x,String.valueOf(c));
                } 
                y++;                             
            }
            return map;
        }

            public static void solvePuzzle(List<String> words, HashMap<Integer, HashMap<Integer, String>> map, List<String> puzzle) throws FileNotFoundException {//Continuar aqui
                HashMap<String,List<Coordenadas>> solution = new HashMap<>();
                HashMap<String,List<Coordenadas>> obj = new HashMap<>();
                HashMap<Integer,HashMap<Integer,String>> newMap = new HashMap <>();
                StringBuilder sb = new StringBuilder(); //String builder
                PrintWriter writer = new PrintWriter("results.txt");

                for (String word : words) {
                    List<Coordenadas> coordenadas = new ArrayList<>();
                    word = word.toUpperCase();

                    obj = Checkers.checkUp(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    obj = Checkers.checkDown(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    obj = Checkers.checkRight(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    obj = Checkers.checkLeft(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    obj = Checkers.checkUpRight(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    obj = Checkers.checkUpLeft(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    obj = Checkers.checkDownRight(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    obj = Checkers.checkDownLeft(map, word);
                    if(obj.size()!= 0) for (Coordenadas coord : obj.get(word.toUpperCase())) coordenadas.add(coord);
                    solution.put(word,coordenadas);
                }
                //Criar um novo puzzle
                String[][] newPuzzle= new String[map.size()][map.size()];
                for (int i = 0; i < newPuzzle.length; i++) {
                    for (int j = 0; j < newPuzzle.length; j++) {
                        newPuzzle[i][j] = ".";
                    }
                }
                
                

                for (String word : words) {
                    if (solution.get(word.toUpperCase()) != null){
                        for (Coordenadas coord : solution.get(word.toUpperCase())) {
                            System.out.printf("%-15s %-5s %-7s %-10s\n", word, word.length(), coord,coord.getDirecao());
                            sb.append(String.format("%-15s %-5s %-7s %-10s\n", word, word.length(), coord,coord.getDirecao()));
                            int i = coord.getY()-1;
                            int j = coord.getX()-1;
                            switch (coord.getDirecao()) {
                                case "Up":                               
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        i--;
                                    }
                                    break;
                                case "Down":
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        i++;
                                    }           
                                    break;
                                case "Left":
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        j--;
                                    }           
                                break;
                                case "Right":
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        j++;
                                    }           
                                break;
                                case "UpRight":
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        j++;
                                        i--;
                                    }           
                                break;
                                case "UpLeft":
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        j--;
                                        i--;
                                    }           
                                break;
                                case "DownRight":
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        j++;
                                        i++;
                                    }           
                                break;
                                case "DownLeft":
                                    for (int k = 0; k < word.length(); k++) {
                                        newPuzzle[i][j] = String.valueOf(word.charAt(k)).toUpperCase();
                                        j--;
                                        i++;
                                    }           
                                break;
                                                            
                                default:
                                    break;
                            }
                        }
                    }
                }
                for (int i = 0; i < newPuzzle.length; i++) {//Printar o puzzle

                    for (int j = 0; j < newPuzzle.length; j++) {
                        System.out.print(newPuzzle[i][j]+ " ");
                        sb.append(newPuzzle[i][j]+ " ");
                        if (j == newPuzzle.length - 1) {
                            System.out.println();
                            sb.append("\n");
                        }
                    }
                }
                // File arquivo = new File("Solution.txt");
                // try {
                //     // cria um FileWriter para escrever no arquivo
                //     FileWriter fw = new FileWriter(arquivo, true);
              
                //     // cria um BufferedWriter para escrever no FileWriter
                //     BufferedWriter bw = new BufferedWriter(fw);
              
                //     // escreve o conteúdo do StringBuilder no arquivo
                //     bw.write(sb.toString());
              
                //     // fecha o BufferedWriter e o FileWriter
                //     bw.close();
                //     fw.close();
              
                //     System.out.println("Conteúdo adicionado ao arquivo " + nomeArquivo + " com sucesso!");
                //   } catch (IOException e) {
                //     System.out.println("Erro ao escrever no arquivo " + nomeArquivo + ": " + e.getMessage());
                //   }
                System.out.println(sb.toString());
                writer.write(sb.toString());
                writer.close();
            }
        public static void main(String[] args) throws IOException
        {
            List<String> lines,words,puzzle;
            //lines = readFile("C:\\Users\\ASUS\\Documents\\GitHub\\practical-g2_03\\lab01\\palavars.txt");
            lines = readFile(args[0]);
            HashMap<String,Coordenadas> obj = new HashMap<String,Coordenadas>();
            if(verify(lines)){
                puzzle = readLines(lines).get("puzzle");
                words = readLines(lines).get("words");
                PuzzleMaker(puzzle);
                solvePuzzle(words,PuzzleMaker(puzzle),puzzle);
            }
        
        }
    }
