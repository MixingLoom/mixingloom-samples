package preloader {
import org.mixingloom.managers.IPatchManager;
import org.mixingloom.patcher.RevealPrivatesPatcher;
import org.mixingloom.preloader.AbstractPreloader;

import patcher.SamplePatcher;

public class SamplePatcherPreloader extends AbstractPreloader {

    override protected function setupPatchers( manager:IPatchManager ):void {
			super.setupPatchers( manager );
			manager.registerPatcher( new SamplePatcher());
		}
		
		public function SamplePatcherPreloader() {
			super();
		}
	}
}