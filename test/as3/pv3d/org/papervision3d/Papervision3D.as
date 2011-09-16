package org.papervision3d
{
	import org.papervision3d.core.log.PaperLogger;

	/**
	 * The Papervision3D class contains global properties and settings.
	 */
	public class Papervision3D extends Object
	{
		/**
		 * Indicates if the angles are expressed in degrees (true) or radians (false). The default value is true, degrees.
		 */
		public static var useDEGREES : Boolean;

		/**
		 * Indicates if the scales are expressed in percent (true) or from zero to one (false). The default value is false, i.e. units.
		 */
		public static var usePERCENT : Boolean;

		/**
		 *
		 */
		public static var useRIGHTHANDED : Boolean;

		/**
		 * Enables engine name to be retrieved at runtime or when reviewing a decompiled swf.
		 */
		public static var NAME : String;

		/**
		 * Enables version to be retrieved at runtime or when reviewing a decompiled swf.
		 */
		public static var VERSION : String;

		/**
		 * Enables version date to be retrieved at runtime or when reviewing a decompiled swf.
		 */
		public static var DATE : String;

		/**
		 * Enables copyright information to be retrieved at runtime or when reviewing a decompiled swf.
		 */
		public static var AUTHOR : String;

		/**
		 * This is the main Logger Controller.
		 */
		public static var PAPERLOGGER : PaperLogger;
	}
}
