.class public Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "ActionStart.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 16
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

    move-object/from16 v6, p3

    .line 16
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    move-object/from16 v1, p1

    .line 17
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 18
    iput-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->context:Landroid/content/Context;

    .line 19
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 25
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v4, v5, :cond_0

    .line 26
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 27
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    :goto_0
    move-object v7, v1

    move-object v8, v4

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v4, v5, :cond_1

    .line 29
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 30
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v1

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Gameplay;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v1, v4, :cond_2

    .line 32
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 33
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_0

    .line 35
    :cond_2
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 36
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_0

    :goto_1
    const/16 v1, 0xf

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ge v2, v1, :cond_3

    new-array v1, v4, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 40
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v15

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v12

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v10

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v9

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v5

    .line 41
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;

    invoke-virtual {v0, v1, v11}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x1e

    if-ge v2, v1, :cond_4

    new-array v1, v5, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 43
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v15

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v12

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v10

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v9

    .line 44
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;

    invoke-virtual {v0, v1, v11}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x2d

    if-ge v2, v1, :cond_5

    new-array v1, v4, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 46
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v15

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v12

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v10

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v9

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v5

    .line 47
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;

    invoke-virtual {v0, v1, v11}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassToRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x3c

    if-ge v2, v1, :cond_6

    new-array v1, v12, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 49
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v15

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    .line 50
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;

    invoke-virtual {v0, v1, v11}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionLeftSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x4b

    if-ge v2, v1, :cond_7

    new-array v1, v10, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 52
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v15

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v12

    .line 53
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;

    invoke-virtual {v0, v1, v11}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionCenter;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0x5a

    if-ge v2, v1, :cond_8

    new-array v1, v12, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 55
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v15

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    .line 56
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PossesionRightSide;

    invoke-virtual {v0, v1, v11}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PossesionRightSide;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ge v2, v3, :cond_9

    const/16 v1, 0x8

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 58
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v15

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v12

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v10

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v9

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v5

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v4

    .line 59
    move-object v2, v6

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;

    invoke-virtual {v0, v1, v11}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v5, 0x1

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v1, v12

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/matchEvents/PassFarFromPenaltyArea;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZLandroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
