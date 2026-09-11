.class public Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "CrossFromLeft.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "previousPlayer",
            "attackingTeam",
            "defendingTeam",
            "samePlayer",
            "context",
            "sobl",
            "dipa",
            "at"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 18
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 19
    move-object v3, v6

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v4

    iput v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->delay:I

    .line 20
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_0

    .line 21
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_1

    .line 23
    :cond_0
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_1

    .line 24
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCloseFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    iput-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 25
    :cond_1
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_2

    .line 26
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFarFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    iput-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 27
    :cond_2
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->CORNER_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_3

    .line 28
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCornerKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    iput-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 30
    :cond_3
    :goto_0
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v7, :cond_4

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne v7, v1, :cond_5

    :cond_4
    const/4 v7, 0x4

    new-array v7, v7, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 31
    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v10, v7, v5

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v10, v7, v4

    const/4 v10, 0x2

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v11, v7, v10

    const/4 v10, 0x3

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v11, v7, v10

    .line 32
    invoke-virtual {v0, v7, v1}, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 35
    :cond_5
    :goto_1
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    .line 36
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v7, 0x64

    .line 38
    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 39
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getCrossing()B

    move-result v11

    .line 41
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v12, :cond_6

    int-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    :goto_2
    mul-double v11, v11, v13

    double-to-int v11, v11

    goto :goto_3

    .line 42
    :cond_6
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v12, :cond_7

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ffc000000000000L    # 1.75

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 43
    :cond_7
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v12, :cond_8

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 44
    :cond_8
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v12, :cond_9

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff4000000000000L    # 1.25

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 45
    :cond_9
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v12, :cond_a

    int-to-double v11, v11

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 46
    :cond_a
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v12, :cond_b

    int-to-double v11, v11

    const-wide v13, 0x3fd999999999999aL    # 0.4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 47
    :cond_b
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NONE:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v12, :cond_c

    int-to-double v11, v11

    const-wide/16 v13, 0x0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 49
    :cond_c
    :goto_3
    invoke-virtual {v0, v2, v9}, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->getStrengthAverageOfPlayersInPenaltyArea(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/ActionType;)F

    move-result v2

    int-to-double v11, v11

    float-to-double v13, v2

    const-wide/high16 v15, 0x4049000000000000L    # 50.0

    .line 50
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v15

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-int v2, v11

    const/16 v11, 0x5a

    if-le v2, v11, :cond_d

    const/16 v2, 0x5a

    :cond_d
    if-ge v10, v2, :cond_16

    const/16 v2, 0xc8

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v7, 0x24

    if-ge v1, v7, :cond_e

    .line 56
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    const/16 v7, 0x48

    if-ge v1, v7, :cond_f

    .line 57
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    const/16 v7, 0x6c

    if-ge v1, v7, :cond_10

    .line 58
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    const/16 v7, 0x74

    if-ge v1, v7, :cond_11

    .line 59
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_11
    const/16 v7, 0x7c

    if-ge v1, v7, :cond_12

    .line 60
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_12
    const/16 v7, 0x96

    if-ge v1, v7, :cond_13

    .line 61
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    invoke-direct {v2, v5, v6}, Lpl/mkrstudio/truefootball3/matchEvents/Offside;-><init>(ZLandroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_13
    const/16 v5, 0xb0

    if-ge v1, v5, :cond_14

    .line 62
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_14
    const/16 v5, 0xc7

    if-ge v1, v5, :cond_15

    .line 63
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_15
    if-ge v1, v2, :cond_1a

    .line 65
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v1, v2, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 66
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v4, p3

    invoke-direct {v2, v3, v4, v6}, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_16
    move-object/from16 v4, p3

    .line 69
    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_17

    .line 70
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    invoke-direct {v2, v5, v6}, Lpl/mkrstudio/truefootball3/matchEvents/Offside;-><init>(ZLandroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_17
    const/16 v2, 0x50

    if-ge v1, v2, :cond_18

    .line 71
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_18
    const/16 v2, 0x55

    if-ge v1, v2, :cond_19

    .line 72
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_19
    if-ge v1, v7, :cond_1a

    .line 73
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0212

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    .line 83
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0213

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0214

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0215

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0216

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 88
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 89
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
