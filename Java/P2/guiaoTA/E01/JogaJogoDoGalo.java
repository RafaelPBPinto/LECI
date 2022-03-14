import static java.lang.System.*;
import java.util.Scanner;
import jogos.*;
    
public class JogaJogoDoGalo {
  private static Scanner sin = new Scanner(in);
  public static void main(String[] args) {
    int countjogos = 0;
    int vitoriao = 0;
    int vitoriax = 0;
    int derrotax = 0;
    int derrotao = 0;
    int empate = 0;
    char jogador1 = 'X';
    char jogador2 = 'O';

    do{
      JogoDoGalo jogo = new JogoDoGalo(jogador1, jogador2);
      jogo.mostraTabuleiro();

      while (!jogo.terminado()) {
        out.print("(lin col): ");
        int lin = sin.nextInt();
        int col = sin.nextInt();
        jogo.jogada(lin, col);
        jogo.mostraTabuleiro();
      }

      out.println();
      if (jogo.ultimoJogadorGanhou()) {
        out.println("Jogador "+jogo.ultimoJogador()+" ganhou!");
      } else {
        out.println("Jogo empatado!");
      }

      if(jogo.ultimoJogador() == 'X' && jogo.ultimoJogadorGanhou()){
        vitoriax++;
        derrotao++;
      }else if(jogo.ultimoJogador() == 'O' && jogo.ultimoJogadorGanhou()){
        vitoriao++;
        derrotax++;
      }else{
        empate++;
      }

      jogo.mostraResultado(vitoriao, vitoriax, derrotao, derrotax, empate);
      countjogos++;

    }while(countjogos < 10 || (vitoriax != 3 && vitoriao != 3));
  }
}

