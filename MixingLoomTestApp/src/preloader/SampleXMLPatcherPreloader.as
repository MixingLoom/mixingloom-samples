package preloader {
import org.mixingloom.managers.IPatchManager;
import org.mixingloom.preloader.AbstractPreloader;

import patcher.SampleXMLPatcher;

import FooInterceptor; FooInterceptor;

public class SampleXMLPatcherPreloader extends AbstractPreloader {
		
		override protected function setupPatchers(manager:IPatchManager):void {
			super.setupPatchers(manager);
			manager.registerPatcher( new SampleXMLPatcher("interceptors.xml"));
		}
	}
}