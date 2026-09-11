.class public Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "SouthAmericanChampionsCup2018.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "teams",
            "weeks",
            "competition",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Week;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    const/4 v0, 0x6

    .line 32
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->organizeTeams(Ljava/util/List;II)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 35
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, p1, v2, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v1, 0x1

    .line 36
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v1, p1, v0, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    move v0, v2

    goto :goto_0

    .line 38
    :cond_0
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 28
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
            "currentWeek",
            "teams",
            "competitions",
            "time",
            "friendlies",
            "chosenTeam",
            "inbox",
            "training",
            "finances"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Lpl/mkrstudio/truefootball3/objects/Friendlies;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Inbox;",
            "Lpl/mkrstudio/truefootball3/objects/Training;",
            "Lpl/mkrstudio/truefootball3/objects/Finances;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move-object/from16 v14, p9

    const-string v2, "SAM_EC"

    const/4 v11, 0x5

    const/4 v6, 0x0

    if-ne v1, v11, :cond_14

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 46
    :goto_0
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 47
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    add-int/lit8 v11, v1, -0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 48
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 50
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v18

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v19

    add-int v5, v18, v19

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v18

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v19

    add-int v15, v18, v19

    if-le v5, v15, :cond_0

    .line 51
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    add-int/2addr v5, v15

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v18

    add-int v15, v15, v18

    if-ge v5, v15, :cond_1

    .line 53
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-le v5, v15, :cond_2

    .line 55
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-ge v5, v15, :cond_3

    .line 57
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 59
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 61
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 63
    :goto_1
    invoke-interface {v12, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v15, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v15

    if-ne v15, v5, :cond_a

    .line 73
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v15

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    if-le v15, v10, :cond_6

    const/4 v10, 0x1

    const/4 v15, 0x0

    :goto_2
    const/16 v19, 0x0

    goto :goto_3

    .line 74
    :cond_6
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v10

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-ne v10, v15, :cond_7

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    const/4 v15, 0x1

    goto :goto_2

    .line 77
    :goto_3
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    if-le v7, v6, :cond_8

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 78
    :cond_8
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    if-ne v6, v7, :cond_9

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v15, v15, 0x1

    .line 81
    :goto_4
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    add-int/2addr v6, v7

    .line 82
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    add-int/2addr v7, v9

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v22, v10

    move/from16 v24, v15

    move/from16 v23, v19

    goto :goto_9

    .line 84
    :cond_a
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    if-le v6, v7, :cond_b

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_5
    const/4 v10, 0x0

    goto :goto_6

    .line 85
    :cond_b
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    if-ne v6, v7, :cond_c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_5

    .line 88
    :goto_6
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    if-le v15, v4, :cond_d

    add-int/lit8 v6, v6, 0x1

    :goto_7
    move v15, v6

    move v4, v10

    move v10, v7

    goto :goto_8

    .line 89
    :cond_d
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-ne v4, v15, :cond_e

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 92
    :goto_8
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    add-int/2addr v7, v6

    .line 93
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    add-int/2addr v6, v9

    move/from16 v23, v4

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v22, v10

    move/from16 v24, v15

    .line 95
    :goto_9
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v21

    const-string v27, ""

    move-object/from16 v20, v4

    invoke-direct/range {v20 .. v27}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x5

    goto/16 :goto_0

    .line 99
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 100
    new-instance v4, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018$1;

    invoke-direct {v4, v0}, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018$1;-><init>(Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x2

    if-ge v4, v5, :cond_12

    .line 125
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 127
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 128
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_b

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 133
    :cond_12
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    :cond_13
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/16 v7, 0x8

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v7, :cond_2c

    .line 148
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/4 v10, 0x6

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    mul-int/lit8 v16, v15, 0x4

    add-int/lit8 v18, v16, 0x1

    add-int/lit8 v19, v16, 0x2

    move-object/from16 v3, p2

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, p3

    const/16 v11, 0x8

    move-object/from16 v7, p4

    const/16 v9, 0xb

    move-object/from16 v8, p5

    const/4 v14, 0x4

    move-object/from16 v9, p6

    const/4 v14, 0x6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 149
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v17, v16, 0x3

    const/4 v3, 0x4

    add-int/lit8 v16, v16, 0x4

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 151
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/4 v11, 0x7

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v18

    const/4 v14, 0x7

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 152
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 154
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/16 v14, 0x8

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v18

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 155
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v19

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 157
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/16 v11, 0x9

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v5, v18

    const/16 v14, 0x9

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 158
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 160
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/16 v14, 0xa

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v18

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 161
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v19

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 163
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/16 v14, 0xb

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 164
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v14, p9

    const/16 v7, 0x8

    goto/16 :goto_c

    :cond_14
    const/16 v14, 0xb

    if-ne v1, v14, :cond_1a

    const/4 v3, 0x0

    :goto_d
    const/16 v4, 0x8

    if-ge v3, v4, :cond_19

    const/4 v4, 0x6

    const/4 v5, 0x4

    .line 171
    invoke-static {v0, v4, v14, v3, v5}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v6

    .line 172
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x2

    :goto_e
    if-ge v8, v5, :cond_17

    .line 174
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 175
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 176
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 177
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    if-ne v8, v4, :cond_15

    .line 179
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    const/4 v15, 0x0

    invoke-interface {v4, v15, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_15
    const/4 v4, 0x6

    goto :goto_f

    :cond_16
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x6

    goto :goto_e

    .line 184
    :cond_17
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 185
    invoke-interface {v12, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_10

    :cond_18
    const/4 v8, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_19
    const/4 v8, 0x0

    .line 190
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v12, v8, v2}, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x8

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v2, :cond_2c

    .line 194
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v6, 0x1

    add-int/lit8 v16, v6, 0x9

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 195
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v6, v15

    const/16 v2, 0x8

    goto :goto_11

    .line 200
    :cond_1a
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2c

    .line 201
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_25

    const/4 v8, 0x0

    .line 204
    :goto_12
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_21

    .line 205
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 206
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 208
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_1b

    .line 209
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_13

    .line 210
    :cond_1b
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1c

    .line 211
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_13

    .line 212
    :cond_1c
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    if-le v4, v5, :cond_1d

    .line 213
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_13

    .line 214
    :cond_1d
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    if-ge v4, v5, :cond_1e

    .line 215
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_13

    .line 216
    :cond_1e
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 217
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_13

    .line 218
    :cond_1f
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 219
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_13

    :cond_20
    const/4 v2, 0x0

    .line 221
    :goto_13
    invoke-interface {v12, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    :cond_21
    const/4 v2, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_22

    const/16 v2, 0x10

    .line 231
    invoke-virtual {v0, v12, v6, v2}, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->organizeTeams(Ljava/util/List;II)V

    goto :goto_14

    :cond_22
    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    const/16 v2, 0x8

    .line 235
    invoke-virtual {v0, v12, v6, v2}, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->organizeTeams(Ljava/util/List;II)V

    .line 240
    :cond_23
    :goto_14
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v15, v1, 0x1

    if-le v2, v15, :cond_2c

    const/4 v8, 0x0

    .line 244
    :goto_15
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_24

    .line 245
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v8, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, v16, v3

    move-object/from16 v3, p2

    move/from16 v4, v16

    const/4 v11, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    const/4 v14, 0x0

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v8, v16

    const/4 v6, 0x0

    const/16 v14, 0xb

    goto :goto_15

    :cond_24
    const/4 v14, 0x0

    .line 247
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_2c

    const/4 v6, 0x0

    .line 248
    :goto_16
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_2c

    .line 249
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v6, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v14, v3

    move-object/from16 v3, p2

    move v5, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v6, v14

    goto :goto_16

    :cond_25
    const/4 v14, 0x0

    .line 253
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_2c

    const/4 v6, 0x0

    .line 255
    :goto_17
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_2a

    .line 256
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 259
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-le v3, v4, :cond_26

    .line 260
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 261
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_18

    .line 262
    :cond_26
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-ge v3, v4, :cond_27

    .line 263
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 264
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_18

    .line 265
    :cond_27
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 266
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 267
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_18

    .line 268
    :cond_28
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 269
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 270
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_18

    :cond_29
    const/4 v3, 0x0

    .line 272
    :goto_18
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_2a
    add-int/lit8 v15, v1, 0x1

    .line 275
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_2c

    .line 277
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v14, v2, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 278
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4, v2}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    const/4 v6, 0x0

    .line 280
    :goto_19
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_2b

    .line 281
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v6, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, v16, v3

    move-object v3, v12

    move/from16 v4, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v6, v16

    goto :goto_19

    .line 283
    :cond_2b
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_2c

    const/4 v6, 0x0

    .line 284
    :goto_1a
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_2c

    .line 285
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v6, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2018;->weeks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v14, v3

    move-object v3, v12

    move v5, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v6, v14

    goto :goto_1a

    :cond_2c
    const-string v2, "continentalFederationPrizes"

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2e

    .line 293
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_2d

    .line 295
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 296
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-direct {v3, v4, v5, v6, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v4, p9

    .line 295
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1b

    :cond_2d
    move-object/from16 v4, p9

    goto :goto_1b

    :cond_2e
    move-object/from16 v4, p9

    const/16 v3, 0xb

    if-ne v1, v3, :cond_30

    .line 302
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_2f

    .line 304
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 305
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-direct {v3, v5, v6, v7, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 304
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1c

    :cond_30
    const/16 v3, 0xd

    if-ne v1, v3, :cond_32

    .line 311
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_31

    .line 313
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 314
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-direct {v3, v5, v6, v7, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 313
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1d

    :cond_32
    const/16 v3, 0xf

    if-ne v1, v3, :cond_34

    .line 320
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_33

    .line 322
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 323
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0xfa

    invoke-direct {v3, v5, v6, v7, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 322
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1e

    :cond_34
    const/16 v3, 0x11

    if-ne v1, v3, :cond_36

    .line 329
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_35

    .line 331
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 332
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-direct {v3, v5, v6, v7, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 331
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1f

    :cond_36
    const/16 v3, 0x13

    if-ne v1, v3, :cond_38

    .line 338
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_37

    .line 340
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 341
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x9c4

    invoke-direct {v3, v5, v6, v7, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 340
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_20

    :cond_38
    return-void
.end method
