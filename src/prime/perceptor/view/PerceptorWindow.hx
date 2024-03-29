package prime.perceptor.view;

import prime.gui.core.UIWindow;
import prime.gui.components.Button;
import prime.gui.components.Image;


/**
 * Initializes user interface elements and 
 * acts as a container for them.
 */
class PerceptorWindow extends UIWindow
{	
    public var button:Button;
    public var image:Image;
	
    // Add ui elements to the window.
    override private function createChildren ()
    {
        image = new Image("mainImage");
        children.add(image);
     
        button = new Button("loadButton", "Load image");
        children.add(button);
    }
}
