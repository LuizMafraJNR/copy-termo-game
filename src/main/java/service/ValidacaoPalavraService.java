package service;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.*;
import java.util.stream.Collectors;

public class ValidacaoPalavraService {

    public static JSONObject iniciarValidacao(String palavraDigitada) throws JSONException {
        List<String> listaPalavras = new ArrayList<>();
//        listaPalavras.add("abacu");
        listaPalavras.add("certo");
//        listaPalavras.add("noite");
//        listaPalavras.add("carro");
//        listaPalavras.add("fazer");

        String palavraSorteada = escolherPalavraAleatoria(listaPalavras);

        if (palavraDigitada.equals(palavraSorteada)) {
            JSONObject resultadoValidacao = new JSONObject();
            resultadoValidacao.put("message", "Parabéns, você acertou a palavra!");
            return resultadoValidacao;
        } else {
            return validarCaracteres(palavraSorteada, palavraDigitada);
        }

    }
    private static String escolherPalavraAleatoria(List<String> listaPalavras) {
        Random random = new Random();
        int indiceSorteado = random.nextInt(listaPalavras.size());
        return listaPalavras.get(indiceSorteado);
    }
    private static JSONObject validarCaracteres(String palavraSorteada, String palavraDigitada) throws JSONException {
        Set<Character> caracteresSorteados = palavraSorteada.chars().mapToObj(c -> (char) c).collect(Collectors.toSet());
        Set<Character> caracteresDigitados = palavraDigitada.chars().mapToObj(c -> (char) c).collect(Collectors.toSet());

        Set<Character> caracteresIguais = new HashSet<>(caracteresSorteados);
        caracteresIguais.retainAll(caracteresDigitados);

        JSONArray resultadoValidacao = caracteresIguais.stream()
                .map(caracter -> {
                    int indexSorteado = palavraSorteada.indexOf(caracter);
                    int indexDigitado = palavraDigitada.indexOf(caracter);
                    boolean estaNaPosicaoCorreta = indexSorteado == indexDigitado;

                    JSONObject caracterJSON = new JSONObject();
                    try {
                        caracterJSON.put("char", Character.toString(caracter));
                        caracterJSON.put("posicaoCorreta", estaNaPosicaoCorreta);
                        caracterJSON.put("indexSorteado", indexSorteado);
                        caracterJSON.put("indexDigitado", indexDigitado);
                    } catch (JSONException e) {
                        throw new RuntimeException(e);
                    }
                    return caracterJSON;
                })
                .collect(JSONArray::new, JSONArray::put, JSONArray::put);

        JSONObject resultadoFinal = new JSONObject();
        resultadoFinal.put("validacao", resultadoValidacao);

        return resultadoFinal;
    }



}

