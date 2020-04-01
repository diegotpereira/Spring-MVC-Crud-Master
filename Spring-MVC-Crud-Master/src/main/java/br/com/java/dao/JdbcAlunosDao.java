package br.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import br.com.java.model.Aluno;
import br.com.java.model.Curso;

public class JdbcAlunosDao {
	
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void incluirAluno(Aluno aluno) throws Exception {
		try {
			String query = "INSERT INTO ALUNOS (ID,IDESCOLA,DESCRICAO) VALUES (?,?,?)";
			jdbcTemplate.update(query, aluno.getCpf(), aluno.getEscola().getId(), aluno.getNome());
		} catch (Exception e) {
			throw e;
		}
	}
	public List<Curso> listarCursosPorEscola(int id) throws Exception {
		List<Curso> cursos = new ArrayList<>();
		try {
			cursos = jdbcTemplate.query("SELECT * FROM CURSOS WHERE IDESCOLA=?", new Integer[] { id },
					new CursoMapper());
		} catch (Exception e) {
			throw e;
		}
		return cursos;
	}

	public Object listarAlunos() {
		// TODO Auto-generated method stub
		return null;
	}

}