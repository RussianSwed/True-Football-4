.class public Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "TechnicalShot.java"


# instance fields
.field assistant:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;Lpl/mkrstudio/truefootball3/objects/Player;)V
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

    .line 20
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 21
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v3

    iput v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->delay:I

    move-object/from16 v3, p2

    .line 22
    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 23
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    move-object/from16 v4, p9

    .line 24
    iput-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p4, :cond_0

    .line 26
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_1

    .line 28
    :cond_0
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_1

    .line 29
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCloseFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_2

    .line 31
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFarFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 32
    :cond_2
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->CORNER_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_3

    .line 33
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCornerKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 35
    :cond_3
    :goto_0
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne v3, v1, :cond_5

    :cond_4
    const/4 v3, 0x4

    new-array v3, v3, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 36
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v3, v4

    const/4 v8, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v9, v3, v8

    const/4 v8, 0x2

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v9, v3, v8

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v3, v5

    .line 37
    invoke-virtual {v0, v3, v1}, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 42
    :cond_5
    :goto_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    .line 43
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 45
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    const/16 v10, 0x5f

    const/16 v12, 0x1e

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    const/16 v3, 0x3c

    const/16 v4, 0x50

    const/16 v11, 0x14

    const/16 v15, 0x5a

    if-le v9, v10, :cond_6

    int-to-double v9, v5

    const-wide/high16 v18, 0x4006000000000000L    # 2.75

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    :goto_2
    mul-double v9, v9, v18

    :goto_3
    double-to-int v9, v9

    goto/16 :goto_4

    .line 46
    :cond_6
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    if-le v9, v15, :cond_7

    int-to-double v9, v5

    const-wide v18, 0x4003333333333333L    # 2.4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 47
    :cond_7
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    if-le v9, v4, :cond_8

    int-to-double v9, v5

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 48
    :cond_8
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    const/16 v10, 0x46

    if-le v9, v10, :cond_9

    int-to-double v9, v5

    const-wide v18, 0x3ffb333333333333L    # 1.7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 49
    :cond_9
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    if-le v9, v3, :cond_a

    int-to-double v9, v5

    const-wide v18, 0x3ff6666666666666L    # 1.4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 50
    :cond_a
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    const/16 v10, 0x2d

    if-le v9, v10, :cond_b

    int-to-double v9, v5

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 51
    :cond_b
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    if-le v9, v12, :cond_c

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    goto :goto_3

    .line 52
    :cond_c
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    if-le v9, v11, :cond_d

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v16

    goto :goto_3

    .line 53
    :cond_d
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v9

    const/16 v10, 0xa

    if-le v9, v10, :cond_e

    int-to-double v9, v5

    const-wide v18, 0x3fc999999999999aL    # 0.2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_2

    :cond_e
    int-to-double v9, v5

    const-wide v18, 0x3fa999999999999aL    # 0.05

    .line 54
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_2

    .line 55
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 56
    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v10, v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v12

    if-le v12, v4, :cond_f

    int-to-double v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    :goto_5
    mul-double v3, v3, v9

    :goto_6
    double-to-int v3, v3

    goto :goto_7

    .line 57
    :cond_f
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v10, v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    if-le v4, v3, :cond_10

    int-to-double v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v13

    goto :goto_6

    .line 58
    :cond_10
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_11

    int-to-double v3, v9

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 59
    :cond_11
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v3

    if-le v3, v11, :cond_12

    int-to-double v3, v9

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 60
    :cond_12
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_13

    int-to-double v3, v9

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_13
    int-to-double v3, v9

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    .line 61
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :goto_7
    if-le v3, v15, :cond_14

    goto :goto_8

    :cond_14
    move v15, v3

    :goto_8
    if-ge v8, v15, :cond_15

    .line 65
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/Goal;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;ZZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_15
    const/16 v3, 0x64

    .line 67
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v5, :cond_16

    .line 68
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_16
    if-ge v1, v11, :cond_17

    .line 69
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_18

    .line 70
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_18
    const/16 v3, 0x64

    if-ge v1, v3, :cond_19

    .line 71
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;

    invoke-direct {v2, v6}, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 77
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0604

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0605

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0606

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0607

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    .line 83
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0608

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0609

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c060a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 87
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 88
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
