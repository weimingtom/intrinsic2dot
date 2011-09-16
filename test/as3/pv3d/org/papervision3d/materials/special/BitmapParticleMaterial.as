package org.papervision3d.materials.special
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import org.papervision3d.core.geom.renderables.Particle;
	import org.papervision3d.core.geom.renderables.Vertex3DInstance;
	import org.papervision3d.core.math.Number2D;
	import org.papervision3d.core.math.Number3D;
	import org.papervision3d.core.math.util.FastRectangleTools;
	import org.papervision3d.core.render.data.RenderSessionData;
	import org.papervision3d.core.render.draw.IParticleDrawer;

	/**
	 * A Particle material that is made from BitmapData object
	 * @author Ralph Hauwert
	 * @author Seb Lee-Delisle
	 */
	public class BitmapParticleMaterial extends ParticleMaterial implements IParticleDrawer
	{
		private var renderRect : Rectangle;
		public var particleBitmap : ParticleBitmap;

		/**
		 *
		 * @param bitmap	The BitmapData object to make the material from. 
		 *   
		 */
		public function BitmapParticleMaterial (bitmap:*, scale:Number=1, offsetx:Number=0, offsety:Number=0);

		/**
		 * Draws the particle as part of the render cycle.
		 * @param particle			The particle we're drawing
		 * @param graphics			The graphics object we're drawing into
		 * @param renderSessionData	The renderSessionData for this render cycle.
		 *   
		 */
		public function drawParticle (particle:Particle, graphics:Graphics, renderSessionData:RenderSessionData) : void;

		/**
		 * This is called during the projection cycle. It updates the rectangular area that 
		 * the particle is drawn into. It's important for the culling phase.
		 * @param particle	The particle whose renderRect we're updating. 
		 *   
		 */
		public function updateRenderRect (particle:Particle) : void;
	}
}
