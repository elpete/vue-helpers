<cfscript>
public string function prop( required any value ) {
    if ( isSimpleValue( value ) ) {
        var editFormatValue = htmlEditFormat( value );
        var doubleQuotesEscaped = replace( editFormatValue, '"', "&quot;", "ALL" );
        var singleQuotesEscaped = replace( doubleQuotesEscaped, "'", "&##39;", "ALL" );
        return singleQuotesEscaped;
    }
    return htmlEditFormat( serializeJson( arguments.value ) );
}
</cfscript>