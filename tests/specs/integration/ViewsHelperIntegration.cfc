component extends="tests.resources.ModuleIntegrationSpec" appMapping="/app" {
    function run() {
        describe( "Activating the Views Helper", function() {
            it( "can be activated", function() {
                expect( getController().getModuleService().isModuleRegistered( "vue-helpers" ) ).toBeTrue();
            } );

            it( "is accessible from a view", function() {
                expect( function() {
                    execute( "Main.index" );
                } ).notToThrow();
            } );
        } );
    }
}