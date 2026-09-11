.class public Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "PossesionLeftSide.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 13
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

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p5

    .line 22
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 23
    move-object v3, v6

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v4

    iput v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->delay:I

    .line 24
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    .line 25
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, p1, v4}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->getPlayerForAction(Lpl/mkrstudio/truefootball3/objects/Player;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 27
    :goto_0
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 28
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/high16 v5, 0x40a00000    # 5.0f

    float-to-double v7, v5

    move-object/from16 v5, p3

    .line 30
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    double-to-float v7, v7

    float-to-double v7, v7

    const-wide v9, -0x4046666666666666L    # -0.1

    .line 32
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v11

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v9

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    add-double/2addr v11, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    double-to-float v7, v7

    float-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 33
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v11

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    double-to-float v7, v7

    .line 35
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v8

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Pressing;->HIGH:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v8, v11, :cond_1

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v7, v7, v9

    double-to-float v7, v7

    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v8

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v8, v11, :cond_2

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v8

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Pressing;->LOW:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v8, v11, :cond_3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v8, 0x64

    .line 39
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    float-to-int v7, v7

    if-ge v9, v7, :cond_4

    .line 41
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/BallLoss;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v10

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/BallLoss;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 43
    :cond_4
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p0, p2, v7}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->getIndividualOrders(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/16 v10, 0x21

    const/16 v11, 0x42

    if-ne v7, v9, :cond_5

    const/16 v7, 0x64

    goto :goto_3

    .line 47
    :cond_5
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v7, v9, :cond_6

    const/16 v7, 0x42

    goto :goto_3

    .line 48
    :cond_6
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v7, v9, :cond_7

    const/16 v7, 0x21

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 51
    :goto_3
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    const/16 v12, 0xa

    if-ge v9, v7, :cond_a

    .line 53
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v12, :cond_8

    .line 54
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_8
    const/16 v2, 0x14

    if-ge v1, v2, :cond_9

    .line 55
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_9
    if-ge v1, v8, :cond_19

    .line 56
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v1, v12

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 59
    :cond_a
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v7, v9, :cond_b

    const/16 v4, 0x42

    goto :goto_4

    .line 60
    :cond_b
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v7, v9, :cond_c

    const/16 v4, 0x21

    goto :goto_4

    .line 61
    :cond_c
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    .line 63
    :goto_4
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    if-ge v7, v4, :cond_d

    .line 65
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/DribblingLeftSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/DribblingLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 67
    :cond_d
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v4

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v4, v7, :cond_11

    .line 68
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_e

    .line 69
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_e
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_f

    .line 70
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_f
    const/16 v2, 0x3e

    if-ge v1, v2, :cond_10

    .line 71
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_10
    if-ge v1, v8, :cond_19

    .line 72
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 73
    :cond_11
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v4

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v4, v7, :cond_15

    .line 74
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v12, :cond_12

    .line 75
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_12
    const/16 v2, 0x23

    if-ge v1, v2, :cond_13

    .line 76
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_13
    const/16 v2, 0x40

    if-ge v1, v2, :cond_14

    .line 77
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    if-ge v1, v8, :cond_19

    .line 78
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 79
    :cond_15
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v4, :cond_19

    .line 80
    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_16

    .line 81
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_16
    const/16 v2, 0x2a

    if-ge v1, v2, :cond_17

    .line 82
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/CrossFromLeft;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_17
    const/16 v2, 0x4b

    if-ge v1, v2, :cond_18

    .line 83
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_18
    if-ge v1, v8, :cond_19

    .line 84
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 93
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c050d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0510

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0507

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0508

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0509

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c050c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 106
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 107
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
