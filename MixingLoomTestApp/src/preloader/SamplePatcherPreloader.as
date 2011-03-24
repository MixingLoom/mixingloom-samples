package preloader {
import org.mixingloom.patcher.RevealPrivatesPatcher;
import org.mixingloom.preloader.AbstractPreloader;

import patcher.SamplePatcher;

public class SamplePatcherPreloader extends AbstractPreloader {
		
		override protected function setupPatchers():void {
			super.setupPatchers();
			registerPatcher( new SamplePatcher());
		}
		
		public function SamplePatcherPreloader() {
			super();
		}
	}
}