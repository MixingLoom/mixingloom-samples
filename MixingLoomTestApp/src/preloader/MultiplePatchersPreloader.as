package preloader {
import org.mixingloom.patcher.RevealPrivatesPatcher;
import org.mixingloom.patcher.StringModifierPatcher;
import org.mixingloom.preloader.AbstractPreloader;

import patcher.SampleAsyncPatcher;

public class MultiplePatchersPreloader extends AbstractPreloader {
		
		override protected function setupPatchers():void {
			super.setupPatchers();
			registerPatcher( new RevealPrivatesPatcher("blah/Foo", "getPrivateBar") );
      registerPatcher( new StringModifierPatcher("blah/Foo", "private bar", "bwahahahaha") );
		}
		
		public function MultiplePatchersPreloader() {
			super();
		}
	}
}