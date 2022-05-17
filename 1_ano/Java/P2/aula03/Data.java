import static java.lang.System.*;
import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  public Data() {
    // Aqui usamos a classe Calendar da biblioteca standard para obter a data atual.
    Calendar today = Calendar.getInstance();
    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
    assert dataValida(dia, mes, ano): "Data inválida";
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;

    //assert this.dia > 0 && this.dia < 32: "Dia inválido";
    //assert this.mes > 0 && this.mes < 13: "Mês inválido";
    //assert this.ano > 0: "Ano inválido";
  }

  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  // Crie métodos para obter o dia, mes e ano da data.
  public int dia(){
    return dia;
  }

  public int mes(){
    return mes;
  }

  public int ano(){
    return ano;
  }

  /** Dimensões dos meses num ano comum. */
  private static final
  int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
    assert dataValida(dia, mes, ano): "Data inválida";
    if(mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12){
      return 31;
    } else if(mes == 4 || mes == 6 || mes == 9 || mes == 11){
      return 30;
    } else if (mes == 2) {
			if (bissexto(ano)) {
				return 29;
			} else {
				return 28;
			}
		}else{
      return 0;
    }
  }

  /** Devolve o mes da data por extenso. */
  public String mesExtenso() {
    if(mes == 1){
      return "janeiro";
    } else if(mes == 2){
      return "fevereiro";
    } else if(mes == 3){
      return "março";
    } else if(mes == 4){
      return "abril";
    } else if(mes == 5){
      return "maio";
    } else if(mes == 6){
      return "junho";
    } else if(mes == 7){
      return "julho";
    } else if(mes == 8){
      return "agosto";
    } else if(mes == 9){
      return "setembro";
    } else if(mes == 10){
      return "outubro";
    } else if(mes == 11){
      return "novembro";
    } else if(mes == 12){
      return "dezembro";
    } else{
      return "Mês inválido!";
    }
  }

  /** Devolve esta data por extenso. */
  public String extenso() {
    return dia + " de " + mesExtenso() + " de " + ano;
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  public static boolean dataValida(int dia, int mes, int ano) {
    if (mes > 12 || mes < 1) {
			return false;
		} else {
			if (diasDoMes(mes, ano) > dia && dia > 0) {
				return true;
			} else {
				return false;
			}
		}
  }


  public void seguinte() {
    dia++;
		if (dia > diasDoMes(mes, ano)) {
			dia = 1;
			mes++;

			if (mes > 12) {
				ano++;
				mes = 1;
				dia = 1;
			}
		}
  }

  public String parseData(String d){
    return dia + "-" + mes + "-" + ano;
  } 
  

  //public int this.compareTo(Data y){

    //if(y.ano == this.ano && y.mes == this.mes && y.dia == this.dia){
      //return 0;
    //}else if(y.ano < this.ano){
      //return 1;
   // }else if(y.ano > this.ano){
      //return -1;
    //}else if(y.ano == this.ano && y.mes < this.mes){
      //return 1;
   // }else if(y.ano == this.ano && y.mes > this.mes){
      //return -1;
    //}else if(y.ano == this.ano && y.mes == this.mes && y.dia < this.dia){
      //return 1;
    //}else if(y.ano == this.ano && y.mes == this.mes && y.dia > this.dia){
     // return -1;
   // }
    
  //}

}

