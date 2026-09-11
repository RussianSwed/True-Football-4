.class public Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "PassToCenter.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 15
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

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    .line 24
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 25
    move-object v3, v6

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v4

    iput v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->delay:I

    .line 26
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    .line 27
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v1, v4}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->getPlayerForAction(Lpl/mkrstudio/truefootball3/objects/Player;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 29
    :goto_0
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->context:Landroid/content/Context;

    .line 30
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/high16 v5, 0x40400000    # 3.0f

    .line 33
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Pressing;->HIGH:Lpl/mkrstudio/truefootball3/enums/Pressing;

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-ne v7, v8, :cond_1

    float-to-double v7, v5

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v7, v7, v11

    :goto_2
    double-to-float v5, v7

    goto :goto_3

    .line 34
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v7, v8, :cond_2

    float-to-double v7, v5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Pressing;->LOW:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v7, v8, :cond_3

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    goto :goto_2

    :cond_3
    :goto_3
    float-to-double v7, v5

    move-object/from16 v5, p3

    .line 36
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v11

    float-to-double v11, v11

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    double-to-float v7, v7

    float-to-double v7, v7

    .line 37
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v11

    const/16 v12, 0x64

    rsub-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v4

    double-to-float v4, v7

    float-to-double v4, v4

    const-wide v7, -0x4046666666666666L    # -0.1

    .line 39
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v11

    int-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v7

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    add-double/2addr v13, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v13

    double-to-float v4, v4

    float-to-double v4, v4

    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 40
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v11

    int-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v7

    add-double/2addr v13, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v13

    double-to-float v4, v4

    .line 42
    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_4

    .line 44
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, -0x41666666    # -0.3f

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 45
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 48
    :cond_4
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v5, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    const/4 v4, 0x4

    new-array v4, v4, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 49
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v4, v5

    const/4 v5, 0x2

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v4, v5

    const/4 v5, 0x3

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v4, v5

    .line 50
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p0, v4, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    .line 51
    invoke-virtual {p0, v2, v4}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->getIndividualOrders(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v5

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/16 v9, 0x21

    const/16 v10, 0x42

    if-ne v5, v8, :cond_5

    const/16 v5, 0x64

    goto :goto_4

    .line 55
    :cond_5
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v5

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v5, v8, :cond_6

    const/16 v5, 0x42

    goto :goto_4

    .line 56
    :cond_6
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v5

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v5, v8, :cond_7

    const/16 v5, 0x21

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 59
    :goto_4
    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const/16 v11, 0x32

    if-ge v8, v5, :cond_a

    .line 61
    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_8

    .line 62
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    if-ge v1, v11, :cond_9

    .line 63
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_9
    if-ge v1, v12, :cond_19

    .line 64
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 67
    :cond_a
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v5

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v5, v8, :cond_b

    const/16 v7, 0x42

    goto :goto_5

    .line 68
    :cond_b
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v5

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v5, v8, :cond_c

    const/16 v7, 0x21

    goto :goto_5

    .line 69
    :cond_c
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v5

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    .line 71
    :goto_5
    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-ge v5, v7, :cond_d

    .line 73
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 75
    :cond_d
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v5

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    const/16 v8, 0x14

    if-ne v5, v7, :cond_11

    .line 76
    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v8, :cond_e

    .line 77
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_e
    const/16 v2, 0x23

    if-ge v1, v2, :cond_f

    .line 78
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_f
    if-ge v1, v11, :cond_10

    .line 79
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    if-ge v1, v12, :cond_19

    .line 80
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 81
    :cond_11
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v5

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    const/16 v9, 0x46

    const/16 v10, 0x2d

    if-ne v5, v7, :cond_15

    .line 82
    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v8, :cond_12

    .line 83
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_12
    if-ge v1, v10, :cond_13

    .line 84
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    if-ge v1, v9, :cond_14

    .line 85
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_14
    if-ge v1, v12, :cond_19

    .line 86
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 87
    :cond_15
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v5, :cond_19

    .line 88
    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v8, :cond_16

    .line 89
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_16
    if-ge v1, v10, :cond_17

    .line 90
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_17
    if-ge v1, v9, :cond_18

    .line 91
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_18
    if-ge v1, v12, :cond_19

    .line 92
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object v2, v4

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 101
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->context:Landroid/content/Context;

    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c048a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c048b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->context:Landroid/content/Context;

    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c048c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 107
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 108
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
