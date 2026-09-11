.class public Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "EuropeanCommunityCup2021.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
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

    .line 33
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    const/16 v0, 0x42

    .line 35
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 37
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v0, 0x22

    invoke-virtual {v1, p1, v2, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    const/4 v1, 0x1

    .line 38
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v1, p1, v0, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    move v0, v2

    goto :goto_0

    .line 40
    :cond_0
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method areGroupsReady(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 555
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    .line 560
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 564
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    .line 568
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 24
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

    move-object/from16 v13, p3

    move-object/from16 v14, p6

    move-object/from16 v15, p9

    const/4 v11, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v1, v11, :cond_17

    const/4 v7, 0x0

    .line 66
    :goto_0
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 67
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v9, v1, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 68
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 70
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v21

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v22

    add-int v10, v21, v22

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v21

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v22

    add-int v11, v21, v22

    if-le v10, v11, :cond_0

    .line 71
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v10

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v11

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v21

    add-int v11, v11, v21

    if-ge v10, v11, :cond_1

    .line 73
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v11

    if-le v10, v11, :cond_2

    .line 75
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v11

    if-ge v10, v11, :cond_3

    .line 77
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 79
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 81
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 83
    :goto_1
    invoke-interface {v12, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x7

    goto/16 :goto_0

    .line 90
    :cond_6
    new-instance v7, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021$1;

    invoke-direct {v7, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021$1;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;)V

    invoke-static {v12, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_12

    .line 103
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    invoke-static {v13, v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousChampionsCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    .line 105
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v8, :cond_10

    if-eqz v7, :cond_7

    .line 109
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    goto :goto_3

    :cond_7
    const/16 v9, 0x1c

    .line 111
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    .line 114
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "EUR_EC"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    .line 115
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v6, "EUR_CC"

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    .line 116
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllFirstDivisionTeams()Ljava/util/List;

    move-result-object v9

    .line 117
    new-instance v11, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021$2;

    invoke-direct {v11, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021$2;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;)V

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 131
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/16 v22, 0x0

    :cond_8
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 132
    invoke-virtual/range {v23 .. v23}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v22, 0x1

    goto :goto_5

    .line 134
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 135
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v22, 0x1

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    .line 137
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 138
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v22, 0x1

    goto :goto_7

    :cond_d
    if-nez v22, :cond_e

    .line 141
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    goto :goto_4

    :cond_f
    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 147
    :cond_10
    :goto_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_12

    .line 148
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 149
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 150
    :goto_a
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 151
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_a

    .line 153
    :cond_11
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :cond_13
    add-int/2addr v2, v4

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 160
    invoke-static {v5, v3, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v6

    const/16 v7, 0x10

    .line 161
    invoke-static {v3, v7, v6}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v6

    const/16 v3, 0x18

    .line 162
    invoke-static {v7, v3, v6}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 163
    invoke-static {v3, v8, v6}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 165
    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->areGroupsReady(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_14

    const/16 v3, 0x64

    if-lt v2, v3, :cond_13

    .line 168
    :cond_14
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 169
    :goto_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x4

    div-int/2addr v3, v6

    if-ge v2, v3, :cond_15

    .line 170
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    const/4 v7, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v7, 0x2

    const/16 v2, 0x8

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_16

    .line 180
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    mul-int/lit8 v16, v12, 0x4

    add-int/lit8 v17, v16, 0x1

    add-int/lit8 v18, v16, 0x2

    const/16 v10, 0x8

    move-object v2, v3

    move-object v3, v11

    move/from16 v4, v17

    const/4 v8, 0x0

    const/4 v9, 0x2

    move/from16 v5, v18

    const/4 v7, 0x4

    move-object/from16 v6, p3

    const/4 v15, 0x4

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    const/16 v15, 0x8

    move-object/from16 v10, p8

    move-object/from16 v19, v11

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 181
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v20, v16, 0x3

    const/4 v3, 0x4

    add-int/lit8 v16, v16, 0x4

    move-object/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 183
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v11, 0x9

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v17

    const/16 v15, 0x9

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 184
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 186
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v17

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 187
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 189
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 190
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v16

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 192
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 193
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 195
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v11, 0xd

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v20

    move/from16 v5, v17

    const/16 v15, 0xd

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 196
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, p9

    move-object/from16 v11, v19

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    goto/16 :goto_c

    :cond_16
    move-object/from16 v19, v11

    const/16 v15, 0xd

    move-object/from16 v12, v19

    const/4 v2, 0x2

    const/4 v14, 0x0

    goto/16 :goto_2c

    :cond_17
    const/16 v15, 0xd

    if-ne v1, v15, :cond_23

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x8

    :goto_d
    if-ge v5, v6, :cond_1f

    const/4 v7, 0x4

    .line 205
    invoke-static {v0, v6, v15, v5, v7}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v8

    .line 206
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 209
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 210
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_18
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 213
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const/16 v15, 0xd

    goto :goto_e

    :cond_1a
    const/4 v11, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x4

    :goto_f
    if-ge v7, v9, :cond_1d

    .line 218
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 219
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 220
    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_10

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x4

    const/4 v11, 0x0

    goto :goto_f

    .line 223
    :cond_1d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 224
    invoke-interface {v12, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 225
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_11

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/16 v15, 0xd

    goto/16 :goto_d

    .line 229
    :cond_1f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 230
    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 234
    :cond_20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 235
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_21
    const/16 v3, 0x8

    const/4 v11, 0x0

    .line 241
    invoke-virtual {v0, v12, v11, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x10

    .line 242
    invoke-virtual {v0, v12, v3, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v3, :cond_22

    .line 245
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xe

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v5, 0x1

    add-int/lit8 v16, v5, 0x9

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    const/4 v14, 0x0

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 246
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    const/16 v11, 0xf

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move v5, v15

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move-object/from16 v14, p6

    const/16 v3, 0x8

    const/4 v11, 0x0

    goto :goto_14

    :cond_22
    const/4 v14, 0x0

    goto/16 :goto_2b

    :cond_23
    const/4 v14, 0x0

    .line 251
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_47

    .line 252
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_3e

    const/4 v5, 0x0

    .line 253
    :goto_15
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_28

    .line 254
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 255
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 257
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    add-int/2addr v6, v7

    if-le v4, v6, :cond_24

    .line 258
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_16

    .line 259
    :cond_24
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_25

    .line 260
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_16

    .line 261
    :cond_25
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 262
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_16

    .line 263
    :cond_26
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 264
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_16

    :cond_27
    const/4 v2, 0x0

    .line 266
    :goto_16
    invoke-interface {v12, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_15

    :cond_28
    const/4 v15, 0x5

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    const/16 v2, 0x12

    .line 271
    invoke-virtual {v0, v12, v14, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x14

    const/16 v3, 0x6c

    .line 272
    invoke-virtual {v0, v12, v2, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    :goto_17
    const/4 v2, 0x1

    const/16 v10, 0xf

    const/16 v11, 0xa

    goto/16 :goto_1e

    :cond_29
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2a

    const/16 v2, 0xa

    .line 275
    invoke-virtual {v0, v12, v14, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v3, 0x40

    .line 276
    invoke-virtual {v0, v12, v2, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    goto :goto_17

    :cond_2a
    if-ne v1, v15, :cond_35

    .line 279
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_34

    .line 281
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-static {v13, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousChampionsCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    .line 283
    :cond_2b
    :goto_18
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v3, :cond_34

    if-eqz v2, :cond_2c

    .line 287
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    goto :goto_19

    :cond_2c
    const/16 v4, 0x2a

    .line 289
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    .line 292
    :goto_19
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "EUR_EC"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v5

    .line 293
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "EUR_CC"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    .line 294
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllFirstDivisionTeams()Ljava/util/List;

    move-result-object v4

    .line 295
    new-instance v7, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021$3;

    invoke-direct {v7, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021$3;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 309
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_2e
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 310
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    const/4 v9, 0x1

    goto :goto_1a

    .line 312
    :cond_2f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_30
    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 313
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    const/4 v9, 0x1

    goto :goto_1b

    .line 315
    :cond_31
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_32
    :goto_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 316
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    const/4 v9, 0x1

    goto :goto_1c

    :cond_33
    if-nez v9, :cond_2d

    .line 319
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_34
    const/16 v11, 0xa

    .line 326
    invoke-virtual {v0, v12, v14, v11}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    .line 327
    invoke-virtual {v0, v12, v11, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    const/4 v2, 0x1

    const/16 v10, 0xf

    goto :goto_1e

    :cond_35
    const/16 v10, 0xf

    const/16 v11, 0xa

    if-ne v1, v10, :cond_36

    const/16 v2, 0x8

    .line 330
    invoke-virtual {v0, v12, v14, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v3, 0x10

    .line 331
    invoke-virtual {v0, v12, v2, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    goto :goto_1d

    .line 333
    :cond_36
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v12, v14, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->organizeTeams(Ljava/util/List;II)V

    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    if-ne v1, v2, :cond_38

    const/4 v5, 0x0

    const/16 v15, 0x9

    :goto_1f
    if-ge v5, v15, :cond_37

    .line 341
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v5, 0x1

    add-int/lit8 v17, v5, 0xa

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    const/16 v11, 0xf

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 342
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    const/16 v10, 0xf

    goto :goto_1f

    :cond_37
    const/16 v2, 0x13

    :goto_20
    const/16 v3, 0x40

    if-ge v2, v3, :cond_47

    .line 345
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v2, 0x1

    add-int/lit8 v16, v2, 0x2e

    move-object v2, v3

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

    .line 346
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v2, v15

    goto :goto_20

    :cond_38
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3a

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v15, :cond_39

    .line 351
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v5, 0x1

    add-int/lit8 v17, v5, 0x6

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    const/16 v18, 0xa

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 352
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    const/16 v11, 0xa

    goto :goto_21

    :cond_39
    const/16 v18, 0xa

    const/16 v7, 0xa

    :goto_22
    const/16 v2, 0x25

    if-ge v7, v2, :cond_47

    .line 355
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v7, 0x1

    add-int/lit8 v16, v7, 0x1c

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

    .line 356
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v7, v15

    goto :goto_22

    :cond_3a
    const/16 v18, 0xa

    if-ne v1, v15, :cond_3c

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v15, :cond_3b

    .line 361
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v5, 0x1

    add-int/lit8 v17, v5, 0x6

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 362
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    goto :goto_23

    :cond_3b
    const/16 v7, 0xa

    :goto_24
    const/16 v2, 0x1b

    if-ge v7, v2, :cond_47

    .line 365
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v7, 0x1

    add-int/lit8 v16, v7, 0x12

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

    .line 366
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v7, v15

    goto :goto_24

    :cond_3c
    const/4 v5, 0x0

    .line 369
    :goto_25
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_3d

    .line 370
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v5, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, v15, v3

    move-object/from16 v3, p2

    move v4, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v5, v15

    goto :goto_25

    .line 372
    :cond_3d
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_47

    const/4 v5, 0x0

    .line 373
    :goto_26
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

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

    if-ge v5, v2, :cond_47

    .line 374
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v5, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v15, v3

    move-object/from16 v3, p2

    move v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    goto :goto_26

    .line 379
    :cond_3e
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_47

    const/4 v5, 0x0

    .line 381
    :goto_27
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_44

    .line 382
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 385
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-le v3, v4, :cond_3f

    .line 386
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 387
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_28

    .line 388
    :cond_3f
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-ge v3, v4, :cond_40

    .line 389
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 390
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_28

    .line 391
    :cond_40
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 392
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 393
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_28

    .line 394
    :cond_41
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 395
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 396
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_28

    :cond_42
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 398
    :goto_28
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 399
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v14, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 401
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_43

    .line 402
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 403
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    :cond_44
    add-int/lit8 v15, v1, 0x1

    .line 406
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_47

    .line 408
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

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

    .line 409
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

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

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v12, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4, v2}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v16

    const/4 v5, 0x0

    .line 411
    :goto_29
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_45

    .line 412
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v17, v5, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, v17, v3

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v5, v17

    goto :goto_29

    .line 414
    :cond_45
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_46

    const/4 v5, 0x0

    .line 415
    :goto_2a
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

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

    if-ge v5, v2, :cond_46

    .line 416
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v5, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v15, v3

    move-object/from16 v3, v16

    move v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    goto :goto_2a

    :cond_46
    move-object/from16 v12, v16

    :cond_47
    :goto_2b
    const/4 v2, 0x2

    :goto_2c
    const-wide/16 v3, 0x64

    const-string v5, "continentalFederationPrizes"

    if-nez v1, :cond_4a

    const/4 v6, 0x0

    .line 425
    :goto_2d
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4a

    .line 426
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 427
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    move-object/from16 v9, p6

    const/4 v10, 0x0

    if-eq v8, v9, :cond_49

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v7, v9, :cond_48

    goto :goto_2e

    :cond_48
    move-object/from16 v8, p9

    goto :goto_2f

    .line 428
    :cond_49
    :goto_2e
    new-instance v7, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 429
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3, v4, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v8, p9

    .line 428
    invoke-virtual {v8, v7}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :goto_2f
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x0

    goto :goto_2d

    :cond_4a
    move-object/from16 v9, p6

    move-object/from16 v8, p9

    const/4 v10, 0x0

    if-ne v1, v2, :cond_4d

    const/4 v2, 0x0

    .line 437
    :goto_30
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4d

    .line 438
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 439
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-eq v7, v9, :cond_4b

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v9, :cond_4c

    .line 440
    :cond_4b
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 441
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3, v4, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 440
    invoke-virtual {v8, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_4d
    const/4 v2, 0x4

    if-ne v1, v2, :cond_50

    const/4 v2, 0x0

    .line 449
    :goto_31
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 450
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 451
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, v9, :cond_4e

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, v9, :cond_4f

    .line 452
    :cond_4e
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 453
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-direct {v3, v4, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 452
    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_50
    const/4 v2, 0x6

    if-ne v1, v2, :cond_53

    const/4 v2, 0x0

    .line 461
    :goto_32
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 462
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 463
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, v9, :cond_51

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, v9, :cond_52

    .line 464
    :cond_51
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 465
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-direct {v3, v4, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 464
    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_53
    const/4 v2, 0x7

    if-ne v1, v2, :cond_55

    .line 473
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v9, :cond_54

    .line 475
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 476
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-direct {v3, v4, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 475
    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_33

    :cond_55
    const/16 v2, 0x8

    if-lt v1, v2, :cond_5b

    const/16 v2, 0xd

    if-gt v1, v2, :cond_5c

    .line 483
    :goto_34
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5b

    .line 484
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 485
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5a

    .line 486
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, v9, :cond_56

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-gt v3, v4, :cond_57

    .line 487
    :cond_56
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, v9, :cond_58

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    if-le v3, v4, :cond_58

    .line 488
    :cond_57
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 489
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0xfa

    invoke-direct {v2, v3, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 488
    invoke-virtual {v8, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_35

    .line 492
    :cond_58
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-eq v3, v9, :cond_59

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, v9, :cond_5a

    .line 493
    :cond_59
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-ne v3, v2, :cond_5a

    .line 494
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 495
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x96

    invoke-direct {v2, v3, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 494
    invoke-virtual {v8, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_5a
    :goto_35
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_34

    :cond_5b
    const/16 v2, 0xd

    :cond_5c
    if-ne v1, v2, :cond_5e

    .line 503
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v9, :cond_5d

    .line 505
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 506
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-direct {v3, v4, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 505
    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_36

    :cond_5e
    const/16 v2, 0xf

    if-ne v1, v2, :cond_60

    .line 513
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5f
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v9, :cond_5f

    .line 515
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 516
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x15e

    invoke-direct {v3, v4, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 515
    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_37

    :cond_60
    const/16 v2, 0x11

    if-ne v1, v2, :cond_62

    .line 523
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_61
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v9, :cond_61

    .line 525
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 526
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-direct {v3, v4, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 525
    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_38

    :cond_62
    const/16 v2, 0x15

    if-ne v1, v2, :cond_64

    .line 533
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_63
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v9, :cond_63

    .line 535
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 536
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-direct {v3, v4, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 535
    invoke-virtual {v8, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_39

    :cond_64
    const/16 v2, 0x16

    if-ne v1, v2, :cond_66

    .line 543
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_65
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v2, v9, :cond_65

    .line 545
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 546
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x7d0

    invoke-direct {v2, v3, v6, v7, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 545
    invoke-virtual {v8, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_3a

    :cond_66
    return-void
.end method
