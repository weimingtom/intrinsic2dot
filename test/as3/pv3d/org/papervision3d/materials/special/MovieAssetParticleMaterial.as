package org.papervision3d.materials.special
{
	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;
	import org.papervision3d.core.log.PaperLogger;
	import org.papervision3d.core.render.draw.IParticleDrawer;

	/**
	 *
	 * @author Seb Lee-Delisle
	 *   
	 *     version 0.1 of MovieAssetParticleMaterial that uses a reference to a
	 *   library symbol to create a particle.
	 *   
	 */
	public class MovieAssetParticleMaterial extends MovieParticleMaterial implements IParticleDrawer
	{
		public static var movieLibrary : Dictionary;
		private var movieAsset : Class;

		/**
		 * A Particle material that is made from a single DisplayObject (Sprite, MovieClip, etc) or a
		 * Class that extends a DisplayObject (ie a library symbol)
		 * 
		 *   v0.1 - TODO implement reusable assets in the same way as MovieAssetMaterial
		 * @param linkageID		The Library symbol to make the material out of.
		 * @param transparent	[optional] - whether the image is transparent or not
		 * @param animated		[optional] If true, then the bitmap updates every frame.
		 * @param forceMipMap	If true, we'll make a bitmap that scales up or down to 
		 *   the nearest mip-map-able size. Thus making your particles 
		 *   appear smoother. 
		 *   
		 */
		public function MovieAssetParticleMaterial (classRef:*, transparent:Boolean=true, animated:Boolean=false);

		public function destroy () : void;
	}
}
