.class public Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "HeaderShot.java"


# instance fields
.field assistant:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V
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
            "at",
            "assistant"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    .line 19
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 20
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v3

    iput v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->delay:I

    move-object/from16 v3, p2

    .line 21
    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v4, p9

    .line 22
    iput-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    .line 24
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_1

    .line 26
    :cond_0
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v5, :cond_1

    .line 27
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCloseFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 28
    :cond_1
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v5, :cond_2

    .line 29
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFarFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/ActionType;->CORNER_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v5, :cond_3

    .line 31
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCornerKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 33
    :cond_3
    :goto_0
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne v3, v1, :cond_5

    :cond_4
    const/4 v3, 0x4

    new-array v3, v3, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 34
    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v5, v3, v4

    const/4 v5, 0x1

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v3, v5

    const/4 v5, 0x2

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v3, v5

    const/4 v5, 0x3

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v3, v5

    .line 35
    invoke-virtual {v0, v3, v1}, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 38
    :cond_5
    :goto_1
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    .line 40
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/high16 v8, 0x41700000    # 15.0f

    float-to-double v8, v8

    .line 43
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Player;->getHeading()B

    move-result v10

    int-to-float v10, v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v8, v8

    .line 44
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 45
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x5a

    const/16 v11, 0x28

    const/16 v12, 0x46

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    if-le v9, v10, :cond_6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v13

    :goto_2
    double-to-float v4, v8

    goto/16 :goto_4

    .line 46
    :cond_6
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x55

    if-le v9, v10, :cond_7

    float-to-double v8, v8

    const-wide v15, 0x3fe3333333333333L    # 0.6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    mul-double v8, v8, v15

    goto :goto_2

    .line 47
    :cond_7
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x50

    if-le v9, v10, :cond_8

    float-to-double v8, v8

    const-wide v15, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 48
    :cond_8
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    if-le v9, v12, :cond_9

    float-to-double v8, v8

    const-wide v15, 0x3fe6666666666666L    # 0.7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 49
    :cond_9
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x3c

    if-le v9, v10, :cond_a

    float-to-double v8, v8

    const-wide/high16 v15, 0x3fe8000000000000L    # 0.75

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 50
    :cond_a
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    if-le v9, v11, :cond_b

    float-to-double v8, v8

    const-wide/high16 v15, 0x3ff4000000000000L    # 1.25

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 51
    :cond_b
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x14

    if-le v9, v10, :cond_c

    float-to-double v8, v8

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 52
    :cond_c
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    const/16 v9, 0xa

    if-le v4, v9, :cond_d

    float-to-double v8, v8

    const-wide/high16 v15, 0x400c000000000000L    # 3.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_d
    float-to-double v8, v8

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    .line 53
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 55
    :goto_4
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->INCREDIBLY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_e

    float-to-double v8, v4

    const-wide/high16 v13, 0x4044000000000000L    # 40.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    :goto_5
    mul-double v8, v8, v13

    double-to-float v4, v8

    goto :goto_6

    .line 56
    :cond_e
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_f

    float-to-double v8, v4

    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 57
    :cond_f
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_10

    float-to-double v8, v4

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 58
    :cond_10
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->QUITE_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_11

    float-to-double v8, v4

    const-wide/high16 v13, 0x4004000000000000L    # 2.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 59
    :cond_11
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_12

    float-to-double v8, v4

    const-wide v13, 0x3fe999999999999aL    # 0.8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 60
    :cond_12
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_13

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_13
    :goto_6
    float-to-double v8, v4

    const-wide v13, 0x4056800000000000L    # 90.0

    cmpl-double v10, v8, v13

    if-lez v10, :cond_14

    const/high16 v4, 0x42b40000    # 90.0f

    :cond_14
    float-to-int v4, v4

    if-ge v5, v4, :cond_15

    .line 66
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/Goal;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;ZZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 68
    :cond_15
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_16

    .line 69
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    if-ge v1, v11, :cond_17

    .line 70
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    if-ge v1, v12, :cond_18

    .line 71
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_18
    if-ge v1, v3, :cond_19

    .line 72
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;

    invoke-direct {v2, v6}, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0342

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0343

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    .line 83
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0344

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0345

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0346

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 87
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 88
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
