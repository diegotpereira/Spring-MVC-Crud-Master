package br.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import br.com.java.model.Aluno;
import br.com.java.model.Curso;
import br.com.java.model.Escola;

public class JdbcAlunosDao {
	
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void incluirAluno(Aluno aluno) throws Exception {
		try {
			String query = "INSERT INTO ALUNOS (IDESCOLA,NOME,ENDERECO,TELEFONE) VALUES (?,?,?,?)";
			jdbcTemplate.update(query, aluno.getEscola().getId(), aluno.getNome(), aluno.getEndereco(),aluno.getTelefone());
		} catch (Exception e) {
			throw e;
		}
	}
	
	public Aluno buscarAluno(int id) throws Exception {
		Aluno aluno = null;
		try {
			String query = "SELECT * FROM ALUNOS WHERE ID=?";
			aluno = jdbcTemplate.queryForObject(query, new Integer[] { id }, new AlunoMapper());
		} catch (Exception e) {
			throw e;
		}
		return aluno;
	}

	public List<Aluno> listarAlunos() throws Exception {
		List<Aluno> alunos = new ArrayList<>();
		try {
			alunos = jdbcTemplate.query("SELECT * FROM ALUNOS", new AlunoMapper());
		} catch (Exception e) {
			throw e;
		}
		return alunos;
	}
}
