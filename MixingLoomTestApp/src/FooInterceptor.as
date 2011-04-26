/**
 * Created by IntelliJ IDEA.
 * User: James Ward <james@jamesward.org>
 * Date: 4/6/11
 * Time: 8:12 PM
 */
package
{
import mx.core.FlexGlobals;

public class FooInterceptor
{
    public static function interceptAll():void
    {
        FlexGlobals.topLevelApplication.setStyle("backgroundColor", Math.random() * 0xffffff);
    }
}
}