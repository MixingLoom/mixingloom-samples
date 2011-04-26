/**
 * Created by IntelliJ IDEA.
 * User: James Ward <james@jamesward.org>
 * Date: 4/4/11
 * Time: 12:22 PM
 */
package {
import org.mixingloom.SwfContext;
import org.mixingloom.invocation.InvocationType;
import org.mixingloom.patcher.RevealPrivatesPatcher;

public class MyRevealPrivatesPatcher extends RevealPrivatesPatcher {

    public function MyRevealPrivatesPatcher(className:String, propertyOrMethodName:String) {
        super(className, propertyOrMethodName);
    }

    override public function apply( invocationType:InvocationType, swfContext:SwfContext ):void {
        if ((invocationType.type == InvocationType.RSL) && (invocationType.url.indexOf("spark_") >= 0)) {
            super.apply(invocationType, swfContext);
        }
        else {
            invokeCallBack();
        }
    }
}
}