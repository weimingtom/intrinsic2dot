﻿package org.papervision3d.materials.shadematerials
{
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.materials.utils.LightMaps;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class CellMaterial extends EnvMapMaterial
	{
		public function CellMaterial (light:LightObject3D, color_1:int, color_2:int, steps:int);
	}
}
