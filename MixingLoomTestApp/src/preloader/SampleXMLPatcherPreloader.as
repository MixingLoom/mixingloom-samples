package preloader {
import org.mixingloom.managers.IPatchManager;
import org.mixingloom.preloader.AbstractPreloader;

import patcher.SampleXMLPatcher;

public class SampleXMLPatcherPreloader extends AbstractPreloader {
		
		override protected function setupPatchers(manager:IPatchManager):void {
			super.setupPatchers(manager);
			manager.registerPatcher( new SampleXMLPatcher("interceptors.xml"));
		}
	}
}