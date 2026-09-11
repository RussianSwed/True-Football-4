.class public Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "FarFreeKick.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "context"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    .line 16
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 17
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    iput v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->delay:I

    .line 18
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFarFreeKickTaker(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 20
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 22
    :cond_1
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    .line 23
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v5

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4, v5, v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getParametersAfterFarFreeKick(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 26
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v5, 0x1

    .line 27
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    const/16 v4, 0x64

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 30
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Player;->getCrossing()B

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fa999999999999aL    # 0.05

    .line 32
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSetPieces()B

    move-result v14

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    add-double/2addr v14, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v14

    double-to-int v10, v10

    int-to-double v10, v10

    const-wide v14, -0x4056666666666666L    # -0.05

    .line 33
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSetPieces()B

    move-result v4

    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    add-double/2addr v5, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v5

    double-to-int v4, v10

    .line 35
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_2

    int-to-double v4, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v4, v4, v10

    :goto_1
    double-to-int v4, v4

    goto :goto_2

    .line 36
    :cond_2
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_3

    int-to-double v4, v4

    const-wide/high16 v10, 0x3ffc000000000000L    # 1.75

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 37
    :cond_3
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_4

    int-to-double v4, v4

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 38
    :cond_4
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    goto :goto_1

    .line 39
    :cond_5
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_6

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v12

    goto :goto_1

    .line 40
    :cond_6
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_7

    int-to-double v4, v4

    const-wide v10, 0x3fd999999999999aL    # 0.4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 41
    :cond_7
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NONE:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v5, :cond_8

    int-to-double v4, v4

    const-wide/16 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 43
    :cond_8
    :goto_2
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    invoke-virtual {v0, v1, v5}, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->getStrengthAverageOfPlayersInPenaltyArea(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/ActionType;)F

    move-result v1

    int-to-double v4, v4

    float-to-double v10, v1

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    .line 44
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v10

    double-to-int v1, v4

    const/16 v4, 0x5a

    if-le v1, v4, :cond_9

    const/16 v1, 0x5a

    :cond_9
    if-ge v9, v1, :cond_11

    const/16 v1, 0xc8

    .line 49
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/16 v5, 0x32

    if-ge v3, v5, :cond_a

    .line 50
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    if-ge v3, v4, :cond_b

    .line 51
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    const/16 v4, 0x82

    if-ge v3, v4, :cond_c

    .line 52
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    const/16 v4, 0x88

    if-ge v3, v4, :cond_d

    .line 53
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    const/16 v4, 0x8e

    if-ge v3, v4, :cond_e

    .line 54
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    const/16 v4, 0xaa

    if-ge v3, v4, :cond_f

    .line 55
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v11

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    const/16 v4, 0xc7

    if-ge v3, v4, :cond_10

    .line 56
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v6, v8

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    if-ge v3, v1, :cond_14

    .line 58
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 59
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct {v2, v3, v4, v6}, Lpl/mkrstudio/truefootball3/matchEvents/OwnGoal;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    move-object/from16 v4, p2

    move-object/from16 v6, p3

    const/16 v1, 0x64

    .line 62
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/16 v1, 0x46

    if-ge v3, v1, :cond_12

    .line 63
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_12
    const/16 v1, 0x55

    if-ge v3, v1, :cond_13

    .line 64
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v11

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_13
    const/16 v1, 0x64

    if-ge v3, v1, :cond_14

    .line 65
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v6, v8

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x7

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    .line 77
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;I)V

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 85
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v0

    int-to-long v3, v0

    .line 77
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick$2;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 95
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
