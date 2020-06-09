<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>geo_sup_ac1_d_avap_s</se:Name>
    <UserStyle>
      <se:Name>geo_sup_ac1_d_avap_s</se:Name>


<se:FeatureTypeStyle>
  
	<se:Rule>
         <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>bati</ogc:Literal>
            </ogc:PropertyIsEqualTo>
         </ogc:Filter>
	<se:MinScaleDenominator>1</se:MinScaleDenominator>
	<se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#000000</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.1</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
   <se:PointSymbolizer>
    <se:Graphic>
     <se:ExternalGraphic>
    <se:OnlineResource xlink:type="simple" xlink:href="avap/picto_monument_classe.svg"/>
       <se:Format>image/svg+xml</se:Format>
      </se:ExternalGraphic>
      <se:Size>8</se:Size>
   	 </se:Graphic>
   </se:PointSymbolizer>
 </se:Rule>
  
 <se:Rule>
         <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>type</ogc:PropertyName>
              <ogc:Literal>divers</ogc:Literal>
            </ogc:PropertyIsEqualTo>
         </ogc:Filter>
	<se:MinScaleDenominator>1</se:MinScaleDenominator>
	<se:MaxScaleDenominator>5001</se:MaxScaleDenominator> 
         <se:PolygonSymbolizer>
            <se:Fill>
              <se:GraphicFill>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>shape://vertline</se:WellKnownName>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#00000</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                      <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>6</se:Size>
                  </se:Graphic>
              </se:GraphicFill>
            </se:Fill>
          </se:PolygonSymbolizer>
 </se:Rule>
    
      </se:FeatureTypeStyle>      
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
