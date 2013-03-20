package prime.perceptor;
 import prime.signal.Signal1;
 import prime.signal.Signals;

/**
 * Defines and groups together the events used in the application
 *  and provides a main access point for them.
 */
class Events extends Signals
{
    public var loadImage:Signal1 < String >;

    public function new ()
    {
        super();
		
		// Instantiate Signal1 that accepts a String as a parameter.
        loadImage = new Signal1();
    }
}