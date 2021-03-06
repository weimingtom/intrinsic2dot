﻿package org.papervision3d.objects.special.commands
{
	import org.papervision3d.objects.special.commands.IVectorShape;
	import flash.display.Graphics;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public class BeginFill implements IVectorShape
	{
		public var fillColor : uint;
		public var fillAlpha : Number;

		public function BeginFill (fillColor:uint=0x000000, fillAlpha:Number=1);

		public function draw (graphics:Graphics, prevDrawn:Boolean) : Boolean;
	}
}
