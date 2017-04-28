component {
    
    this.name = "vue-helpers";
    this.author = "Eric Peterson";
    this.webUrl = "https://github.com/elpete/vue-helpers";

    function configure() {}

    function onLoad() {
        var helpers = controller.getSetting( "viewsHelper" );
        if ( ! isArray( helpers ) ) {
            helpers = [ helpers ];
        }
        arrayAppend(
            helpers,
            "#moduleMapping#/helpers/Vue.cfm"
        );
        controller.setSetting( "viewsHelper", helpers );
    }

    function onUnload() {
        controller.setSetting(
            "viewsHelper",
            arrayFilter( controller.getSetting( "viewsHelper" ), function( helper ) {
                return helper != "#moduleMapping#/helpers/Vue.cfm"; 
            } )
        );
    }
}