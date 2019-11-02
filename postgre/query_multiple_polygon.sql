WITH garage_location as
  ( SELECT '{
        "type": "Polygon",
   "coordinates":[[[4.442896842956543,50.8437522425508],[4.443368911743164,50.8415301248178],[4.440708160400391,50.84033772533234],[4.438991546630859,50.8407713286708],[4.437403678894043,50.83974151416288],[4.437575340270996,50.83838646044699],[4.439334869384766,50.83811544498199],[4.440107345581055,50.839145295375644],[4.442939758300781,50.83835935897131],[4.457745552062988,50.84022932386816],[4.458818435668945,50.84022932386816],[4.458732604980469,50.839226598386105],[4.4611358642578125,50.83700426511972],[4.464998245239258,50.83963311131365],[4.465384483337402,50.84082552880482],[4.463796615600586,50.844538088124544],[4.46444034576416,50.84537811530771],[4.462895393371582,50.84787101015696],[4.459891319274902,50.84833163918871],[4.449892044067383,50.8475458575137],[4.442896842956543,50.8437522425508]]]
      }' AS garage_geojson),
                     garage_location2 as
  ( SELECT '{
        "type": "Polygon",
   "coordinates":[[[4.437532424926758,50.838196749786746],[4.436459541320801,50.83846776477957],[4.435772895812988,50.837546307382226],[4.435214996337891,50.8376005112622],[4.4329833984375,50.83331821076725],[4.435386657714843,50.83112270182924],[4.440021514892578,50.83131244124628],[4.442167282104492,50.82868312633194],[4.441952705383301,50.82816808853875],[4.445600509643554,50.82700245570873],[4.4484758377075195,50.82892708961907],[4.449591636657715,50.82871023342679],[4.454784393310547,50.82944211903826],[4.45469856262207,50.830932961640926],[4.457788467407226,50.83396871210152],[4.45645809173584,50.834836033110854],[4.461007118225098,50.83697716284132],[4.4583892822265625,50.839199497398354],[4.458518028259277,50.84003962069985],[4.443154335021972,50.838305155972755],[4.440064430236816,50.838901385494296],[4.439377784729004,50.83795283494747],[4.437532424926758,50.838196749786746]]]
      }' AS garage_geojson2),
                                      garage_location3 as
  ( SELECT '{
        "type": "Polygon",
  "coordinates":[[[4.346122741699219,50.85916865680137],[4.358997344970703,50.87352382675771],[4.348268508911133,50.87796490837991],[4.347324371337891,50.881214212173845],[4.339771270751953,50.8830553837478],[4.335136413574219,50.882892930359034],[4.331274032592773,50.8828387791036],[4.327583312988281,50.88051021557967],[4.326982498168945,50.878777255570405],[4.323549270629883,50.877315020431254],[4.319601058959961,50.878506474747056],[4.316425323486328,50.878398161977145],[4.317197799682617,50.877152547027954],[4.321660995483398,50.874390412502265],[4.330244064331055,50.86344858502363],[4.346122741699219,50.85916865680137]]]
      }' AS garage_geojson3),
                                                       garage_location4 as
  ( SELECT '{
        "type": "Polygon",
 "coordinates":[[[4.331102371215819,50.86263597063919],[4.315652847290039,50.87991451784596],[4.304065704345703,50.878398161977145],[4.300804138183594,50.877639965538485],[4.29865837097168,50.87173644277088],[4.303379058837891,50.86946149128906],[4.302692413330078,50.86870314945455],[4.29840087890625,50.8668614107797],[4.299774169921875,50.865344630175976],[4.305267333984374,50.86675307094459],[4.309301376342773,50.8668614107797],[4.317197799682617,50.86079399226619],[4.329214096069336,50.86328606327979],[4.331102371215819,50.86263597063919]]]
      }' AS garage_geojson4),
                                                                        garage_location5 as
  ( SELECT '{
        "type": "Polygon",
"coordinates":[[[4.3251800537109375,50.839660212049566],[4.311532974243164,50.839931218543114],[4.306297302246094,50.84066292821393],[4.301018714904785,50.83906399222352],[4.298958778381347,50.83906399222352],[4.2993879318237305,50.837248184916945],[4.2990875244140625,50.835540719563056],[4.29964542388916,50.83535099733417],[4.301791191101074,50.833047165868834],[4.302778244018555,50.83299295670028],[4.307069778442383,50.83497155056262],[4.3172407150268555,50.836516421700495],[4.319601058959961,50.83686875357037],[4.32436466217041,50.836028573181615],[4.326038360595703,50.839118194340664],[4.3251800537109375,50.839660212049566]]]
      }' AS garage_geojson5),
                                                                                         garage_location6 as
  ( SELECT '{
        "type": "Polygon",
 "coordinates":[[[4.3688249588012695,50.81059918724785],[4.36830997467041,50.811982164496555],[4.353160858154297,50.811819463416064],[4.3488264083862305,50.81092459734309],[4.349384307861328,50.80975853400941],[4.346294403076172,50.80593472676908],[4.347023963928223,50.80381929468499],[4.354190826416016,50.804388843514594],[4.361057281494141,50.80373792999973],[4.37204360961914,50.805365196784166],[4.3688249588012695,50.81059918724785]]]
      }' AS garage_geojson6)
SELECT *
FROM garage_location
UNION ALL
SELECT *
FROM garage_location2
UNION ALL
SELECT *
FROM garage_location3
UNION ALL
SELECT *
FROM garage_location4
UNION ALL
SELECT *
FROM garage_location5
UNION ALL
SELECT *
FROM garage_location6