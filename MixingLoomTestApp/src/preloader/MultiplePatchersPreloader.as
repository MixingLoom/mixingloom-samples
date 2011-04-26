package preloader {
import org.mixingloom.managers.IPatchManager;
import org.mixingloom.patcher.RevealPrivatesPatcher;
import org.mixingloom.patcher.StringModifierPatcher;
import org.mixingloom.preloader.AbstractPreloader;

import patcher.SampleAsyncPatcher;

public class MultiplePatchersPreloader extends AbstractPreloader {

    override protected function setupPatchers(manager:IPatchManager):void {
        super.setupPatchers(manager);
        manager.registerPatcher( new RevealPrivatesPatcher("blah:Foo", "getPrivateBar") );
        manager.registerPatcher( new StringModifierPatcher("private bar", "bwahahahaha") );
    }
    
}
}