Starling ViewPort (Letterbox)
-----------------------------

Simple class to help setting the viewport in Starling Projects 
when you need to resize your project for different resolutions 
without losing the aspect ratio (Letterbox).

Usage:

	// #Example 1: Using predef resolution

	var viewPort:ViewPort = new ViewPort(stage, ViewPort.IPHONE5_RETINA_LANDSCAPE);
	var star:Starling = new Starling(Game, stage, viewPort);
	star.stage.stageWidth 	= viewPort.starlingStageWidth;
	star.stage.stageHeight 	= viewPort.starlingStageHeight;
	star.start();

	// #Example 2: Using custom resolution

	var viewPort:ViewPort = new ViewPort(stage, new Resolution(1280,720));
	var star:Starling = new Starling(Game, stage, viewPort);
	star.stage.stageWidth 	= viewPort.starlingStageWidth;
	star.stage.stageHeight 	= viewPort.starlingStageHeight;
	star.start();

Rolf Ruiz
alesys@gmail.com
