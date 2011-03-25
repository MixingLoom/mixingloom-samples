package patcher
{
import flash.events.TimerEvent;
import flash.utils.Timer;

import org.mixingloom.SwfContext;
import org.mixingloom.invocation.InvocationType;
import org.mixingloom.patcher.AbstractPatcher;
	
	public class SampleAsyncPatcher extends AbstractPatcher {

    private var timer:Timer;

    public function SampleAsyncPatcher( delay:int ) {
			timer = new Timer( delay, 1 );
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, handleTimerComplete );
		}

		private function handleTimerComplete( event:TimerEvent ):void {
			invokeCallBack();
		}

		override public function apply( invocationType:InvocationType, swfContext:SwfContext ):void {
			timer.reset();
			timer.start();
		}
	}
}