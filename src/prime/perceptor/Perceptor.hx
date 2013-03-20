package prime.perceptor;
 import prime.mvc.Facade;
 import prime.core.traits.IDisposable;

/**
 * Perceptor's Facade.
 */
class Perceptor extends Facade<Events, Model, IDisposable, Controller, View>
{
	// Initialize the application and create and instance of Perceptor.
    public static function main ()	{ new Perceptor().start(); }
    private function new ()			{ super(); }

	// Initialize the core singletons model, view, controller and events.
    override private function setupModel      (){ model      = new Model      (this); }
    override private function setupView       (){ view       = new View       (this); }
    override private function setupController (){ controller = new Controller (this); }
	override private function setupEvents     (){ events     = new Events     ();     }
}
