﻿package org.papervision3d.objects.special.commands
{
	import flash.display.Graphics;

	/**
	 *
	 * @author Mark Barcinski
	 */
	public interface IVectorShape
	{
		function draw (graphics:Graphics, prevDrawn:Boolean) : Boolean;
	}
}
