package preloader {
import org.mixingloom.managers.IPatchManager;
import org.mixingloom.patcher.StringModifierPatcher;
import org.mixingloom.preloader.AbstractPreloader;

public class StringModifierPatcherPreloader extends AbstractPreloader {
    override protected function setupPatchers(manager:IPatchManager):void {
        super.setupPatchers(manager);
        manager.registerPatcher( new StringModifierPatcher("a bar", "not really a bar") );
    }
}
}