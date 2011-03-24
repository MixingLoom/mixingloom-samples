package preloader {
import org.mixingloom.patcher.RevealPrivatesPatcher;
import org.mixingloom.preloader.AbstractPreloader;

import patcher.SampleAsyncPatcher;
import patcher.SamplePatcher;

public class SampleAsyncPatcherPreloader extends AbstractPreloader {
		
		override protected function setupPatchers():void {
			super.setupPatchers();
			registerPatcher( new SampleAsyncPatcher(5000));
		}
		
		public function SampleAsyncPatcherPreloader() {
			super();
		}
	}
}