<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>geo_sup_ac4_avap_secteur</se:Name>
    <UserStyle>
      <se:Name>geo_sup_ac4_avap_secteur</se:Name>
      
  <se:FeatureTypeStyle>
  
<!-- ############ SECTEUR URBAIN ############ --> 
    
      <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#a6cee3</se:SvgParameter>
              <se:SvgParameter name="fill-opacity">0.3</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
     </se:Rule>
    
    <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1</se:MinScaleDenominator>
	<se:MaxScaleDenominator>1501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">35</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>
         <se:Fill>
           <se:SvgParameter name="fill">#0064ff</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
 </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>2501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">30</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#0064ff</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>2501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">25</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#0064ff</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>    

<!-- ############ SECTEUR DES FAUBOURGS ############ --> 
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#eebcec</se:SvgParameter>
              <se:SvgParameter name="fill-opacity">0.3</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
    </se:Rule>
    
     <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1</se:MinScaleDenominator>
	<se:MaxScaleDenominator>1501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">35</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>
         <se:Fill>
           <se:SvgParameter name="fill">#ee00e6</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
 </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>2501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">30</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#ee00e6</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>2501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">25</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#ee00e6</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>
    
<!-- ############ SECTEUR DES EXPANSIONS ############ -->
    
    <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#e31a1c</se:SvgParameter>
              <se:SvgParameter name="fill-opacity">0.2</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
    </se:Rule>
    
     <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1</se:MinScaleDenominator>
	<se:MaxScaleDenominator>1501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">35</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>
         <se:Fill>
           <se:SvgParameter name="fill">#e31a1c</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
 </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>2501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">30</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#e31a1c</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SU3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>2501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">25</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#e31a1c</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>
    
<!-- ############ SECTEUR PAYSAGER HISTORIQUE ############ --> 
    
    <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SP</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b2df8a</se:SvgParameter>
              <se:SvgParameter name="fill-opacity">0.5</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
    </se:Rule>
    
    <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SP</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1</se:MinScaleDenominator>
	<se:MaxScaleDenominator>1501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">35</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>
         <se:Fill>
           <se:SvgParameter name="fill">#00c800</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
 </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SP</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>1501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>2501</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">30</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#00c800</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>
    
  <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>libelle</ogc:PropertyName>
              <ogc:Literal>SP</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
	<se:MinScaleDenominator>2501</se:MinScaleDenominator>
	<se:MaxScaleDenominator>7500</se:MaxScaleDenominator> 
	<se:TextSymbolizer>
         <se:Label>
           <ogc:PropertyName>libelle</ogc:PropertyName>
         </se:Label>
         <se:Font>
           <se:SvgParameter name="font-family">Arial</se:SvgParameter>
           <se:SvgParameter name="font-size">25</se:SvgParameter>
           <se:SvgParameter name="font-style">normal</se:SvgParameter>
           <se:SvgParameter name="font-weight">bold</se:SvgParameter>
         </se:Font>
  		 <se:LabelPlacement>
            <se:PointPlacement>
              <se:AnchorPoint>
  				<se:AnchorPointX>0.5</se:AnchorPointX>
				<se:AnchorPointY>0.5</se:AnchorPointY>
           	  </se:AnchorPoint>         
         	</se:PointPlacement>
        </se:LabelPlacement>  
		<se:Halo>
           <se:Radius>1.5</se:Radius>
           <se:Fill>
             <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
           </se:Fill>
		</se:Halo>  
         <se:Fill>
           <se:SvgParameter name="fill">#00c800</se:SvgParameter>
  		 </se:Fill>
	</se:TextSymbolizer>
  </se:Rule>
    
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
