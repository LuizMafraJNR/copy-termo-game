<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Termo Shopee</title>
    <style>
        body {
            font-family: 'Comic Sans MS', cursive;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
            background-color: #6E5C62;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #432406;
        }

        .word-container {
            display: flex;
            gap: 10px;
        }

        .letter-box {
            border: 1px solid #4c4347;
            padding: 10px;
            text-align: center;
            width: 30px;
            height: 30px;
            border-radius: 8px;
            background-color: #4c4347;
        }

        input[type="text"] {
            height: 100%;
            padding: 0;
            border: none;
            font-weight: bold;
            background-color: #4c4347;
            outline: none;
            font-size: 20px;
            text-transform: uppercase;
            width: 100%;
            box-sizing: border-box;
            color: #fff;
        }
        .word-container + .word-container {
            margin-top: 10px;
        }

        .locked {
            pointer-events: none;
        }
    </style>
</head>
<body>
<h1>Cópia da Shopee do jogo termo</h1>

<div class="word-container">
    <input type="hidden" id="palavraFormada" name="palavraFormada" />

    <div class="letter-box"><input type="text" name="quadrado1" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado2" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado3" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado4" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado5" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
</div>

<div class="word-container">
    <div class="letter-box"><input type="text" name="quadrado6" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado7" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado8" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado9" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado10" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
</div>

<div class="word-container">
    <div class="letter-box"><input type="text" name="quadrado11" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado12" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado13" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado14" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado15" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
</div>

<div class="word-container">
    <div class="letter-box"><input type="text" name="quadrado16" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado17" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado18" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado19" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado20" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
</div>

<div class="word-container">
    <div class="letter-box"><input type="text" name="quadrado21" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado22" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado23" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado24" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado25" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
</div>

<div class="word-container">
    <div class="letter-box"><input type="text" name="quadrado26" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado27" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado28" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado29" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
    <div class="letter-box"><input type="text" name="quadrado30" maxlength="1" oninput="moveToNextInput(this)" onkeydown="handleBackspace(this, event)"></div>
</div>


<script>

    let indexInputNow = 0;

    let objectSequencia = {
        minSequencia: 0,
        maxSequencia: 0
    }

    disableAllInputs();

    for (let i = 1; i <= 5; i++) {
        console.log('entrei aqui dnv no for maldito');
        document.querySelector('input[name="quadrado' + i + '"]').removeAttribute('disabled');
    }

    function disableAllInputs() {
        var allInputs = document.querySelectorAll('input[name^="quadrado"]');
        allInputs.forEach(function(input) {
            input.setAttribute('disabled', 'disabled');
        });
    }

    function moveToNextInput(currentInput) {
        var maxLength = parseInt(currentInput.maxLength, 10);
        var currentInputIndex = parseInt(currentInput.name.match(/\d+$/)[0], 10);
        indexInputNow = currentInputIndex;

        if (currentInput.value.length >= maxLength) {
            var nextInputIndex = currentInputIndex + 1;
            var nextInput = document.querySelector('input[name="quadrado' + nextInputIndex + '"]');

            if (nextInput) {
                if (!currentInputIndex % 5 === 0) {
                    nextInput.focus();
                }
            }
            document.getElementById('palavraFormada').value = obterPalavraFormada();
            currentInput.addEventListener('keyup', function(event) {
                if (event.key === 'Enter') {
                    async function handleEnter() {
                        let objectResponse = await validarPalavra();
                        if (objectResponse.haveResults) {
                            if (objectResponse.message !== null) {
                                disableAllInputs();
                                return;
                            }
                            habilitarDisableInputs(currentInputIndex);
                            objectSequencia.minSequencia = nextInputIndex;
                            objectSequencia.maxSequencia = nextInputIndex + 4;
                            removerDisableInputs(nextInputIndex);
                            if (nextInput) {
                                nextInput.focus();
                            }
                        }

                    }
                    handleEnter();
                }
            });
        }
    }



    function habilitarDisableInputs(currentInputIndex){
        var parada = currentInputIndex - 5;
        for (let i = currentInputIndex; i > parada; i--) {
            var input = document.querySelector('input[name="quadrado' + i + '"]');
            input.setAttribute('disabled', 'disabled');
        }
    }

    function removerDisableInputs(nextInputIndex){
        for (let i = nextInputIndex; i <= (nextInputIndex + 4); i++) {
            document.querySelector('input[name="quadrado' + i + '"]').removeAttribute('disabled');
        }

    }

    function validarPalavra() {
        var palavra = document.getElementById('palavraFormada').value;
        var options = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: 'palavra=' + encodeURIComponent(palavra),
        };

        return fetch('validacaoPalavra', options)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Erro ao validar a palavra.');
                }
                return response.json();
            })
            .then(data => {
                let responseData = data.validacao;

                if (responseData === undefined) {
                    let message = data.message;
                    return {
                        haveResults: true,
                        message: message,
                    };
                }

                responseData.forEach(function (item) {
                    let quadradoIndex = item.indexDigitado;

                    let quadrado = document.querySelector('.word-container').children[(quadradoIndex + 1)];
                    let input = document.querySelector('input[name="quadrado' + (quadradoIndex + 1) + '"]');

                    quadrado.style.backgroundColor = '';
                    input.style.backgroundColor = '';

                    if (item.posicaoCorreta) {
                        quadrado.style.backgroundColor = '#3aa394';
                        input.style.backgroundColor = '#3aa394';
                    } else {
                        quadrado.style.backgroundColor = '#d3ad69';
                        input.style.backgroundColor = '#d3ad69';
                    }
                });

                return {
                    haveResults: true,
                    message: null,
                };
            })
            .catch(error => {
                alert(error.message);
                return {
                    haveResults: false,
                    message: error.message,
                };
            });
    }



    function obterPalavraFormada() {
        var inputs = document.querySelectorAll('input[name^="quadrado"]');
        var palavra = '';

        inputs.forEach(function(input) {
            palavra += input.value;
        });

        return palavra;
    }

    function handleBackspace(currentInput, event) {
        var currentInputIndex = parseInt(currentInput.name.charAt(currentInput.name.length - 1), 10);

        if (event.key === "Backspace" && currentInput.value.length === 0) {
            var prevInputIndex = currentInputIndex - 1;
            var prevInput = document.querySelector('input[name="quadrado' + prevInputIndex + '"]');

            if (prevInput) {
                prevInput.focus();
            }
        }
    }
</script>
</body>
</html>
