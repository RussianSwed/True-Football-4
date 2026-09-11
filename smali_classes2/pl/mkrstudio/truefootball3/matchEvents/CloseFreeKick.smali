.class public Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "CloseFreeKick.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 14
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

    move-object v0, p0

    move-object/from16 v6, p3

    .line 18
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 19
    move-object v1, v6

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    iput v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->delay:I

    move-object v2, p1

    .line 20
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 22
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getCloseFreeKickTaker(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 23
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/16 v4, 0xa

    if-eqz v3, :cond_0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    if-gt v3, v4, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 26
    :cond_1
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    .line 27
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 28
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v5

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v5, v7

    float-to-double v7, v5

    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 30
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSetPieces()B

    move-result v5

    int-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    double-to-float v5, v7

    .line 32
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 33
    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v11

    const/16 v12, 0x5a

    const/16 v13, 0x3c

    if-le v11, v12, :cond_2

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v4, v4, v9

    double-to-float v4, v4

    goto/16 :goto_1

    .line 34
    :cond_2
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x55

    if-le v9, v10, :cond_3

    float-to-double v4, v5

    const-wide v9, 0x3fe3333333333333L    # 0.6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 35
    :cond_3
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x50

    if-le v9, v10, :cond_4

    float-to-double v4, v5

    const-wide v9, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 36
    :cond_4
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x46

    if-le v9, v10, :cond_5

    float-to-double v4, v5

    const-wide v9, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 37
    :cond_5
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    if-le v9, v13, :cond_6

    float-to-double v4, v5

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 38
    :cond_6
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x28

    if-le v9, v10, :cond_7

    float-to-double v4, v5

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 39
    :cond_7
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v9

    const/16 v10, 0x14

    if-le v9, v10, :cond_8

    float-to-double v4, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 40
    :cond_8
    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v7

    if-le v7, v4, :cond_9

    float-to-double v4, v5

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_0

    :cond_9
    float-to-double v4, v5

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_0

    :goto_1
    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v7, v4, v5

    if-lez v7, :cond_a

    const/high16 v4, 0x42b40000    # 90.0f

    .line 44
    :cond_a
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5, v2, v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getParametersAfterCloseFreeKick(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v7, 0x1

    .line 46
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    const/16 v2, 0x78

    .line 48
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    float-to-int v4, v4

    if-ge v2, v4, :cond_b

    .line 49
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v3, 0x0

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/Goal;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;ZZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x64

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_c

    .line 52
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v6, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    const/16 v4, 0x19

    if-ge v3, v4, :cond_d

    .line 53
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v6, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperSave;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    if-ge v3, v13, :cond_e

    .line 54
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v6, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/matchEvents/KeeperReflect;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    if-ge v3, v2, :cond_f

    .line 55
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;

    invoke-direct {v2, v6}, Lpl/mkrstudio/truefootball3/matchEvents/ShotMissed;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 62
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x7

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    .line 68
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick$1;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;I)V

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 76
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v0

    int-to-long v3, v0

    .line 68
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick$2;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 86
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
