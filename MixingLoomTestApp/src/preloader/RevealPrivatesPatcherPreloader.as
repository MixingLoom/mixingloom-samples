package preloader {
import org.mixingloom.patcher.RevealPrivatesPatcher;
import org.mixingloom.preloader.AbstractPreloader;

	public class RevealPrivatesPatcherPreloader extends AbstractPreloader {

		override protected function setupPatchers():void {
			super.setupPatchers();
			registerPatcher( new RevealPrivatesPatcher("blah/Foo", "getPrivateBar") );
		}

		public function RevealPrivatesPatcherPreloader() {
			super();
		}
	}
}