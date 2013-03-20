package prime.perceptor;
 import prime.mvc.MVCActor;
 import prime.mvc.IMVCCoreActor;
  using prime.utils.Bind;

/**
 * Receives and dispatches global events.
 */
class Controller extends MVCActor<Perceptor>, implements IMVCCoreActor
{	
    public function new (facade:Perceptor)		{ super(facade); }
}