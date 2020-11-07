
using DocStringExtensions
using ProgressMeter
using Gadfly
using Cairo
using RoMEPlotting
Gadfly.set_default_plot_size(35cm,25cm)

# from results: 2020-02-23T03:28:10.097
inittime=[
    13.923553870000001
    # 2.0 # 7.111387647 # precompiling
    # 8.639480731
    # 0.762567549
    # 2.52150559
    14.531640172
    # 0.847736082
    # 0.783871827999999
    # 9.711954108
    # 3.188078154
    49.340871044
    33.347981764
    24.992062225
    22.201434791
    37.045889202
    35.132906422
    33.124455274
    25.782081818
    21.445426782
    38.041981655
    25.667662991
    24.509122983
    18.96485348
    35.120005101
    22.891443964
    19.393177096
    29.566993705
    22.562560487
    20.464169769
    18.329940968
    25.15793886
    19.126782885
    18.384817736
    34.474076872
    25.536059316
    18.814305877
    32.098617146
    23.725097425
    24.661727613
    23.529066873
    20.708167353
    41.850563097
    30.394270757
    27.53120688
    18.184278245
    24.561897334
    28.050592505
    22.277458803
    21.123530868
    25.581882865
    25.839933464
    24.371785428
    28.449811854
    19.297024484
    27.872869139
    17.548716492
    27.280586297
    23.6224749
    19.06120724
    26.650180153
    21.94149314
    25.836919467
    19.094412425
    33.762299562
    38.326195492
    32.017226393
    24.055516607
    30.605293042
    29.898421198
    19.657790709
    25.358863355
    19.702823874
    19.928584292
    25.222084299
    21.744061298
    22.393525834
    46.48569922
    43.689342378
    23.920386841
    40.68907699
    25.069462586
    44.516693615
    21.730817456
    23.7343984
    28.511252744
    28.729642925
    28.958604325
    19.112645443
    35.595642871
    23.72370413
    30.154412078
    27.058608226
    26.685286617
    21.138100832
    21.319813642
    41.143639249
    24.918579089
    40.665687492
    31.076767095
    31.168699379
    31.773255372
    24.11949409
    23.063612059
    24.920672172
    24.633388553
    30.933378561
    30.626149481
    34.718042871
    22.036652509
    19.681987354
    40.114025408
    23.966545466
    21.718494469
    29.748137542
    20.266077557
    27.776297353
    17.636508099
    19.340242204
    20.719850124
    18.43781753
    21.304971816
    19.582438121
    20.097249032
    19.062781597
    19.587003153
    19.031764947
    18.837652548
    19.552649898
    21.096370845
    19.895401358
    18.979098192
    19.719184593
    19.657576037
    19.97702779
    19.884674546
    20.388048656
    24.715450269
    25.178573931
    27.035220654
    21.004084076
    20.69141639
    23.313526345
    21.554464899
    22.589946352
    29.821371524
    26.30997985
    25.350900452
];

solvetime = [
    # 0
    # 0
    # 0
    # 0
    0
    # 0
    # 0
    # 0
    70.0 # 223.298124668 # precompiling is excessive
    127.927759554
    125.413819048
    148.515074234
    114.643111867
    130.067414752
    116.591257116
    125.92697153
    146.91522901
    124.459727457
    112.015100314
    119.873414991
    139.397963179
    125.617490887
    112.820977695
    129.391103947
    123.26573995
    110.883475493
    129.832680594
    136.301901148
    119.74783935
    152.537798002
    126.58402604
    142.098410369
    117.710888204
    146.374041294
    141.393480826
    137.785630885
    154.962325813
    128.055167705
    162.495087517
    120.782532872
    148.97363259
    144.861907273
    165.769649418
    162.056390594
    138.407873697
    140.74692623
    152.207775846
    155.695375416
    152.78733244
    154.058805384
    135.067113018
    142.863716583
    150.918709039
    146.376801785
    156.715065123
    139.197815332
    167.873990906
    146.304335165
    154.659913943
    141.669132261
    157.328337244
    157.663703422
    158.684651059
    161.954268784
    139.224675678
    157.836792744
    139.215477005
    160.034403365
    196.363458843
    177.526854252
    192.500806936
    210.754950187
    186.562554767
    174.188670822
    169.375834258
    171.027302979
    213.349333804
    158.431002099
    183.419584683
    167.103482839
    154.450013071
    166.855410513
    167.144473576
    156.904730049
    177.913141792
    162.445496695
    161.466968961
    159.987589656
    174.016696833
    178.093277683
    153.027023061
    181.590475774
    189.112277624
    186.886697627
    169.787662128
    175.810278451
    143.744676215
    193.088276639
    191.852113533
    184.75878549
    203.878753874
    196.998695861
    183.605287835
    163.128652931
    170.348446623
    190.923487248
    181.001078298
    211.449152831
    201.602216595
    168.809270956
    200.544647688
    210.616895848
    198.639793471
    245.181534504
    179.499840855
    120.849533366
    123.318358076
    118.590452535
    142.919545044
    125.402021766
    125.291528595
    121.632521557
    122.657152356
    128.260106156
    134.983011712
    153.491732159
    122.839969837
    133.198374417
    147.872250012
    143.670244034
    131.515225824
    132.972148121
    130.177216643
    139.176283859
    145.284707366
    141.376052209
    160.664398218
    158.65330199
    135.723196487
    137.019370905
    135.014465904
    149.970985041
    152.706946397
    157.224246642
    139.370237378
    153.155698731    
];


pl = Gadfly.plot(
    Gadfly.layer(x=1:10:1390,y=inittime, Geom.line, Theme(default_color=colorant"red",line_width=2pt)),
    Gadfly.layer(x=1:10:1390,y=solvetime, Geom.line, Theme(default_color=colorant"blue",line_width=2pt)),
    Guide.ylabel("time [s]"),
    Guide.xlabel("# poses"),
)

Gadfly.draw(pl, PDF(joinpath("/tmp/caesar/2020-02-23T03:28:10.097", "slamTime.pdf"),15cm,10cm)


pl |> PDF("slamTime.pdf", 12cm, 8cm)


#