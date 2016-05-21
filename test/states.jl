@testset "States" begin
    @testset "IAU rotations" begin
        # Reference data form WebGeocalc (http://wgc.jpl.nasa.gov/)
        ep = Epoch(TT, 2000, 1, 1, 12) + EpochDelta(seconds=1000)
        M_Mercury = reshape([
            0.93161546
            -0.27117375
            -0.24198643
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.35177121
            0.84016564
            0.41276956
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.09137641
            -0.46966636
            0.87810242
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            4.36141153E-07
            1.04167363E-06
            5.11769580E-07
            0.93161546
            -0.27117375
            -0.24198643
            -1.15505708E-06
            3.36212903E-07
            3.00025285E-07
            0.35177121
            0.84016564
            0.41276956
            -8.06548746E-14
            -3.99346680E-14
            -1.29666162E-14
            0.09137641
            -0.46966636
            0.87810242
        ], (6, 6))'
        @test rotation_matrix(MERCURY, ep) ≈ M_Mercury
        M_Venus = reshape([
            -0.95473270
            0.26677448
            0.13159348
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            -0.29687729
            -0.88233398
            -0.36517205
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.01869081
            -0.38770881
            0.92159239
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            8.88390262E-08
            2.64033981E-07
            1.09275888E-07
            -0.95473270
            0.26677448
            0.13159348
            -2.85698932E-07
            7.98309152E-08
            3.93786831E-08
            -0.29687729
            -0.88233398
            -0.36517205
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.01869081
            -0.38770881
            0.92159239
        ], (6, 6))'
        @test rotation_matrix(VENUS, ep) ≈ M_Venus
        M_Earth = reshape([
            0.24742306
            -0.96890755
            -7.62199719E-10
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.96890755
            0.24742306
            -2.98477054E-09
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            3.08055248E-09
            -1.09209406E-17
            1.00000000
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            7.06538526E-05
            1.80423738E-05
            -9.79852602E-13
            0.24742306
            -0.96890755
            -7.62199719E-10
            -1.80423738E-05
            7.06538526E-05
            -2.92918995E-12
            0.96890755
            0.24742306
            -2.98477054E-09
            3.08055237E-12
            -2.18418808E-20
            -9.48980323E-21
            3.08055248E-09
            -1.09209406E-17
            1.00000000
        ], (6, 6))'
        @test rotation_matrix(EARTH, ep) ≈ M_Earth
        M_Mars = reshape([
            -0.66608963
            -0.74583619
            -0.00727954
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.59771816
            -0.52791987
            -0.60335198
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.44615873
            -0.40623761
            0.79744178
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            4.23675661E-05
            -3.74201109E-05
            -4.27669044E-05
            -0.66608963
            -0.74583619
            -0.00727954
            4.72138849E-05
            5.28664951E-05
            5.15989714E-07
            0.59771816
            -0.52791987
            -0.60335198
            -3.97806628E-14
            -4.42633886E-13
            -2.03232447E-13
            0.44615873
            -0.40623761
            0.79744178
        ], (6, 6))'
        @test rotation_matrix(MARS, ep) ≈ M_Mars
        M_Jupiter = reshape([
            0.39505525
            -0.83169183
            -0.39015388
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.91854138
            0.35086343
            0.18214441
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            -0.01459729
            -0.43032959
            0.90255380
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.00016153
            6.17004691E-05
            3.20306845E-05
            0.39505525
            -0.83169183
            -0.39015388
            -6.94717442E-05
            0.00014626
            6.86098223E-05
            0.91854138
            0.35086343
            0.18214441
            -5.69989759E-14
            4.64700233E-15
            1.29378658E-15
            -0.01459729
            -0.43032959
            0.90255380
        ], (6, 6))'
        @test rotation_matrix(JUPITER, ep) ≈ M_Jupiter
        M_Saturn = reshape([
            -0.99620412
            0.02275182
            0.08402210
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            -0.01645380
            -0.99705510
            0.07490256
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.08547883
            0.07323576
            0.99364475
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            -2.69488600E-06
            -0.00016330
            1.22679155E-05
            -0.99620412
            0.02275182
            0.08402210
            0.00016316
            -3.72640641E-06
            -1.37615586E-05
            -0.01645380
            -0.99705510
            0.07490256
            3.12743406E-14
            -2.71699092E-15
            -2.49013867E-15
            0.08547883
            0.07323576
            0.99364475
        ], (6, 6))'
        @test rotation_matrix(SATURN, ep) ≈ M_Saturn
        M_Uranus = reshape([
            -0.91000094
            0.28785233
            -0.29839458
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.35630671
            0.17494968
            -0.91784429
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            -0.21199958
            -0.94155916
            -0.26176809
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            -3.60714918E-05
            -1.77114146E-05
            9.29199819E-05
            -0.91000094
            0.28785233
            -0.29839458
            -9.21259430E-05
            2.91413627E-05
            -3.02086310E-05
            0.35630671
            0.17494968
            -0.91784429
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            -0.21199958
            -0.94155916
            -0.26176809
        ], (6, 6))'
        @test rotation_matrix(URANUS, ep) ≈ M_Uranus
        M_Neptune = reshape([
            0.16782169
            -0.67394650
            -0.71946646
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.91829122
            0.37233151
            -0.13457519
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            0.35857651
            -0.63809510
            0.68136446
            0.00000000E+00
            0.00000000E+00
            0.00000000E+00
            9.94860666E-05
            4.03377447E-05
            -1.45796407E-05
            0.16782169
            -0.67394650
            -0.71946646
            -1.81815093E-05
            7.30141884E-05
            7.79457377E-05
            0.91829122
            0.37233151
            -0.13457519
            2.28629820E-12
            1.20926573E-12
            -7.07202958E-14
            0.35857651
            -0.63809510
            0.68136446
        ], (6, 6))'
        @test rotation_matrix(NEPTUNE, ep) ≈ M_Neptune
    end
end
