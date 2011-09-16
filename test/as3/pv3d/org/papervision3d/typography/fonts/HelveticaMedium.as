package org.papervision3d.typography.fonts
{
	import org.papervision3d.typography.Font3D;

	public class HelveticaMedium extends Font3D
	{
		public static var __motifs : Object;
		public static var __widths : Object;
		public static var __height : Number;
		public static var __initialized : Boolean;

		/// /////////////////////////////////////////
		public function get motifs () : Object;

		public function get widths () : Object;

		public function get height () : Number;

		public static function initialize () : void;

		/// /////////////////////////////////////////
		private static function initializeMotifsUppercase () : void;

		private static function initializeMotifsLowercase () : void;

		private static function initializeMotifsNumbers () : void;

		private static function initializeMotifsPunctuation () : void;

		private static function initializeWidthsUppercase () : void;

		private static function initializeWidthsLowercase () : void;

		private static function initializeWidthsNumbers () : void;

		private static function initializeWidthsPunctuation () : void;
	}
}
