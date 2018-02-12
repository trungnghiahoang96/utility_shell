WITH garage_location AS
  (SELECT '{"type":"Polygon","coordinates":[[[4.442896842956543,50.8437522425508],[4.443368911743164,50.8415301248178],[4.440708160400391,50.84033772533234],[4.438991546630859,50.8407713286708],[4.437403678894043,50.83974151416288],[4.437575340270996,50.83838646044699],[4.439334869384766,50.83811544498199],[4.440107345581055,50.839145295375644],[4.442939758300781,50.83835935897131],[4.457745552062988,50.84022932386816],[4.458818435668945,50.84022932386816],[4.458732604980469,50.839226598386105],[4.4611358642578125,50.83700426511972],[4.464998245239258,50.83963311131365],[4.465384483337402,50.84082552880482],[4.463796615600586,50.844538088124544],[4.46444034576416,50.84537811530771],[4.462895393371582,50.84787101015696],[4.459891319274902,50.84833163918871],[4.449892044067383,50.8475458575137],[4.442896842956543,50.8437522425508]]]}' AS garage_geojson),
     garage_location2 AS
  (SELECT '{"type":"Polygon","coordinates":[[[4.437532424926758,50.838196749786746],[4.436459541320801,50.83846776477957],[4.435772895812988,50.837546307382226],[4.435214996337891,50.8376005112622],[4.4329833984375,50.83331821076725],[4.435386657714843,50.83112270182924],[4.440021514892578,50.83131244124628],[4.442167282104492,50.82868312633194],[4.441952705383301,50.82816808853875],[4.445600509643554,50.82700245570873],[4.4484758377075195,50.82892708961907],[4.449591636657715,50.82871023342679],[4.454784393310547,50.82944211903826],[4.45469856262207,50.830932961640926],[4.457788467407226,50.83396871210152],[4.45645809173584,50.834836033110854],[4.461007118225098,50.83697716284132],[4.4583892822265625,50.839199497398354],[4.458518028259277,50.84003962069985],[4.443154335021972,50.838305155972755],[4.440064430236816,50.838901385494296],[4.439377784729004,50.83795283494747],[4.437532424926758,50.838196749786746]]]}' AS garage_geojson2)
SELECT *
FROM garage_location
UNION ALL
SELECT *
FROM garage_location2