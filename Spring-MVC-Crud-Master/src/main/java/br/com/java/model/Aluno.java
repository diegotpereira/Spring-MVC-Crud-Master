package br.com.java.model;

public class Aluno {
	
    private int cpf;
	
	private String nome;
	
//	private String curso;
	
	private String endereco;
	
	private String telefone;
	
	private Escola escola;
	
    public Aluno() {}

	public int getCpf() {
		return cpf;
	}

	public void setCpf(int cpf) {
		this.cpf = cpf;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

//	public String getCurso() {
//		return curso;
//	}
//
//	public void setCurso(String curso) {
//		this.curso = curso;
//	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public Escola getEscola() {
		return escola;
	}

	public void setEscola(Escola escola) {
		this.escola = escola;
	}
		
}
