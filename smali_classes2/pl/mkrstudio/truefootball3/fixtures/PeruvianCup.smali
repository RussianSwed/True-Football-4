.class public Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "PeruvianCup.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 26
    invoke-direct {v0, v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    mul-int/lit8 v8, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v7, v1, v9, v10, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 31
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v11, v8, 0x3

    add-int/lit8 v12, v8, 0x4

    invoke-virtual {v7, v1, v11, v12, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 32
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v13, v8, 0x5

    add-int/lit8 v14, v8, 0x6

    invoke-virtual {v7, v1, v13, v14, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 33
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v8, 0x7

    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v7, v1, v15, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v7, 0x1

    .line 35
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v12, v13, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 36
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v14, v9, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 37
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v10, v15, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 38
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v3, v11, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v6, 0x2

    .line 40
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v15, v12, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 41
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v14, v10, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 42
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v9, v11, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 43
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v13, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v6, 0x3

    .line 45
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v15, v13, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 46
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v12, v9, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 47
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v11, v14, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 48
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v3, v10, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v6, 0x4

    .line 50
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v10, v12, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 51
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v15, v9, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 52
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v13, v11, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 53
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v14, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v7, 0x5

    .line 55
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v13, v10, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 56
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v12, v14, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 57
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v11, v15, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 58
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v3, v9, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v6, 0x6

    .line 60
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v14, v15, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 61
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v10, v11, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 62
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7, v1, v9, v13, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 63
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6, v1, v12, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v3, 0x7

    :goto_1
    const/16 v6, 0xe

    if-ge v3, v6, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x4

    :goto_2
    if-ge v6, v7, :cond_0

    add-int/lit8 v9, v3, -0x7

    .line 67
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v10, v8

    .line 68
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v9, v8

    .line 69
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v12, 0x1

    add-int/2addr v9, v12

    add-int/2addr v10, v12

    invoke-virtual {v11, v1, v9, v10, v4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v12, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 73
    :cond_2
    iput-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V
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

    const/4 v13, 0x2

    const/16 v2, 0xd

    const/4 v14, 0x0

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v13, :cond_4

    const/16 v3, 0x8

    .line 81
    invoke-static {v0, v14, v2, v1, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v4

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v3, :cond_2

    .line 84
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 85
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 86
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 90
    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v14, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_4
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    goto/16 :goto_8

    .line 99
    :cond_5
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_c

    .line 100
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_c

    const/4 v2, 0x0

    .line 101
    :goto_4
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 102
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    const/4 v4, 0x0

    .line 104
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-le v5, v6, :cond_6

    .line 105
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_5

    .line 106
    :cond_6
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-ge v5, v6, :cond_7

    .line 107
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_5

    .line 108
    :cond_7
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 109
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_5

    .line 110
    :cond_8
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 111
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    .line 113
    :cond_9
    :goto_5
    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v15, v1, 0x1

    .line 116
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_c

    const/4 v2, 0x0

    .line 117
    :goto_6
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 118
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v2, 0x1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v5, v16, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move/from16 v4, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v2, v16

    goto :goto_6

    .line 120
    :cond_b
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_c

    .line 121
    :goto_7
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

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

    if-ge v14, v2, :cond_c

    .line 122
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v14, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/PeruvianCup;->weeks:Ljava/util/List;

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

    goto :goto_7

    :cond_c
    :goto_8
    return-void
.end method
