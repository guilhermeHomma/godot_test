

<h1>Como executá-lo com sucesso</h1>

Abra o diretório nomeado como BUILDS
```GODOT_PROJECT/BUILDS```
<h4>Windows:</h4>

Execute o arquivo ```godot_test.exe```

<h4>Linux:</h4>
Altere as configurações do arquivo <b>'godot_test.x86_64'</b> para 'executável'

Execute o arquivo ```godot_test.x86_64```

<h1>Como executá-lo utilizando a Godot</h1>

```Versão Godot utilizada 3.2.0```

<h4>Primeiro passo:</h4>
Importe o arquivo [project.godot] para a sua godot

```diretório - > GODOT_PROJECT/project.godot```

<img src="https://github.com/guilhermeHomma/godot_test/blob/master/README_IMGs/project.png">

<h4>Segundo passo:</h4>
Abra a scene nomeada como "game.tscn"<br>

```diretório - > GODOT_PROJECT/scenes/game.tscn```

<h4>Terceiro passo:</h4>
Rode o jogo pressionando a tecla "F5" ou o botão "play" da godot<br><br>

<img src="https://github.com/guilhermeHomma/godot_test/blob/master/README_IMGs/play.png">




<h1>-----Adendos-----</h1>
Adicinei algumas <b>features</b> que não estavam presentes no vídeo de demonstração do projeto. Porêm essas adições não mudam em nada na funcionalidade do jogo. Como por exemplo:

 1 - Após encontrar a formiga, o jogador pode reiniciar o jogo pressionando ```ENTER``` <br>
 
 2 - O número de pontos distrubuído entre os doces são gerados randomicamente. Estes podem ser configurados ao alterar o valor das variáveis encontradas no script ```GODOT_PROJECT/scripts/candy_manager.gd```

 <img src="https://github.com/guilhermeHomma/godot_test/blob/master/README_IMGs/configs.png"> <br>
 
 3 - As imagens das embalagens dos doces, presentes na animação de revelação, são agora renderizadas por cima das outras imagens.



