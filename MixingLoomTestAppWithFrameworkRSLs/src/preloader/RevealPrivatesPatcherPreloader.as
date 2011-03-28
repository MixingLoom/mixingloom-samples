package preloader {
import org.mixingloom.patcher.RevealPrivatesPatcher;
import org.mixingloom.preloader.AbstractPreloader;

	public class RevealPrivatesPatcherPreloader extends AbstractPreloader {

		override protected function setupPatchers():void {
			super.setupPatchers();
			registerPatcher( new RevealPrivatesPatcher(null, "spark.components.Application", "debugTickler") );
		}

		public function RevealPrivatesPatcherPreloader() {
			super();
		}
	}
}