.class public Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "PassIntoPenaltyArea.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 20
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

    .line 24
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 25
    move-object v3, v6

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v5

    iput v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->delay:I

    .line 26
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/16 v5, 0x8

    const/4 v7, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz p4, :cond_0

    .line 27
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    :cond_0
    const/16 v15, 0xa

    new-array v15, v15, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 29
    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v16, v15, v14

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v16, v15, v13

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v16, v15, v12

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v16, v15, v11

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v16, v15, v10

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v16, v15, v7

    const/16 v16, 0x6

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v17, v15, v16

    const/16 v16, 0x7

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v17, v15, v16

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v16, v15, v5

    const/16 v16, 0x9

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v17, v15, v16

    .line 31
    invoke-virtual {v0, v15, v1}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v15

    iput-object v15, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 33
    :goto_0
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    .line 34
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    const/high16 v16, 0x42340000    # 45.0f

    .line 36
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_1

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    .line 38
    :cond_1
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_2

    const/high16 v16, 0x3fc00000    # 1.5f

    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_1

    .line 40
    :cond_2
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_3

    const/high16 v16, 0x40200000    # 2.5f

    const/high16 v5, 0x40200000    # 2.5f

    goto :goto_1

    .line 42
    :cond_3
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_4

    const/high16 v5, 0x40a00000    # 5.0f

    goto :goto_1

    .line 44
    :cond_4
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_5

    const/high16 v16, 0x40e00000    # 7.0f

    const/high16 v5, 0x40e00000    # 7.0f

    goto :goto_1

    .line 46
    :cond_5
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_6

    const/high16 v16, 0x41100000    # 9.0f

    const/high16 v5, 0x41100000    # 9.0f

    goto :goto_1

    .line 48
    :cond_6
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NONE:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_7

    const/high16 v16, 0x42480000    # 50.0f

    const/high16 v5, 0x42480000    # 50.0f

    goto :goto_1

    :cond_7
    const/high16 v5, 0x42340000    # 45.0f

    :goto_1
    float-to-double v11, v5

    .line 51
    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v5

    float-to-double v13, v5

    const-wide/high16 v18, 0x4049000000000000L    # 50.0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v13, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v5, v11

    float-to-double v11, v5

    .line 52
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v5

    const/16 v13, 0x64

    rsub-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v13, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v5, v11

    float-to-double v11, v5

    const-wide v13, -0x4046666666666666L    # -0.1

    .line 54
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v5

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    add-double/2addr v7, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v7

    double-to-float v5, v11

    float-to-double v7, v5

    const-wide v11, 0x3fb999999999999aL    # 0.1

    .line 55
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v5

    int-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    double-to-float v5, v7

    .line 57
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Pressing;->HIGH:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v7, v8, :cond_8

    float-to-double v7, v5

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    :goto_2
    mul-double v7, v7, v13

    :goto_3
    double-to-float v5, v7

    goto :goto_4

    .line 58
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v7, v8, :cond_9

    float-to-double v7, v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 59
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Pressing;->LOW:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne v7, v8, :cond_a

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    goto :goto_3

    .line 62
    :cond_a
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    if-ne v7, v8, :cond_b

    const/high16 v7, 0x40a00000    # 5.0f

    float-to-double v7, v7

    const-wide/high16 v13, 0x3ffc000000000000L    # 1.75

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    double-to-float v7, v7

    goto :goto_5

    :cond_b
    const/high16 v7, 0x40a00000    # 5.0f

    :goto_5
    const/16 v8, 0x64

    .line 63
    invoke-virtual {v15, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    float-to-int v7, v7

    if-ge v13, v7, :cond_c

    .line 65
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v6}, Lpl/mkrstudio/truefootball3/matchEvents/Offside;-><init>(ZLandroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_c
    const/4 v7, 0x0

    .line 67
    invoke-virtual {v15, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    float-to-int v5, v5

    if-ge v13, v5, :cond_d

    .line 69
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, -0x41666666    # -0.3f

    invoke-virtual {v3, v1, v2, v7}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 70
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;

    const/4 v2, 0x0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 72
    :cond_d
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v7, 0x3dcccccd    # 0.1f

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v7, v8}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    const/high16 v5, 0x40000000    # 2.0f

    float-to-double v7, v5

    .line 74
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v5

    int-to-float v5, v5

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v13, v18

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    double-to-float v5, v7

    .line 75
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->INCREDIBLY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_e

    float-to-double v7, v5

    const-wide/high16 v11, 0x4044000000000000L    # 40.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    :goto_6
    mul-double v7, v7, v11

    double-to-float v5, v7

    goto :goto_7

    .line 76
    :cond_e
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_f

    float-to-double v7, v5

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 77
    :cond_f
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_10

    float-to-double v7, v5

    const-wide/high16 v11, 0x4021000000000000L    # 8.5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 78
    :cond_10
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->QUITE_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_11

    float-to-double v7, v5

    const-wide/high16 v11, 0x4004000000000000L    # 2.5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 79
    :cond_11
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_12

    float-to-double v7, v5

    const-wide v11, 0x3fe999999999999aL    # 0.8

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 80
    :cond_12
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v9, v7, :cond_13

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 83
    :cond_13
    :goto_7
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    move-object/from16 v8, p7

    if-ne v8, v7, :cond_14

    const/16 v7, 0x12

    goto :goto_9

    .line 85
    :cond_14
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v7, :cond_15

    const/16 v7, 0xc

    goto :goto_9

    .line 87
    :cond_15
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v7, :cond_16

    const/16 v7, 0x8

    goto :goto_9

    .line 89
    :cond_16
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v7, :cond_17

    const/4 v7, 0x5

    goto :goto_9

    .line 91
    :cond_17
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v7, :cond_18

    const/4 v7, 0x3

    goto :goto_9

    .line 93
    :cond_18
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v7, :cond_19

    goto :goto_8

    .line 95
    :cond_19
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NONE:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_9

    :cond_1a
    :goto_8
    const/4 v7, 0x2

    :goto_9
    const/16 v11, 0xc8

    .line 99
    invoke-virtual {v15, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_1b

    .line 100
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-direct {v2, v3, v4, v6}, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1b
    if-ge v12, v7, :cond_1c

    .line 101
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1c
    const/16 v7, 0x64

    .line 103
    invoke-virtual {v15, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    float-to-int v5, v5

    if-ge v12, v5, :cond_1d

    const v2, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    .line 105
    invoke-virtual {v3, v1, v2, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 106
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1d
    new-array v1, v10, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 108
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v7, 0x0

    aput-object v5, v1, v7

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v10, 0x1

    aput-object v5, v1, v10

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v10, 0x2

    aput-object v5, v1, v10

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v10, 0x3

    aput-object v5, v1, v10

    .line 109
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v1, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    .line 110
    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->getIndividualOrders(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v2

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/16 v12, 0x21

    const/16 v13, 0x42

    if-ne v2, v10, :cond_1e

    const/16 v2, 0x64

    :goto_a
    const/16 v10, 0x64

    goto :goto_b

    .line 114
    :cond_1e
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v2

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v2, v10, :cond_1f

    const/16 v2, 0x42

    goto :goto_a

    .line 115
    :cond_1f
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v2

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    if-ne v2, v10, :cond_20

    const/16 v2, 0x21

    goto :goto_a

    :cond_20
    const/4 v2, 0x0

    goto :goto_a

    .line 118
    :goto_b
    invoke-virtual {v15, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    if-ge v14, v2, :cond_23

    .line 120
    invoke-virtual {v15, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_21

    .line 121
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_21
    const/16 v2, 0x63

    if-ge v1, v2, :cond_22

    .line 122
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_22
    const/16 v2, 0x64

    if-ge v1, v2, :cond_2f

    .line 123
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 126
    :cond_23
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v2

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v2, v10, :cond_24

    const/16 v2, 0x64

    const/16 v14, 0x42

    goto :goto_c

    .line 127
    :cond_24
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v2

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v2, v10, :cond_25

    const/16 v2, 0x64

    const/16 v14, 0x21

    goto :goto_c

    .line 128
    :cond_25
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v2

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    const/16 v2, 0x64

    const/4 v14, 0x0

    .line 130
    :goto_c
    invoke-virtual {v15, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v2, v14, :cond_26

    .line 132
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/DribblingCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 134
    :cond_26
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v7, :cond_29

    .line 135
    invoke-virtual {v15, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x5a

    if-ge v1, v2, :cond_27

    .line 136
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_27
    const/16 v2, 0xb4

    if-ge v1, v2, :cond_28

    .line 137
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_28
    if-ge v1, v11, :cond_2f

    .line 138
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 139
    :cond_29
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v2

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v2, v7, :cond_2c

    .line 140
    invoke-virtual {v15, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_2a

    .line 141
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_2a
    const/16 v2, 0x78

    if-ge v1, v2, :cond_2b

    .line 142
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_2b
    if-ge v1, v11, :cond_2f

    .line 143
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 144
    :cond_2c
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    if-ne v1, v2, :cond_2f

    .line 145
    invoke-virtual {v15, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2d

    .line 146
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2d
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2e

    .line 147
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2e
    if-ge v1, v11, :cond_2f

    .line 148
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, v5

    move-object/from16 v4, p3

    move v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 160
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0485

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0486

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    .line 164
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0487

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    .line 165
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0488

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    .line 166
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0489

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 168
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 169
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PassIntoPenaltyArea;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
