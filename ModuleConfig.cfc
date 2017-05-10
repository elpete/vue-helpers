component {
    
    this.name = "vue-helpers";
    this.author = "Eric Peterson";
    this.webUrl = "https://github.com/elpete/vue-helpers";

    function configure() {}

    function onLoad() {
        var helpers = controller.getSetting( "applicationHelper" );
        arrayAppend(
            helpers,
            "#moduleMapping#/helpers/Vue.cfm"
        );
        controller.setSetting( "applicationHelper", helpers );
    }

    function onUnload() {
        controller.setSetting(
            "applicationHelper",
            arrayFilter( controller.getSetting( "applicationHelper" ), function( helper ) {
                return helper != "#moduleMapping#/helpers/Vue.cfm"; 
            } )
        );
    }
}