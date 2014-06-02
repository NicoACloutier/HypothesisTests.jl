using HypothesisTests, Base.Test

@test_approx_eq pvalue(BinomialTest(26, 78)) 0.004334880883507431
@test_approx_eq pvalue(BinomialTest(26, 78), tail=:left) 0.002167440441753716
@test_approx_eq pvalue(BinomialTest(26, 78), tail=:right) 0.9989844298129187
@test_approx_eq [ci(BinomialTest(26, 78))...] [0.23058523962930383,0.4491666887959782]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:left)...] [0.0,0.4313047758370174]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:right)...] [0.2451709633730693,1.0]
@test_approx_eq [ci(BinomialTest(26, 78), method=:wald)...] [0.22871819521037956,0.43794847145628707]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:left, method=:wald)...] [0.0,0.42112912485444692]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:right, method=:wald)...] [0.24553754181221971,1.0]
@test_approx_eq [ci(BinomialTest(26, 78), method=:wilson)...] [0.23872670036358601,0.44358590287381217]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:left, method=:wilson)...] [0.0,0.42541288951088108]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:right, method=:wilson)...] [0.25242832328277831,1.0]
@test_approx_eq [ci(BinomialTest(26, 78), method=:jeffrey)...] [0.23626570247518358,0.44251318323879296]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:left, method=:jeffrey)...] [0.0,0.42466492683653623]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:right, method=:jeffrey)...] [0.25098836986261724,1.0]
@test_approx_eq [ci(BinomialTest(26, 78), method=:agresti_coull)...] [0.2384423809121706,0.44387022232522744]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:left, method=:agresti_coull)...] [0.0,0.42558712894362222]
@test_approx_eq [ci(BinomialTest(26, 78), tail=:right, method=:agresti_coull)...] [0.25225408385003706,1.0]
show(IOBuffer(), BinomialTest(26, 78))

@test_approx_eq pvalue(BinomialTest([trues(6), falses(3)])) 0.5078125000000002
@test_approx_eq pvalue(BinomialTest([trues(6), falses(3)]), tail=:left) 0.91015625
@test_approx_eq pvalue(BinomialTest([trues(6), falses(3)]), tail=:right) 0.2539062500000001
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]))...] [0.2992950562085405,0.9251453685803082]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:left)...] [0.0,0.9022531865607242]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:right)...] [0.3449413659437032,1.0]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), method=:wald)...] [0.35868803903340479,0.97464529429992841]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:left, method=:wald)...] [0.0,0.92513047859481645]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:right, method=:wald)...] [0.40820285473851681,1.0]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), method=:wilson)...] [0.35420213558039609,0.87941618161308899]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:left, method=:wilson)...] [0.0,0.85802909820500495]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:right, method=:wilson)...] [0.39825972868840931,1.0]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), method=:jeffrey)...] [0.34779179347226591,0.89578677833922582]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:left, method=:jeffrey)...] [0.0,0.86830830610561005]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:right, method=:jeffrey)...] [0.39604343455469687,1.0]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), method=:agresti_coull)...] [0.350905767251112,0.88271254994237336]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:left, method=:agresti_coull)...] [0.0,0.86049746046629294]
@test_approx_eq [ci(BinomialTest([trues(6), falses(3)]), tail=:right, method=:agresti_coull)...] [0.39579136642712159,1.0]
show(IOBuffer(), BinomialTest([trues(6), falses(3)]))

x = [55, 58, 61, 61, 62, 62, 62, 63, 63, 64, 66, 68, 68, 69, 69, 69, 70, 71, 72, 72]
@test_approx_eq pvalue(SignTest(x)) 1.907348632812499e-6
@test_approx_eq pvalue(SignTest(x), tail=:left) 1.0
@test_approx_eq pvalue(SignTest(x), tail=:right) 9.536743164062495e-7
@test_approx_eq pvalue(SignTest(x, 70)) 0.004425048828125003
@test_approx_eq pvalue(SignTest(x, 70), tail=:left) 0.0022125244140625013
@test_approx_eq pvalue(SignTest(x, 70), tail=:right) 0.9996356964111328
show(IOBuffer(), SignTest(x, 70))

x = [9, 2, 7, 5]
y = [7, 2, 6, 4]
@test_approx_eq pvalue(SignTest(x, y)) 0.25
show(IOBuffer(), SignTest(x, y))