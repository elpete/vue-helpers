component extends="testbox.system.BaseSpec" {

    function beforeAll() {
        include "/helpers/Vue.cfm";
    }

    function run() {
        describe( "Vue Helpers", function() {
            feature( "prop", function() {
                it( "returns simple values as strings", function() {
                    expect( prop( 1 ) ).toBe( "1" );
                } );

                it( "serializes arrays correctly", function() {
                    expect( prop( [ 1, 2, 3, 4 ] ) ).toBe( "[1,2,3,4]" );
                } );

                it( "escapes quotes correctly", function() {
                    expect( prop( 'hel"lo' ) ).toBe( 'hel&quot;lo' );
                    expect( prop( "hel'lo" ) ).toBe( "hel&##39;lo" );
                    expect( prop( [ "a", "b", "c" ] ) ).toBe(
                        "[&quot;a&quot;,&quot;b&quot;,&quot;c&quot;]"
                    );
                } );
            } );
        } );
    }

}