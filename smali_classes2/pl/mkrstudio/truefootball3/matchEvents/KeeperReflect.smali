.class public Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "KeeperReflect.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 13
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
            "defendingTeam",
            "attackingTeam",
            "context",
            "sobl",
            "dipa",
            "at"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 17
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 18
    move-object v1, v6

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    iput v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->delay:I

    .line 19
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->getGoalkeeper(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 20
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 21
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 27
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v7, v3, :cond_0

    .line 28
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/ActionType;->INCREDIBLY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    :goto_0
    move-object v9, v3

    goto :goto_1

    .line 29
    :cond_0
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v7, v3, :cond_1

    .line 30
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/ActionType;->VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v7, v3, :cond_2

    .line 32
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/ActionType;->SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 33
    :cond_2
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v7, v3, :cond_3

    .line 34
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/ActionType;->QUITE_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 35
    :cond_3
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v7, v3, :cond_4

    .line 36
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 37
    :cond_4
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne v7, v3, :cond_5

    .line 38
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 41
    :goto_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v3, v4, :cond_6

    .line 42
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 43
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    :goto_2
    move-object v5, v3

    move-object v10, v4

    goto :goto_3

    .line 44
    :cond_6
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v3, v4, :cond_7

    .line 45
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 46
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_2

    .line 47
    :cond_7
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Gameplay;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v3, v4, :cond_8

    .line 48
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 49
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_2

    .line 51
    :cond_8
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 52
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_2

    :goto_3
    const/high16 v3, 0x41200000    # 10.0f

    .line 56
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v4, :cond_9

    float-to-double v3, v3

    const-wide v11, 0x3fc999999999999aL    # 0.2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    :goto_4
    mul-double v3, v3, v11

    double-to-float v3, v3

    goto :goto_5

    .line 57
    :cond_9
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v4, :cond_a

    float-to-double v3, v3

    const-wide v11, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    .line 58
    :cond_a
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v4, :cond_b

    float-to-double v3, v3

    const-wide v11, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    .line 59
    :cond_b
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v4, :cond_c

    float-to-double v3, v3

    const-wide v11, 0x3fe999999999999aL    # 0.8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    .line 60
    :cond_c
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    if-ne v8, v4, :cond_d

    float-to-double v3, v3

    const-wide v11, 0x3ff199999999999aL    # 1.1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_d
    float-to-double v3, v3

    const-wide/high16 v11, 0x3ff4000000000000L    # 1.25

    .line 61
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :goto_5
    const/16 v4, 0x64

    .line 63
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    float-to-int v3, v3

    if-ge v2, v3, :cond_e

    .line 65
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/CounterAttack;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/CounterAttack;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_e
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_f

    .line 68
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v11

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    const/16 v3, 0x2d

    if-ge v2, v3, :cond_10

    .line 69
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lpl/mkrstudio/truefootball3/matchEvents/SecondShot;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v11

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/SecondShot;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_11

    .line 70
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    move-object v1, v10

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    if-ge v2, v4, :cond_12

    .line 71
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {v2, v6}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 80
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0382

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 83
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0383

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0384

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0385

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0386

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0387

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0388

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 90
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 91
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
