.class public Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "OneOnOne.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 14
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

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    .line 19
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 20
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v3

    iput v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->delay:I

    move-object/from16 v3, p2

    .line 21
    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz p4, :cond_0

    .line 22
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_1

    .line 24
    :cond_0
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_1

    .line 25
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCloseFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 26
    :cond_1
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_2

    .line 27
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFarFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 28
    :cond_2
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->CORNER_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_3

    .line 29
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCornerKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 31
    :cond_3
    :goto_0
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne v3, v1, :cond_5

    :cond_4
    const/4 v3, 0x4

    new-array v3, v3, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 32
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v3, v5

    const/4 v8, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v9, v3, v8

    const/4 v8, 0x2

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v9, v3, v8

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v3, v4

    .line 33
    invoke-virtual {p0, v3, p1}, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 36
    :cond_5
    :goto_1
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 38
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    const/high16 v3, 0x41a00000    # 20.0f

    float-to-double v8, v3

    .line 40
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v1

    int-to-float v1, v1

    float-to-double v10, v1

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v1, v8

    float-to-double v8, v1

    .line 41
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v1

    const/16 v3, 0x64

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v1, v8

    float-to-double v8, v1

    .line 42
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAgility()B

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v1, v8

    float-to-double v8, v1

    .line 43
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v1, v8

    .line 45
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->INCREDIBLY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_6

    float-to-double v8, v1

    const-wide v10, 0x3fa999999999999aL    # 0.05

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    :goto_2
    mul-double v8, v8, v10

    double-to-float v1, v8

    goto :goto_3

    .line 46
    :cond_6
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_7

    float-to-double v8, v1

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 47
    :cond_7
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_8

    float-to-double v8, v1

    const-wide v10, 0x3fc999999999999aL    # 0.2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 48
    :cond_8
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->QUITE_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne v7, v8, :cond_9

    float-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    .line 50
    :cond_9
    :goto_3
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 51
    invoke-virtual {v8, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    float-to-int v1, v1

    if-ge v9, v1, :cond_a

    .line 54
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v3, 0x0

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/Goal;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;ZZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 56
    :cond_a
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v9, -0x41333333    # -0.4f

    invoke-virtual {v2, v1, v9, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 57
    invoke-virtual {v8, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v4, :cond_b

    .line 58
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/16 v4, 0x37

    if-ge v1, v4, :cond_c

    .line 59
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_d

    .line 60
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v1, v9

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    if-ge v1, v3, :cond_e

    .line 61
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;

    invoke-direct {v2, v6}, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xb

    new-array v1, v0, [Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c045c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c045f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0460

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0461

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0462

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0463

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0464

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 76
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0465

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0466

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c045d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c045e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 81
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 82
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
