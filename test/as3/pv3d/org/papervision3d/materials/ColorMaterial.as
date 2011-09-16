package org.papervision3d.materials
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import org.papervision3d.core.material.TriangleMaterial;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.command.RenderTriangle;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.ITriangleDrawer;

	/**
	 * The ColorMaterial class creates a solid color material.
	 * 
	 *   Materials collects data about how objects appear when rendered.
	 * 
	 */
	public class ColorMaterial extends TriangleMaterial implements ITriangleDrawer
	{
		/**
		 * The ColorMaterial class creates a solid color material.
		 * @param	asset				A BitmapData object.
		 */
		public function ColorMaterial (color:Number=0xFF00FF, alpha:Number=1, interactive:Boolean=false);

		/**
		 *  drawTriangle
		 */
		public function drawTriangle (tri:RenderTriangle, graphics:Graphics, renderSessionData:RenderSessionData, altBitmap:BitmapData=null, altUV:Matrix=null) : void;

		/**
		 * Returns a string value representing the material properties in the specified ColorMaterial object.
		 * @return	A string.
		 */
		public function toString () : String;

		public function clone () : MaterialObject3D;
	}
}
