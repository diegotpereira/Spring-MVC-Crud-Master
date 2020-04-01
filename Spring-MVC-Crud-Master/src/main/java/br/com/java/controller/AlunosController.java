package br.com.java.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.java.dao.JdbcAlunosDao;

import br.com.java.dao.JdbcEscolasDao;
import br.com.java.model.Aluno;




@Controller
public class AlunosController {
	
	@RequestMapping("/aluno/cadastro")
	public String incluir(ModelMap model) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"beanJdbc.xml");
		JdbcEscolasDao dao_e = (JdbcEscolasDao) ctx.getBean("jdbcEscolasDAO");
		try {
			model.addAttribute("escolas", dao_e.listarEscolas());
			return "cadastros/incluirAluno";
		} catch (Exception e) {
			model.addAttribute("erro", e.getMessage());
			return "cadastros/incluirAluno";
		}
	}

	@RequestMapping(value = "/cadaluno", method = RequestMethod.POST)
	public String incluir(@RequestParam("idc") int idc, Aluno aluno,
			ModelMap model) {
		try {
			ApplicationContext ctx = new ClassPathXmlApplicationContext(
					"beanJdbc.xml");
			JdbcEscolasDao dao_e = (JdbcEscolasDao) ctx
					.getBean("jdbcEscolasDAO");
			aluno.setEscola(dao_e.buscarEscola(idc));
			JdbcAlunosDao dao = (JdbcAlunosDao) ctx.getBean("jdbcAlunosDAO");
			dao.incluirAluno(aluno);
			model.addAttribute("msg", "Aluno " + aluno.getNome()
					+ "incluído com sucesso.");
			return "cadastros/incluirAluno";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("erro", e.getMessage());
			return "cadastros/incluirAluno";
		}
	}

}
