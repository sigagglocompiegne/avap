<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>geo_sup_ac4_avap_passage</se:Name>
    <UserStyle>
      <se:Name>geo_sup_ac4_avap_passage</se:Name>
      
<se:FeatureTypeStyle>
    
      <se:Rule>
         <se:MinScaleDenominator>1</se:MinScaleDenominator>
         <se:MaxScaleDenominator>2501</se:MaxScaleDenominator>
          <se:LineSymbolizer>
            <se:Stroke>
               <se:SvgParameter name="stroke">#ffffff</se:SvgParameter>
               <se:SvgParameter name="stroke-width">3</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
       	  <se:PointSymbolizer>
                 <se:Geometry>
                    <ogc:Function name="startPoint">
                        <ogc:PropertyName>geom</ogc:PropertyName>
                    </ogc:Function>
                </se:Geometry>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>shape://carrow</se:WellKnownName>
                    <se:Fill>
                      <se:SvgParameter name="fill">#85b66f</se:SvgParameter>
                    </se:Fill>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#ffffff</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>20</se:Size>
                   <se:Rotation>
                    <ogc:Add>
                    <ogc:Function name="startAngle">
                        <ogc:PropertyName>geom</ogc:PropertyName>
                    </ogc:Function>
                    <ogc:Literal>180.0</ogc:Literal> 
                    </ogc:Add>                   
                  </se:Rotation>
                </se:Graphic>
           </se:PointSymbolizer>
            <se:PointSymbolizer>
                 <se:Geometry>
                    <ogc:Function name="endPoint">
                        <ogc:PropertyName>geom</ogc:PropertyName>
                    </ogc:Function>
                </se:Geometry>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>shape://carrow</se:WellKnownName>
                    <se:Fill>
                      <se:SvgParameter name="fill">#85b66f</se:SvgParameter>
                    </se:Fill>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#ffffff</se:SvgParameter>
                      <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>20</se:Size>
                   <se:Rotation>
                    <ogc:Function name="endAngle">
                        <ogc:PropertyName>geom</ogc:PropertyName>
                    </ogc:Function>
                  </se:Rotation>
                </se:Graphic>
           </se:PointSymbolizer>
           <se:LineSymbolizer>
            <se:Stroke>
               <se:SvgParameter name="stroke">#85b66f</se:SvgParameter>
               <se:SvgParameter name="stroke-width">2</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule> 
        
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
