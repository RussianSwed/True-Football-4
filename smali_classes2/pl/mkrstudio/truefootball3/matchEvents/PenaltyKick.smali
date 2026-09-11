.class public Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "PenaltyKick.java"


# instance fields
.field attackingPlayer:Lpl/mkrstudio/truefootball3/objects/Player;

.field defendingPlayer:Lpl/mkrstudio/truefootball3/objects/Player;

.field defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field goal:Z


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "context",
            "sobl",
            "dipa",
            "at"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 22
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 23
    move-object v1, v6

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    const/4 v3, 0x5

    mul-int/lit8 v2, v2, 0x5

    iput v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->delay:I

    move-object/from16 v2, p1

    .line 24
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 25
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    iput-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->attackingPlayer:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPenaltyKickTaker(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    iput-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 27
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/16 v7, 0xa

    if-eqz v4, :cond_0

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-gt v4, v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 29
    :cond_1
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->getPlayerForCard(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->defendingPlayer:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 30
    iput-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 31
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 33
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x64

    .line 34
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 36
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v9

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    const/16 v10, 0x3c

    const-wide v11, 0x3ff3333333333333L    # 1.2

    const/16 v13, 0x28

    const/16 v14, 0x5a

    if-le v9, v14, :cond_2

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v11

    :goto_0
    double-to-int v14, v14

    goto/16 :goto_2

    .line 37
    :cond_2
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v9

    iget-object v15, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v15

    add-int/2addr v9, v15

    div-int/lit8 v9, v9, 0x2

    const/16 v15, 0x4b

    if-le v9, v15, :cond_3

    int-to-double v14, v14

    const-wide v16, 0x3ff1eb851eb851ecL    # 1.12

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v14, v14, v16

    goto :goto_0

    .line 38
    :cond_3
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v9

    iget-object v15, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v15

    add-int/2addr v9, v15

    div-int/lit8 v9, v9, 0x2

    if-le v9, v10, :cond_4

    int-to-double v14, v14

    const-wide v16, 0x3ff11eb851eb851fL    # 1.07

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 39
    :cond_4
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v9

    iget-object v15, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v15

    add-int/2addr v9, v15

    div-int/lit8 v9, v9, 0x2

    if-le v9, v13, :cond_5

    goto :goto_2

    .line 40
    :cond_5
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v9

    iget-object v15, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v15

    add-int/2addr v9, v15

    div-int/lit8 v9, v9, 0x2

    const/16 v15, 0x19

    if-le v9, v15, :cond_6

    int-to-double v14, v14

    const-wide v16, 0x3fedc28f5c28f5c3L    # 0.93

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 41
    :cond_6
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v9

    iget-object v15, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v15

    add-int/2addr v9, v15

    div-int/lit8 v9, v9, 0x2

    if-le v9, v7, :cond_7

    int-to-double v14, v14

    const-wide v16, 0x3fea3d70a3d70a3dL    # 0.82

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_7
    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    .line 42
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 43
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 44
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v15

    const/16 v9, 0x50

    if-le v15, v9, :cond_8

    int-to-double v10, v14

    const-wide v14, 0x3feb333333333333L    # 0.85

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    mul-double v10, v10, v14

    double-to-int v7, v10

    goto :goto_4

    .line 45
    :cond_8
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v15

    if-le v15, v10, :cond_9

    int-to-double v10, v14

    const-wide v14, 0x3fee666666666666L    # 0.95

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 46
    :cond_9
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v10

    if-le v10, v13, :cond_a

    int-to-double v10, v14

    const-wide v14, 0x3ff199999999999aL    # 1.1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 47
    :cond_a
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v7

    const/16 v10, 0x14

    if-le v7, v10, :cond_b

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v11

    double-to-int v7, v14

    goto :goto_4

    :cond_b
    int-to-double v10, v14

    const-wide v14, 0x3ff4cccccccccccdL    # 1.3

    .line 48
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :goto_4
    const/16 v10, 0x62

    if-le v7, v10, :cond_c

    const/16 v7, 0x62

    :cond_c
    if-ge v8, v7, :cond_d

    .line 51
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v3, 0x0

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/Goal;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;ZZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 53
    :cond_d
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v8, -0x404ccccd    # -1.4f

    const/4 v10, 0x1

    invoke-virtual {v1, v7, v8, v10}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 54
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v2, v3, :cond_e

    .line 55
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    if-ge v2, v13, :cond_f

    .line 57
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->getGoalkeeper(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 58
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    if-ge v2, v9, :cond_10

    .line 61
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->getGoalkeeper(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 62
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    if-ge v2, v4, :cond_11

    .line 64
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;

    invoke-direct {v2, v6}, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 70
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 82
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    int-to-long v2, v2

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 99
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 114
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
