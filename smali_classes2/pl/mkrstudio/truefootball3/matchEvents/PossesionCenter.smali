.class public Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "PossesionCenter.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 18
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

    move-object/from16 v11, p5

    .line 22
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 23
    move-object v12, v11

    check-cast v12, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v3

    iput v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->delay:I

    .line 24
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    .line 25
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, v1, v3}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->getPlayerForAction(Lpl/mkrstudio/truefootball3/objects/Player;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 27
    :goto_0
    iput-object v11, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 28
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    const/high16 v1, 0x40a00000    # 5.0f

    float-to-double v4, v1

    move-object/from16 v14, p3

    .line 30
    invoke-virtual {v0, v14}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    float-to-double v6, v1

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v1, v4

    float-to-double v4, v1

    const-wide v6, -0x4046666666666666L    # -0.1

    .line 32
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v1

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    add-double/2addr v8, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-float v1, v4

    float-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 33
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v1

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-float v1, v4

    .line 35
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Pressing;->HIGH:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v4, v5, :cond_1

    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v4, v4, v6

    double-to-float v1, v4

    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v4, v5, :cond_2

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Pressing;->LOW:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v4, v5, :cond_3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v15, 0x64

    .line 39
    invoke-virtual {v13, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    float-to-int v1, v1

    if-ge v4, v1, :cond_4

    .line 41
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/BallLoss;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v10

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/BallLoss;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 43
    :cond_4
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v2, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->getIndividualOrders(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/16 v5, 0x21

    const/16 v6, 0x42

    if-ne v2, v4, :cond_5

    const/16 v2, 0x64

    goto :goto_3

    .line 47
    :cond_5
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v2, v4, :cond_6

    const/16 v2, 0x42

    goto :goto_3

    .line 48
    :cond_6
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v2, v4, :cond_7

    const/16 v2, 0x21

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 51
    :goto_3
    invoke-virtual {v13, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/16 v10, 0x32

    const/16 v9, 0x19

    if-ge v4, v2, :cond_b

    .line 53
    invoke-virtual {v13, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v9, :cond_9

    .line 54
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v7, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    const/16 v16, 0x0

    move-object v1, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object v15, v7

    move-object/from16 v7, p6

    move-object/from16 v17, v8

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    const/16 v11, 0x32

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    move-object/from16 v1, v17

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    const/16 v1, 0x64

    goto/16 :goto_6

    :cond_9
    const/16 v11, 0x32

    if-ge v1, v11, :cond_a

    .line 55
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v15

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v11, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const/16 v2, 0x64

    if-ge v1, v2, :cond_8

    .line 56
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v15, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object v1, v15

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 59
    :cond_b
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v2, v4, :cond_c

    const/16 v2, 0x64

    const/16 v3, 0x42

    goto :goto_5

    .line 60
    :cond_c
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v2, v4, :cond_d

    const/16 v2, 0x64

    const/16 v3, 0x21

    goto :goto_5

    .line 61
    :cond_d
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    const/16 v2, 0x64

    .line 63
    :goto_5
    invoke-virtual {v13, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-ge v4, v3, :cond_e

    .line 65
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 67
    :cond_e
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v3, :cond_11

    const/16 v2, 0x64

    .line 68
    invoke-virtual {v13, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_f

    .line 69
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    const/16 v2, 0xa

    if-ge v1, v2, :cond_10

    .line 70
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    const/16 v2, 0x64

    if-ge v1, v2, :cond_8

    .line 71
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 72
    :cond_11
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v3, :cond_14

    const/16 v2, 0x64

    .line 73
    invoke-virtual {v13, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_12

    .line 74
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_12
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_13

    .line 75
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_13
    const/16 v2, 0x64

    if-ge v1, v2, :cond_8

    .line 76
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 77
    :cond_14
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v1, v2, :cond_8

    const/16 v1, 0x64

    .line 78
    invoke-virtual {v13, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v1, 0x28

    if-ge v2, v1, :cond_15

    .line 79
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_15
    const/16 v1, 0x50

    if-ge v2, v1, :cond_16

    .line 80
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_16
    const/16 v1, 0x64

    if-ge v2, v1, :cond_17

    .line 81
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 86
    :cond_17
    :goto_6
    invoke-virtual {v13, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v1, 0x19

    if-ge v2, v1, :cond_18

    .line 88
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_18
    const/16 v1, 0x32

    if-ge v2, v1, :cond_19

    .line 90
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_19
    const/16 v1, 0x46

    if-ge v2, v1, :cond_1a

    .line 92
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1a
    const/16 v1, 0x4b

    if-ge v2, v1, :cond_1b

    .line 94
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1b
    const/16 v1, 0x54

    if-ge v2, v1, :cond_1c

    .line 96
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1c
    const/16 v1, 0x64

    if-ge v2, v1, :cond_1d

    .line 98
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 105
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 107
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0505

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0506

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0507

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 110
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0508

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 111
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0509

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 112
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 116
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 117
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
