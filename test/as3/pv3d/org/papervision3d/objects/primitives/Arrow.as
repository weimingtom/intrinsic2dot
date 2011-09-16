package org.papervision3d.objects.primitives
{
	import org.papervision3d.core.geom.TriangleMesh3D;
	import org.papervision3d.core.geom.renderables.Triangle3D;
	import org.papervision3d.core.geom.renderables.Vertex3D;
	import org.papervision3d.core.math.NumberUV;
	import org.papervision3d.core.proto.MaterialObject3D;

	public class Arrow extends TriangleMesh3D
	{
		public var verts : Array;
		public var faceAr : Array;
		public var uvs : Array;

		private function v (x:Number, y:Number, z:Number) : void;

		private function uv (u:Number, v:Number) : void;

		private function f (vn0:int, vn1:int, vn2:int, uvn0:int, uvn1:int, uvn2:int) : void;

		public function Arrow (material:MaterialObject3D=null);
	}
}
