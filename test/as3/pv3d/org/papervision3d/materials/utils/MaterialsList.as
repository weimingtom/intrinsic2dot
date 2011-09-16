package org.papervision3d.materials.utils
{
	import flash.utils.Dictionary;
	import org.papervision3d.core.proto.*;

	/**
	 * The MaterialsList class contains a list of materials.
	 * <p/>
	 * Each MaterialsList object has its own materials list.
	 */
	public class MaterialsList
	{
		/**
		 * [internal-use] List of materials.
		 */
		protected var _materials : Dictionary;
		private var _materialsTotal : int;

		/**
		 * List of materials indexed by name.
		 */
		public var materialsByName : Dictionary;

		/**
		 * Returns the number of children of this object.
		 */
		public function get numMaterials () : int;

		/**
		 * Creates a list of materials.
		 * @param	materials	An array or name indexed object with materials to populate the list with.
		 */
		public function MaterialsList (materials:*=null);

		/**
		 * Adds a material to this MaterialsList object.
		 * @param	material	The material to add.
		 * @param	name		An optional name of the material. If no name is provided, the material name will be used.
		 * @return	The material you have added.
		 */
		public function addMaterial (material:MaterialObject3D, name:String=null) : MaterialObject3D;

		/**
		 * Removes the specified material from the materials list.
		 * @param	material	The material to remove.
		 * @return	The material you have removed.
		 */
		public function removeMaterial (material:MaterialObject3D) : MaterialObject3D;

		/**
		 * Returns the material that exists with the specified name.
		 * </p>
		 * @param	name	The name of the material to return.
		 * @return	The material with the specified name.
		 */
		public function getMaterialByName (name:String) : MaterialObject3D;

		/**
		 * Removes the material that exists with the specified name.
		 * </p>
		 * The material object is garbage collected if no other references to the material exist.
		 * </p>
		 * The garbage collector is the process by which Flash Player reallocates unused memory space. When a variable or object is no longer actively referenced or stored somewhere, the garbage collector sweeps through and wipes out the memory space it used to occupy if no other references to it exist.
		 * </p>
		 * @param	name	The name of the material to remove.
		 * @return	The material object that was removed.
		 */
		public function removeMaterialByName (name:String) : MaterialObject3D;

		/**
		 * Creates a copy of the materials list.
		 * @return	A newly created materials list that contains a duplicate of each of its materials.
		 */
		public function clone () : MaterialsList;

		/**
		 * Returns a string with the names of the materials in the list.
		 * @return	A string.
		 */
		public function toString () : String;
	}
}
