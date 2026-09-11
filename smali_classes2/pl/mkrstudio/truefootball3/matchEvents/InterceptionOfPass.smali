.class public Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "InterceptionOfPass.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;)V
    .locals 15
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
            "previousPlayer",
            "attackingTeam",
            "defendingTeam",
            "samePlayer",
            "context",
            "sobl"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v4, p5

    move-object/from16 v1, p6

    .line 17
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 18
    move-object v2, v4

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v3

    iput v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->delay:I

    move-object/from16 v3, p3

    .line 19
    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    if-eqz p4, :cond_0

    move-object/from16 v5, p1

    .line 20
    iput-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->getPlayerForTackle()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    iput-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 22
    :goto_0
    iput-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 23
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    .line 24
    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    .line 31
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v1, v9, :cond_1

    .line 32
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/ActionType;->INCREDIBLY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    :goto_1
    move-object v8, v1

    goto :goto_2

    .line 33
    :cond_1
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v1, v9, :cond_2

    .line 34
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/ActionType;->VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_1

    .line 35
    :cond_2
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v1, v9, :cond_3

    .line 36
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/ActionType;->SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_1

    .line 37
    :cond_3
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v1, v9, :cond_4

    .line 38
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/ActionType;->QUITE_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_1

    .line 39
    :cond_4
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v1, v9, :cond_5

    .line 40
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_1

    .line 41
    :cond_5
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v1, v9, :cond_6

    .line 42
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_1

    .line 45
    :cond_6
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v9, :cond_7

    .line 46
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 47
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    :goto_3
    move-object v10, v9

    move-object v9, v1

    goto :goto_4

    .line 48
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v9, :cond_8

    .line 49
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 50
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    .line 51
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Gameplay;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v9, :cond_9

    .line 52
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 53
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    .line 55
    :cond_9
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 56
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    .line 59
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v11, :cond_a

    float-to-double v11, v7

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v7, v11

    .line 60
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v11, :cond_b

    float-to-double v11, v7

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v7, v11

    .line 61
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Gameplay;->DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v11, :cond_c

    float-to-double v11, v7

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v7, v11

    .line 62
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v11, :cond_d

    float-to-double v11, v7

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v7, v11

    :cond_d
    float-to-int v1, v7

    if-ge v5, v1, :cond_e

    .line 64
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/CounterAttack;

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v5, v9

    move-object v6, v10

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/CounterAttack;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    if-ge v5, v6, :cond_f

    .line 65
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {v2, v4}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 70
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0369

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c036b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c036c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 76
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c036d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c036e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c036f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0370

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0371

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0372

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c036a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 84
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 85
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/InterceptionOfPass;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
