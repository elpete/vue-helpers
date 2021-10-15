<cfscript>
public string function prop( required any value ) {
    value = isSimpleValue( value ) ? value : serializeJSON( value );
    var editFormatValue = encodeForHTML( value );
    var doubleQuotesEscaped = replace( editFormatValue, '"', "&quot;", "ALL" );
    var singleQuotesEscaped = replace( doubleQuotesEscaped, "'", "&##39;", "ALL" );
    return singleQuotesEscaped;
}
</cfscript>
