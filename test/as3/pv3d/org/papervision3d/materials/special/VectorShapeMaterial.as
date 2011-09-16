﻿package org.papervision3d.materials.special
{
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.objects.special.VectorShape3D;
	import org.papervision3d.objects.special.commands.IVectorShape;
	import flash.display.Graphics;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class VectorShapeMaterial extends MaterialObject3D
	{
		public function VectorShapeMaterial ();

		public function drawShape (vectorShape:VectorShape3D, graphics:Graphics, renderSessionData:RenderSessionData) : void;
	}
}
