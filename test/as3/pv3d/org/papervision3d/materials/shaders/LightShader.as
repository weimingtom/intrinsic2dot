package org.papervision3d.materials.shaders
{
	import org.papervision3d.core.proto.LightObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.shader.ShaderObjectData;
	import org.papervision3d.materials.utils.LightMatrix;

	/**
	 *
	 * @Author Ralph Hauwert
	 */
	public class LightShader extends Shader implements IShader, ILightShader
	{
		private var _light : LightObject3D;

		public function set light (light:LightObject3D) : void;
		public function get light () : LightObject3D;

		public function LightShader ();

		public function updateLightMatrix (sod:ShaderObjectData, renderSessionData:RenderSessionData) : void;
	}
}
