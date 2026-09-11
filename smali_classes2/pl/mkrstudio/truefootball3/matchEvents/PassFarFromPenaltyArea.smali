.class public Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "PassFarFromPenaltyArea.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 22
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

    .line 22
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 23
    move-object v3, v6

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v4

    iput v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->delay:I

    .line 24
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x0

    if-eqz p4, :cond_0

    .line 25
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    :cond_0
    new-array v13, v11, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 27
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v12

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v10

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v9

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v8

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v7

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v5

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v4

    .line 29
    invoke-virtual {v0, v13, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 31
    :goto_0
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    .line 33
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/high16 v13, 0x40400000    # 3.0f

    .line 37
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v14

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Pressing;->HIGH:Lpl/mkrstudio/truefootball3/enums/Pressing;

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    if-ne v14, v15, :cond_1

    float-to-double v13, v13

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v13, v13, v18

    :goto_2
    double-to-float v13, v13

    goto :goto_3

    .line 38
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v14

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v14, v15, :cond_2

    float-to-double v13, v13

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v14

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Pressing;->LOW:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v14, v15, :cond_3

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v16

    goto :goto_2

    :cond_3
    :goto_3
    float-to-double v13, v13

    move-object/from16 v15, p3

    .line 40
    invoke-virtual {v0, v15}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v11

    float-to-double v4, v11

    const-wide/high16 v20, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v4, v20

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v4

    double-to-float v4, v13

    float-to-double v4, v4

    .line 41
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v11

    const/16 v13, 0x64

    rsub-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    float-to-double v7, v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v7, v20

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    double-to-float v4, v4

    float-to-double v4, v4

    const-wide v7, -0x4046666666666666L    # -0.1

    .line 43
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v11

    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v7

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    add-double/2addr v14, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    double-to-float v4, v4

    float-to-double v4, v4

    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 44
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v11

    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v7

    add-double v14, v14, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    double-to-float v4, v4

    .line 46
    invoke-virtual {v1, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    float-to-int v4, v4

    if-ge v5, v4, :cond_4

    .line 48
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, -0x41666666    # -0.3f

    invoke-virtual {v3, v1, v2, v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 49
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 52
    :cond_4
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v4, v5, v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    const/16 v4, 0xa

    new-array v5, v4, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 53
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v7, v5, v12

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v7, v5, v10

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v7, v5, v9

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v8, 0x3

    aput-object v7, v5, v8

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v8, 0x4

    aput-object v7, v5, v8

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v8, 0x5

    aput-object v7, v5, v8

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v8, 0x6

    aput-object v7, v5, v8

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v8, 0x7

    aput-object v7, v5, v8

    const/16 v7, 0x8

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v5, v7

    const/16 v7, 0x9

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v5, v7

    .line 55
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v7}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    .line 56
    invoke-virtual {v0, v2, v7}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getIndividualOrders(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v8, v9, :cond_5

    const/16 v12, 0x64

    goto :goto_4

    .line 60
    :cond_5
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v8, v9, :cond_6

    const/16 v12, 0x42

    goto :goto_4

    .line 61
    :cond_6
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v8, v9, :cond_7

    const/16 v12, 0x21

    .line 64
    :cond_7
    :goto_4
    invoke-virtual {v1, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    if-ge v8, v12, :cond_8

    .line 66
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 68
    :cond_8
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    const/16 v10, 0xc8

    if-ne v8, v9, :cond_d

    .line 69
    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v4, :cond_a

    .line 71
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    .line 72
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_9

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_9

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_9

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_9

    .line 73
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 75
    :cond_9
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    const/16 v2, 0xb4

    if-ge v1, v2, :cond_b

    .line 79
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    const/16 v2, 0xbe

    if-ge v1, v2, :cond_c

    .line 81
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    if-ge v1, v10, :cond_17

    .line 83
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 85
    :cond_d
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v4

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    const/16 v9, 0x46

    if-ne v4, v8, :cond_12

    .line 86
    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v9, :cond_f

    .line 88
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    .line 89
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_e

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_e

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_e

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_e

    .line 90
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 92
    :cond_e
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_f
    const/16 v2, 0x6e

    if-ge v1, v2, :cond_10

    .line 96
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_10
    const/16 v2, 0xa0

    if-ge v1, v2, :cond_11

    .line 98
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_11
    if-ge v1, v10, :cond_17

    .line 100
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 102
    :cond_12
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v4, :cond_17

    .line 103
    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_14

    .line 105
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    .line 106
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_13

    .line 107
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 109
    :cond_13
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    if-ge v1, v9, :cond_15

    .line 113
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    const/16 v2, 0xaa

    if-ge v1, v2, :cond_16

    .line 115
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    if-ge v1, v10, :cond_17

    .line 117
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c047a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c047b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    .line 130
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c047c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c047d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    .line 132
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c047e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    .line 133
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c047f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 135
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 136
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
