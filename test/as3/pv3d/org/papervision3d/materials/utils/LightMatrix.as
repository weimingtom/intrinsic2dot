package org.papervision3d.materials.utils
{
	import org.papervision3d.Papervision3D;
	import org.papervision3d.core.math.Matrix3D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.lights.PointLight3D;
	import org.papervision3d.objects.DisplayObject3D;

	/**
	 *
	 * @Author Tim Knip / Ralph Hauwert
	 */
	public class LightMatrix
	{
		private static var lightMatrix : Matrix3D;
		private static var invMatrix : Matrix3D;
		private static var _targetPos : Number3D;
		private static var _lightPos : Number3D;
		private static var _lightDir : Number3D;
		private static var _lightUp : Number3D;
		private static var _lightSide : Number3D;
		protected static var UP : Number3D;

		/**
		 * Gets the 'lightmatrix' for a light and object.
		 * @param	light
		 * @param	object
		 * @return
		 */
		public static function getLightMatrix (light:LightObject3D, object:DisplayObject3D, renderSessionData:RenderSessionData, objectLightMatrix:Matrix3D) : Matrix3D;
	}
}
