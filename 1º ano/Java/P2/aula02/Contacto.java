public class Contacto {
  private String nome;
  private String telefone;
  private String email;

  public String nome(){
    return nome;
  }

  public String telefone(){
    return telefone;
  }

  public String eMail(){
    return email;
  }

  public Contacto(String nm, String tel, String ml){
		nome = nm;
		telefone = tel;
		email = ml;
	}
}