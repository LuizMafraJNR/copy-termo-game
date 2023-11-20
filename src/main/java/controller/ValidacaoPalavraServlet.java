package controller;



import model.Palavra;
import org.json.JSONException;
import org.json.JSONObject;
import service.ValidacaoPalavraService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/validacaoPalavra")
public class ValidacaoPalavraServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String palavraRequest  = req.getParameter("palavra");
        Palavra palavra = new Palavra(palavraRequest);
        try {
            JSONObject resultadoValidacao = ValidacaoPalavraService.iniciarValidacao(palavra.getValor());
            resp.getWriter().write(resultadoValidacao.toString());
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}
