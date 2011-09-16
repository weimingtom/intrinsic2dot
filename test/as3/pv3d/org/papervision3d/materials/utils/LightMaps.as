package org.papervision3d.materials.utils
{
	import flash.display.BitmapData;
	import flash.display.GradientType;
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.geom.Point;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class LightMaps
	{
		private static var origin : Point;

		public static function getFlatMapArray (lightColor:uint, ambientColor:uint, specularLevel:uint) : Array;

		public static function getFlatMap (lightColor:uint, ambientColor:uint, specularLevel:uint) : BitmapData;

		public static function getPhongMap (lightColor:uint, ambientColor:uint, specularLevel:uint, height:int=255, width:int=255) : BitmapData;

		public static function getGouraudMap (lightColor:uint, ambientColor:uint, specularLevel:uint) : BitmapData;

		public static function getGouraudMaterialMap (lightColor:uint, ambientColor:uint, specularLevel:uint) : BitmapData;

		public static function getCellMap (color_1:uint, color_2:uint, steps:int) : BitmapData;
	}
}
