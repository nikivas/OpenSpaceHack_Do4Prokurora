<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

    <meta name="theme-color" content="#000000"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #000000;
            overflow: hidden;
        }

        #canvasArea {
            margin-left: auto;
            margin-right: auto;
            overflow: hidden;
        }


    </style>
    <!-- Libs and GDJS core files : -->
    <script src="libs\jshashtable.js" crossorigin="anonymous"></script>
    <script src="gd.js" crossorigin="anonymous"></script>
    <script src="gd-splash-image.js" crossorigin="anonymous"></script>
    <script src="libs\hshg.js" crossorigin="anonymous"></script>
    <script src="libs\rbush.js" crossorigin="anonymous"></script>
    <script src="inputmanager.js" crossorigin="anonymous"></script>
    <script src="jsonmanager.js" crossorigin="anonymous"></script>
    <script src="timemanager.js" crossorigin="anonymous"></script>
    <script src="runtimeobject.js" crossorigin="anonymous"></script>
    <script src="profiler.js" crossorigin="anonymous"></script>
    <script src="runtimescene.js" crossorigin="anonymous"></script>
    <script src="scenestack.js" crossorigin="anonymous"></script>
    <script src="polygon.js" crossorigin="anonymous"></script>
    <script src="force.js" crossorigin="anonymous"></script>
    <script src="layer.js" crossorigin="anonymous"></script>
    <script src="timer.js" crossorigin="anonymous"></script>
    <script src="runtimegame.js" crossorigin="anonymous"></script>
    <script src="variable.js" crossorigin="anonymous"></script>
    <script src="variablescontainer.js" crossorigin="anonymous"></script>
    <script src="oncetriggers.js" crossorigin="anonymous"></script>
    <script src="runtimebehavior.js" crossorigin="anonymous"></script>
    <script src="spriteruntimeobject.js" crossorigin="anonymous"></script>
    <script src="events-tools\commontools.js" crossorigin="anonymous"></script>
    <script src="events-tools\runtimescenetools.js" crossorigin="anonymous"></script>
    <script src="events-tools\inputtools.js" crossorigin="anonymous"></script>
    <script src="events-tools\objecttools.js" crossorigin="anonymous"></script>
    <script src="events-tools\cameratools.js" crossorigin="anonymous"></script>
    <script src="events-tools\soundtools.js" crossorigin="anonymous"></script>
    <script src="events-tools\storagetools.js" crossorigin="anonymous"></script>
    <script src="events-tools\stringtools.js" crossorigin="anonymous"></script>
    <script src="events-tools\windowtools.js" crossorigin="anonymous"></script>
    <script src="events-tools\networktools.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\pixi.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\pixi-filters-tools.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\runtimegame-pixi-renderer.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\runtimescene-pixi-renderer.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\layer-pixi-renderer.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\pixi-image-manager.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\spriteruntimeobject-pixi-renderer.js" crossorigin="anonymous"></script>
    <script src="pixi-renderers\loadingscreen-pixi-renderer.js" crossorigin="anonymous"></script>
    <script src="howler-sound-manager\howler.min.js" crossorigin="anonymous"></script>
    <script src="howler-sound-manager\howler-sound-manager.js" crossorigin="anonymous"></script>
    <script src="fontfaceobserver-font-manager\fontfaceobserver.js" crossorigin="anonymous"></script>
    <script src="fontfaceobserver-font-manager\fontfaceobserver-font-manager.js" crossorigin="anonymous"></script>
    <script src="Extensions\PlatformBehavior\platformruntimebehavior.js" crossorigin="anonymous"></script>
    <script src="Extensions\PlatformBehavior\platformerobjectruntimebehavior.js" crossorigin="anonymous"></script>
    <script src="Extensions\TiledSpriteObject\tiledspriteruntimeobject.js" crossorigin="anonymous"></script>
    <script src="Extensions\TiledSpriteObject\tiledspriteruntimeobject-pixi-renderer.js"
            crossorigin="anonymous"></script>
    <script src="Extensions\AnchorBehavior\anchorruntimebehavior.js" crossorigin="anonymous"></script>
    <script src="gdjs-evtsext__parallax__horizontaltiledspriteparallax.js" crossorigin="anonymous"></script>
    <script src="Extensions\SystemInfo\systeminfotools.js" crossorigin="anonymous"></script>
    <script src="code0.js" crossorigin="anonymous"></script>
    <script src="data.js" crossorigin="anonymous"></script>


</head>
<body>


<script>

    (function () {
        //Initialization
        var game = new gdjs.RuntimeGame(gdjs.projectData, {});

        //Create a renderer
        game.getRenderer().createStandardCanvas(document.body);

        //Bind keyboards/mouse/touch events
        game.getRenderer().bindStandardEvents(game.getInputManager(), window, document);

        //Load all assets and start the game
        game.loadAllAssets(function () {
            game.startGameLoop();
        });
    })();

</script>
</body>
</html>