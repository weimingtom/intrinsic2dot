package org.papervision3d.materials.special
{
	import flash.display.Graphics;
	import flash.geom.Rectangle;
	import org.papervision3d.core.geom.renderables.Particle;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.IParticleDrawer;

	/**
	 *
	 * @Author Ralph Hauwert
	 *   
	 *     updated by Seb Lee-Delisle 
	 *   - added size implementation
	 *   - added rectangle of particle for smart culling and drawing
	 *   
	 */
	public class ParticleMaterial extends MaterialObject3D implements IParticleDrawer
	{
		public static var SHAPE_SQUARE : int;
		public static var SHAPE_CIRCLE : int;
		public var shape : int;
		public var scale : Number;

		public function ParticleMaterial (color:Number, alpha:Number, shape:int=0, scale:Number=1);

		public function drawParticle (particle:Particle, graphics:Graphics, renderSessionData:RenderSessionData) : void;

		public function updateRenderRect (particle:Particle) : void;
	}
}
