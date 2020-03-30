package br.com.java.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.java.dao.JdbcCursosDao;
import br.com.java.dao.JdbcEscolasDao;
import br.com.java.model.Curso;



@Controller
public class CursosController {

	@RequestMapping("/curso/cadastro")
	public String incluir(ModelMap model) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"beanJdbc.xml");
		JdbcEscolasDao dao_e = (JdbcEscolasDao) ctx.getBean("jdbcEscolasDAO");
		try {
			model.addAttribute("escolas", dao_e.listarEscolas());
			return "cadastros/incluirCurso";
		} catch (Exception e) {
			model.addAttribute("erro", e.getMessage());
			return "cadastros/incluirCurso";
		}
	}

	@RequestMapping(value = "/curso/listar", method = RequestMethod.GET)
	public String listarEscolas(ModelMap model) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"beanJdbc.xml");
		JdbcEscolasDao dao_e = (JdbcEscolasDao) ctx.getBean("jdbcEscolasDAO");
		try {
			model.addAttribute("escolas", dao_e.listarEscolas());
			return "listagens/listarCursos";
		} catch (Exception e) {
			model.addAttribute("erro", e.getMessage());
			return "listagens/listarCursos";
		}
	}

	@RequestMapping(value = "/listar", method = RequestMethod.POST)
	public String listarCursosPorEscola(@RequestParam("idc") int idc,
			Curso curso, ModelMap model) {
		try {
			ApplicationContext ctx = new ClassPathXmlApplicationContext(
					"beanJdbc.xml");
			JdbcCursosDao dao_c = (JdbcCursosDao) ctx.getBean("jdbcCursosDAO");
			List<Curso> cursos = dao_c.listarCursosPorEscola(idc);
			model.addAttribute("cursos", cursos);
			return "listagens/listarCursos";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("erro", e.getMessage());
			return "listagens/listarCursos";
		}
	}

	@RequestMapping(value = "/cadcurso", method = RequestMethod.POST)
	public String incluir(@RequestParam("idc") int idc, Curso curso,
			ModelMap model) {
		try {
			ApplicationContext ctx = new ClassPathXmlApplicationContext(
					"beanJdbc.xml");
			JdbcEscolasDao dao_e = (JdbcEscolasDao) ctx
					.getBean("jdbcEscolasDAO");
			curso.setEscola(dao_e.buscarEscola(idc));
			JdbcCursosDao dao = (JdbcCursosDao) ctx.getBean("jdbcCursosDAO");
			dao.incluirCurso(curso);
			model.addAttribute("msg", "Curso " + curso.getDescricao()
					+ "incluído com sucesso.");
			return "cadastros/incluirCurso";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("erro", e.getMessage());
			return "cadastros/incluirCurso";
		}
	}
}
