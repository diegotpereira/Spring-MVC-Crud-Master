package br.com.java.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import br.com.java.model.Aluno;
import br.com.java.model.Escola;

public class AlunoMapper implements RowMapper<Aluno> {

	@Override
	public Aluno mapRow(ResultSet rs, int arg1) throws SQLException {
		Aluno aluno = new Aluno();
		aluno.setCpf(rs.getInt("CPF"));
		aluno.setNome(rs.getString("Nome"));
		
		Escola escola = new Escola();
		escola.setId(rs.getInt("IDESCOLA"));
		aluno.setEscola(escola);
		return aluno;
	}

}
