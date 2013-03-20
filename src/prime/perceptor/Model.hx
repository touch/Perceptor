package prime.perceptor;

import prime.mvc.MVCNotifier;
import prime.mvc.IMVCCore;


/**
 * MainModel corresponds to the model of the MVC model. 
 * MainModel serves as a transitional hub for various 
 * data provided by proxies, thus allowing to separate data
 * logic from UI and to keep various data separate. 
 * It defines and groups together proxies, provides a main 
 * access point for them and handles data logic.
 */
class Model extends MVCNotifier, implements IMVCCore
{
	
    public var mainProxy (default, null):prime.perceptor.model.MainProxy;
    public function new (facade:Perceptor, enabled = true)		
    { 
      super(enabled); 
      mainProxy = new prime.perceptor.model.MainProxy( facade.events );
    }
}