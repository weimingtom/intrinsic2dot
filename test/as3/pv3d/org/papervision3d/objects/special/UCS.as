package org.papervision3d.objects.special
{
	import org.papervision3d.core.geom.Lines3D;
	import org.papervision3d.core.geom.renderables.Line3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.materials.special.LineMaterial;

	/**
	 *
	 * @author Tim Knip
	 */
	public class UCS extends Lines3D
	{
		/**
		 *
		 * @param	scale
		 * @param	name
		 * @return
		 */
		public function UCS (scale:Number=500, name:String=null);
	}
}
