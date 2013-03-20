package prime.perceptor;
 import prime.perceptor.view.PerceptorWindow;
 import prime.perceptor.view.ButtonMediator;
 import prime.perceptor.view.ImageLoaderMediator;
 import prime.gui.display.Window;
 import prime.mvc.MVCActor;
 import prime.mvc.IMVCCoreActor;


/**
 * Defines and groups together and couples 
 * mediators and application windows.
 */
class View extends MVCActor<Perceptor>, implements IMVCCoreActor
{
    private var window:PerceptorWindow;
    public var buttonMediator(default, null):ButtonMediator;
    public var imageLoaderMediator(default, null):ImageLoaderMediator;

    public function new (facade:Perceptor)
    {
        super(facade);
        window				= Window.startup( function(stage) return new PerceptorWindow(stage) );
		buttonMediator		= new ButtonMediator(facade, true, window.button);
        imageLoaderMediator = new ImageLoaderMediator(facade, true, window.image);
    }
	
	
    override public function dispose ()
    {
		if (isDisposed())
			return;
		
        buttonMediator.dispose();
        imageLoaderMediator.dispose();
        window.dispose();
        
        buttonMediator = null;
        imageLoaderMediator = null;
        window = null;
        
        super.dispose();
    }
	
	
    override public function startListening ()
    {
        if (isListening())
			return;
        
        buttonMediator.startListening();
        imageLoaderMediator.startListening();
		super.startListening();
    }
	
	
	override public function stopListening ()
    {
        if (!isListening())
			return;
        
		super.stopListening();
        buttonMediator.stopListening();
        imageLoaderMediator.stopListening();
    }
}