.class public Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "ChaosInPenaltyArea.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "context",
            "sobl",
            "dipa",
            "at"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    .line 15
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 16
    move-object v1, v6

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    iput v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->delay:I

    move-object/from16 v2, p1

    .line 17
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 18
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->context:Landroid/content/Context;

    .line 19
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 22
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    const/high16 v5, 0x42340000    # 45.0f

    if-ne v8, v3, :cond_0

    const/high16 v5, 0x40a00000    # 5.0f

    goto :goto_0

    .line 24
    :cond_0
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v3, :cond_1

    const/high16 v5, 0x40f00000    # 7.5f

    goto :goto_0

    .line 26
    :cond_1
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v3, :cond_2

    const/high16 v5, 0x41480000    # 12.5f

    goto :goto_0

    .line 28
    :cond_2
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v3, :cond_3

    const/high16 v5, 0x41c80000    # 25.0f

    goto :goto_0

    .line 30
    :cond_3
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v3, :cond_4

    const/high16 v5, 0x420c0000    # 35.0f

    goto :goto_0

    .line 32
    :cond_4
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v3, :cond_5

    goto :goto_0

    .line 34
    :cond_5
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NONE:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v3, :cond_6

    const/high16 v5, 0x437a0000    # 250.0f

    :cond_6
    :goto_0
    float-to-double v9, v5

    .line 37
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v3

    float-to-double v11, v3

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    double-to-float v3, v9

    const/16 v5, 0x64

    .line 39
    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    float-to-int v3, v3

    if-ge v7, v3, :cond_7

    .line 41
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/BallLoss;

    const/4 v2, 0x0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v10

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/BallLoss;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0xc8

    .line 43
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v7, 0x1e

    if-ge v2, v7, :cond_8

    .line 44
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    const/4 v2, 0x0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-ge v2, v5, :cond_9

    .line 45
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    const/4 v2, 0x0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const/16 v5, 0xa0

    if-ge v2, v5, :cond_a

    .line 46
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    const/4 v2, 0x0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    const/16 v5, 0xa1

    if-ge v2, v5, :cond_b

    .line 47
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-direct {v2, v3, v4, v6}, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    if-ge v2, v3, :cond_c

    .line 48
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-direct {v2, v3, v4, v6}, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->context:Landroid/content/Context;

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->context:Landroid/content/Context;

    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->context:Landroid/content/Context;

    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 62
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 63
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
