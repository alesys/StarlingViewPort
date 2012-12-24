package net.alesys.utils
{
	import flash.display.Stage;
	import flash.geom.Rectangle;
	
	public class ViewPort extends Rectangle
	{
		public static const IPHONE4_LOW_PORTRAIT:Resolution 		= new Resolution(320,480);
		public static const IPHONE4_LOW_LANDSCAPE:Resolution 		= new Resolution(480,320);
		public static const IPHONE4_RETINA_PORTRAIT:Resolution 		= new Resolution(640,960);
		public static const IPHONE4_RETINA_LANDSCAPE:Resolution 	= new Resolution(960,640);
		public static const IPAD_LOW_PORTRAIT:Resolution 			= new Resolution(768, 1024);
		public static const IPAD_LOW_LANDSCAPE:Resolution 			= new Resolution(1024,768);
		public static const IPAD_RETINA_PORTRAIT:Resolution 		= new Resolution(1536, 2048);
		public static const IPAD_RETINA_LANDSCAPE:Resolution 		= new Resolution(2048,1536);
		public static const IPHONE5_RETINA_PORTRAIT:Resolution		= new Resolution(640, 1136);
		public static const IPHONE5_RETINA_LANDSCAPE:Resolution		= new Resolution(1136, 640);
		private var stage:Stage;
		private var stage_width:Number;
		private var stage_height:Number;
	
		public function ViewPort(stage:Stage, resolution:Resolution)
		{
			super();
			this.stage = stage;
			this.stage_width = resolution.width;
			this.stage_height = resolution.height;
			render();
		}
		private function render():void
		{
			var ratio:Number = stage_height/stage_width;
			var screenWidth:int = stage.fullScreenWidth;
			var screenHeight:int = stage.fullScreenHeight;
			
			if (stage.fullScreenHeight / stage.fullScreenWidth < ratio)
			{
				height = screenHeight;
				width  = int(height / ratio);
				x = int(screenWidth - width>>1);
			}
			else
			{
				width = screenWidth; 
				height = int(width * ratio);
				y = int(screenHeight - height>>1);
			}
		}
		public function get starlingStageWidth  ():Number
		{
			return stage_width;
		}
		public function get starlingStageHeight ():Number
		{
			return stage_height;
		}
	}
}