﻿//kabam.rotmg.game.view.PortalPanelMediator

package kabam.rotmg.game.view
{
import com.company.assembleegameclient.ui.panels.PortalPanel;

import kabam.rotmg.core.service.GoogleAnalytics;
import kabam.rotmg.game.signals.ExitGameSignal;

import robotlegs.bender.bundles.mvcs.Mediator;

public class PortalPanelMediator extends Mediator
{

	[Inject]
	public var view:PortalPanel;
	[Inject]
	public var exitGameSignal:ExitGameSignal;
	[Inject]
	public var googleAnalytics:GoogleAnalytics;


	override public function initialize():void
	{
		this.view.googleAnalytics = this.googleAnalytics;
		this.view.exitGameSignal.add(this.onExitGame);
	}

	private function onExitGame():void
	{
		this.exitGameSignal.dispatch();
	}

	override public function destroy():void
	{
		this.view.exitGameSignal.remove(this.onExitGame);
	}


}
}//package kabam.rotmg.game.view

