.class public Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "PassInPenaltyArea.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 19
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

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 23
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 24
    move-object v3, v6

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v5

    iput v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->delay:I

    .line 25
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p4, :cond_0

    .line 26
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_1

    .line 28
    :cond_0
    sget-object v13, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v13, :cond_1

    .line 29
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCloseFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v13

    iput-object v13, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v13, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v13, :cond_2

    .line 31
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFarFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v13

    iput-object v13, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 32
    :cond_2
    sget-object v13, Lpl/mkrstudio/truefootball3/enums/ActionType;->CORNER_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v13, :cond_3

    .line 33
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCornerKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v13

    iput-object v13, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 35
    :cond_3
    :goto_0
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v13, :cond_4

    iget-object v13, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne v13, v1, :cond_5

    :cond_4
    new-array v13, v5, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 36
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v12

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v11

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v10

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v14, v13, v7

    .line 37
    invoke-virtual {v0, v13, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 40
    :cond_5
    :goto_1
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    .line 41
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/high16 v13, 0x42340000    # 45.0f

    .line 44
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v14, :cond_6

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_2

    .line 46
    :cond_6
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v14, :cond_7

    const/high16 v13, 0x3fc00000    # 1.5f

    goto :goto_2

    .line 48
    :cond_7
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v14, :cond_8

    const/high16 v13, 0x40200000    # 2.5f

    goto :goto_2

    .line 50
    :cond_8
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v14, :cond_9

    const/high16 v13, 0x40a00000    # 5.0f

    goto :goto_2

    .line 52
    :cond_9
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v14, :cond_a

    const/high16 v13, 0x40e00000    # 7.0f

    goto :goto_2

    .line 54
    :cond_a
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v14, :cond_b

    const/high16 v13, 0x41100000    # 9.0f

    goto :goto_2

    .line 56
    :cond_b
    sget-object v14, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NONE:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v14, :cond_c

    const/high16 v13, 0x42480000    # 50.0f

    :cond_c
    :goto_2
    float-to-double v13, v13

    .line 59
    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v15

    float-to-double v5, v15

    const-wide/high16 v17, 0x4049000000000000L    # 50.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v5, v17

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v5

    double-to-float v5, v13

    float-to-double v5, v5

    .line 60
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v13

    const/16 v14, 0x64

    rsub-int/lit8 v13, v13, 0x64

    int-to-float v13, v13

    float-to-double v10, v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v10, v17

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v10

    double-to-float v5, v5

    float-to-double v5, v5

    const-wide v10, -0x4046666666666666L    # -0.1

    .line 62
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v13

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v13

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v13

    int-to-double v7, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v10

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    add-double/2addr v7, v10

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float v5, v5

    float-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 63
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v13

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v13

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v13

    int-to-double v10, v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v10

    double-to-float v5, v5

    .line 65
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Pressing;->HIGH:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v6, v10, :cond_d

    float-to-double v5, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    mul-double v5, v5, v10

    :goto_4
    double-to-float v5, v5

    goto :goto_5

    .line 66
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v6, v10, :cond_e

    float-to-double v5, v5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 67
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Pressing;->LOW:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v6, v10, :cond_f

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    goto :goto_4

    .line 69
    :cond_f
    :goto_5
    invoke-virtual {v1, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    float-to-int v5, v5

    if-ge v6, v5, :cond_10

    .line 71
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, -0x41666666    # -0.3f

    invoke-virtual {v3, v1, v2, v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 72
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;

    const/4 v2, 0x0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 74
    :cond_10
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v5, v6, v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    const/high16 v5, 0x40000000    # 2.0f

    float-to-double v5, v5

    .line 76
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v10

    int-to-float v10, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v10, v17

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v10

    double-to-float v5, v5

    .line 77
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/ActionType;->INCREDIBLY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v6, :cond_11

    float-to-double v5, v5

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    :goto_6
    mul-double v5, v5, v7

    double-to-float v5, v5

    goto :goto_7

    .line 78
    :cond_11
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/ActionType;->VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v6, :cond_12

    float-to-double v5, v5

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 79
    :cond_12
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/ActionType;->SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v6, :cond_13

    float-to-double v5, v5

    const-wide/high16 v7, 0x4016000000000000L    # 5.5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 80
    :cond_13
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/ActionType;->QUITE_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v6, :cond_14

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    goto :goto_6

    .line 81
    :cond_14
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v6, :cond_15

    float-to-double v5, v5

    const-wide v7, 0x3fe999999999999aL    # 0.8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 82
    :cond_15
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v6, :cond_16

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 90
    :cond_16
    :goto_7
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    move-object/from16 v8, p7

    if-ne v8, v6, :cond_17

    const/16 v6, 0x12

    goto :goto_9

    .line 92
    :cond_17
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v6, :cond_18

    const/16 v6, 0xc

    goto :goto_9

    .line 94
    :cond_18
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v6, :cond_19

    const/16 v6, 0x8

    goto :goto_9

    .line 96
    :cond_19
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v6, :cond_1a

    const/4 v6, 0x5

    goto :goto_9

    .line 98
    :cond_1a
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v6, :cond_1b

    const/4 v6, 0x3

    goto :goto_9

    .line 100
    :cond_1b
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v6, :cond_1c

    goto :goto_8

    .line 102
    :cond_1c
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NONE:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_9

    :cond_1d
    :goto_8
    const/4 v6, 0x2

    :goto_9
    const/16 v7, 0xc8

    .line 106
    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1e

    .line 107
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v11, p5

    invoke-direct {v2, v3, v4, v11}, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v11, p5

    if-ge v10, v6, :cond_1f

    .line 108
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 110
    :cond_1f
    invoke-virtual {v1, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    float-to-int v5, v5

    if-ge v6, v5, :cond_20

    .line 112
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v12

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_20
    const/4 v5, 0x4

    new-array v5, v5, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 114
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v6, v5, v12

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v10, 0x1

    aput-object v6, v5, v10

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v10, 0x2

    aput-object v6, v5, v10

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v10, 0x3

    aput-object v6, v5, v10

    .line 115
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v5, v6}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    .line 116
    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->getIndividualOrders(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/16 v13, 0x21

    const/16 v16, 0x42

    if-ne v6, v10, :cond_21

    const/16 v6, 0x64

    goto :goto_a

    .line 120
    :cond_21
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v6, v10, :cond_22

    const/16 v6, 0x42

    goto :goto_a

    .line 121
    :cond_22
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v6, v10, :cond_23

    const/16 v6, 0x21

    goto :goto_a

    :cond_23
    const/4 v6, 0x0

    .line 124
    :goto_a
    invoke-virtual {v1, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-ge v10, v6, :cond_26

    .line 126
    invoke-virtual {v1, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_24

    .line 127
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v12

    new-instance v13, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v13

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_24
    const/16 v2, 0x63

    if-ge v1, v2, :cond_25

    .line 128
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v12

    new-instance v13, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v13

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_25
    if-ge v1, v14, :cond_32

    .line 129
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v12

    new-instance v13, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v13

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 132
    :cond_26
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v6, v10, :cond_27

    const/16 v12, 0x42

    goto :goto_b

    .line 133
    :cond_27
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v6, v10, :cond_28

    const/16 v12, 0x21

    goto :goto_b

    .line 134
    :cond_28
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    .line 136
    :goto_b
    invoke-virtual {v1, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-ge v6, v12, :cond_29

    .line 138
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 140
    :cond_29
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v6, v10, :cond_2c

    .line 141
    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x5a

    if-ge v1, v2, :cond_2a

    .line 142
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_2a
    const/16 v2, 0xb4

    if-ge v1, v2, :cond_2b

    .line 143
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_2b
    if-ge v1, v7, :cond_32

    .line 144
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 145
    :cond_2c
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v6, v10, :cond_2f

    .line 146
    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_2d

    .line 147
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_2d
    const/16 v2, 0x78

    if-ge v1, v2, :cond_2e

    .line 148
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_2e
    if-ge v1, v7, :cond_32

    .line 149
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 150
    :cond_2f
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v6, :cond_32

    .line 151
    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_30

    .line 152
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_30
    const/4 v2, 0x2

    if-ge v1, v2, :cond_31

    .line 153
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_31
    if-ge v1, v7, :cond_32

    .line 154
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_c
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 165
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    .line 167
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0480

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0481

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    .line 169
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0482

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    .line 170
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0483

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    .line 171
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0484

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 173
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 174
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
