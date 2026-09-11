.class public Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "EuropeanChampionsCup2021.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 5
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

    .line 36
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    .line 38
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 39
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    .line 41
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, p1, v3, v4, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 42
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p3, p1, v1, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 45
    :cond_0
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

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

    .line 476
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
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

    .line 482
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

    .line 484
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

    .line 487
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

    .line 489
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

    .line 492
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

    const/16 v11, 0x9

    const-string v2, "EUR_FC"

    const-string v5, "EUR_EC"

    const/4 v4, 0x4

    const/4 v3, 0x0

    if-ne v1, v11, :cond_18

    const/4 v9, 0x0

    .line 52
    :goto_0
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 53
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v11, v1, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 54
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 56
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v21

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v22

    add-int v7, v21, v22

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v21

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v22

    add-int v8, v21, v22

    if-le v7, v8, :cond_0

    .line 57
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v21

    add-int v8, v8, v21

    if-ge v7, v8, :cond_1

    .line 59
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    if-le v7, v8, :cond_2

    .line 61
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    if-ge v7, v8, :cond_3

    .line 63
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 67
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    .line 69
    :goto_1
    invoke-interface {v12, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-ge v9, v4, :cond_6

    .line 71
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 72
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/16 v11, 0x9

    goto/16 :goto_0

    .line 84
    :cond_7
    new-instance v7, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021$1;

    invoke-direct {v7, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021$1;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;)V

    invoke-static {v12, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_13

    .line 99
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    invoke-static {v13, v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousChampionsCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    .line 100
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v9

    invoke-static {v13, v9}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousFederationCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    .line 102
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v8, :cond_11

    if-eqz v7, :cond_8

    .line 106
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    goto :goto_4

    :cond_8
    const/16 v9, 0x1e

    .line 108
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    .line 111
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    .line 112
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    .line 113
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllFirstDivisionTeams()Ljava/util/List;

    move-result-object v9

    .line 114
    new-instance v4, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021$2;

    invoke-direct {v4, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021$2;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;)V

    invoke-static {v9, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 128
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/16 v22, 0x0

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 129
    invoke-virtual/range {v23 .. v23}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v22, 0x1

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    .line 131
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 132
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v22, 0x1

    :cond_b
    const/16 v8, 0x20

    goto :goto_7

    .line 134
    :cond_c
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 135
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v22, 0x1

    goto :goto_8

    :cond_e
    if-nez v22, :cond_f

    .line 138
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    const/16 v8, 0x20

    goto :goto_5

    :cond_10
    :goto_9
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v8, 0x20

    goto/16 :goto_3

    .line 144
    :cond_11
    :goto_a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_13

    .line 145
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 146
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 147
    :goto_b
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 148
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_b

    .line 150
    :cond_12
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    const/4 v2, 0x0

    :cond_14
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 157
    invoke-static {v4, v3, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x10

    .line 158
    invoke-static {v3, v6, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 v3, 0x18

    .line 159
    invoke-static {v6, v3, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x20

    .line 160
    invoke-static {v3, v6, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 161
    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->areGroupsReady(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_15

    const/16 v3, 0x64

    if-lt v2, v3, :cond_14

    .line 163
    :cond_15
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 164
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    div-int/2addr v3, v5

    if-ge v2, v3, :cond_16

    .line 165
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v5

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v5

    const/4 v6, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v5

    const/4 v6, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    const/16 v8, 0x8

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v8, :cond_17

    .line 173
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v6, 0xa

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    mul-int/lit8 v16, v12, 0x4

    add-int/lit8 v17, v16, 0x1

    add-int/lit8 v18, v16, 0x2

    const/4 v10, 0x0

    move-object v3, v11

    const/4 v7, 0x4

    const/16 v9, 0xa

    move/from16 v4, v17

    move/from16 v5, v18

    const/16 v13, 0xf

    move-object/from16 v6, p3

    const/4 v13, 0x4

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    const/16 v13, 0xa

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v19, v11

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 174
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v20, v16, 0x3

    const/4 v3, 0x4

    add-int/lit8 v16, v16, 0x4

    move-object/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 176
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v11, 0xb

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v17

    const/16 v13, 0xb

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 177
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 179
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v13, 0xc

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 180
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v18

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 182
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 183
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v16

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 185
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v11, 0xe

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v16

    const/16 v13, 0xe

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 186
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v18

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 188
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xf

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 189
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0xf

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, v19

    move/from16 v4, v16

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, p3

    move-object/from16 v11, v19

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v8, 0x8

    goto/16 :goto_d

    :cond_17
    move-object/from16 v19, v11

    move-object/from16 v12, v19

    goto/16 :goto_2b

    :cond_18
    const/16 v3, 0xf

    const/16 v13, 0xe

    if-ne v1, v3, :cond_23

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_e
    const/16 v13, 0x8

    if-ge v6, v13, :cond_20

    const/16 v7, 0xa

    const/4 v8, 0x4

    .line 198
    invoke-static {v0, v7, v3, v6, v8}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v9

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 202
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 203
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_19
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 206
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/16 v13, 0x8

    goto :goto_f

    :cond_1b
    const/4 v11, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x4

    :goto_10
    if-ge v7, v8, :cond_1e

    .line 211
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 212
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 213
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 214
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1c

    .line 216
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v11, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1c
    move-object/from16 v9, v16

    const/4 v11, 0x0

    goto :goto_11

    :cond_1d
    move-object/from16 v16, v9

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x4

    const/4 v11, 0x0

    goto :goto_10

    .line 221
    :cond_1e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 222
    invoke-interface {v12, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_12

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0xf

    goto/16 :goto_e

    .line 227
    :cond_20
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 228
    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 232
    :cond_21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 233
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_22
    const/4 v11, 0x0

    const/16 v13, 0x8

    .line 237
    invoke-virtual {v0, v12, v11, v13}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v7, 0x10

    .line 238
    invoke-virtual {v0, v12, v13, v7}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v13, :cond_45

    .line 243
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v3, 0x9

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    const/16 v18, 0x10

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    const/4 v13, 0x0

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 244
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0x11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    const/16 v7, 0x10

    const/4 v11, 0x0

    const/16 v13, 0x8

    goto :goto_15

    :cond_23
    const/16 v10, 0x8

    const/16 v11, 0xe

    const/4 v13, 0x0

    .line 249
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_45

    .line 251
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v3, v4, :cond_38

    const/4 v3, 0x0

    .line 252
    :goto_16
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-ge v3, v4, :cond_2d

    .line 253
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 254
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 256
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v17

    add-int v9, v9, v17

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v17

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v20

    add-int v10, v17, v20

    if-le v9, v10, :cond_24

    .line 257
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_17

    .line 258
    :cond_24
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v17

    add-int v10, v10, v17

    if-ge v9, v10, :cond_25

    .line 259
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_17

    .line 260
    :cond_25
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 261
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_17

    .line 262
    :cond_26
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 263
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_17

    :cond_27
    const/4 v4, 0x0

    .line 266
    :goto_17
    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 268
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v8, 0x3

    if-ne v1, v8, :cond_28

    .line 270
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_18

    :cond_28
    if-ne v1, v7, :cond_2a

    const/16 v7, 0xa

    if-ge v3, v7, :cond_29

    .line 272
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_18

    .line 273
    :cond_29
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_18

    :cond_2a
    if-ne v1, v6, :cond_2c

    const/4 v6, 0x6

    if-ge v3, v6, :cond_2b

    .line 275
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_18

    .line 276
    :cond_2b
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2c
    :goto_18
    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x8

    goto/16 :goto_16

    :cond_2d
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    const/16 v2, 0x14

    .line 285
    invoke-virtual {v0, v12, v13, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x1e

    const/16 v8, 0x18

    .line 286
    invoke-virtual {v0, v12, v8, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    :goto_19
    const/4 v2, 0x3

    const/16 v10, 0x8

    goto :goto_1b

    :cond_2e
    const/16 v8, 0x18

    if-ne v1, v7, :cond_2f

    const/16 v2, 0xc

    .line 290
    invoke-virtual {v0, v12, v13, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x16

    .line 291
    invoke-virtual {v0, v12, v11, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    goto :goto_19

    :cond_2f
    const/16 v2, 0xc

    if-ne v1, v6, :cond_30

    const/16 v10, 0x8

    .line 295
    invoke-virtual {v0, v12, v13, v10}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    .line 296
    invoke-virtual {v0, v12, v10, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    goto :goto_1a

    :cond_30
    const/16 v10, 0x8

    .line 300
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v12, v13, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    :goto_1a
    const/4 v2, 0x3

    :goto_1b
    if-ne v1, v2, :cond_32

    const/16 v2, 0xa

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_31

    .line 305
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v3, 0xb

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    const/16 v18, 0x18

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    const/16 v11, 0x8

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 306
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    const/16 v2, 0xa

    const/16 v8, 0x18

    const/16 v10, 0x8

    goto :goto_1c

    :cond_31
    const/16 v18, 0x18

    const/16 v8, 0x18

    :goto_1d
    const/16 v2, 0x1b

    if-ge v8, v2, :cond_45

    .line 309
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v8, 0x1

    add-int/lit8 v17, v8, 0x4

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

    .line 310
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v8, v16

    goto :goto_1d

    :cond_32
    if-ne v1, v7, :cond_34

    const/4 v3, 0x0

    :goto_1e
    const/4 v2, 0x6

    if-ge v3, v2, :cond_33

    .line 315
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v3, 0x7

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    const/16 v18, 0xe

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 316
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    const/16 v11, 0xe

    goto :goto_1e

    :cond_33
    const/16 v18, 0xe

    const/16 v10, 0xe

    :goto_1f
    const/16 v2, 0x12

    if-ge v10, v2, :cond_45

    .line 319
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v10, 0x1

    add-int/lit8 v17, v10, 0x5

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

    .line 320
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v10, v16

    goto :goto_1f

    :cond_34
    if-ne v1, v6, :cond_36

    const/4 v3, 0x0

    :goto_20
    const/4 v11, 0x4

    if-ge v3, v11, :cond_35

    .line 324
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v3, 0x5

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    const/16 v18, 0x4

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 325
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    goto :goto_20

    :cond_35
    const/16 v2, 0xa

    const/16 v8, 0x8

    :goto_21
    if-ge v8, v2, :cond_45

    .line 328
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v8, 0x1

    add-int/lit8 v17, v8, 0x3

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

    .line 329
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v8, v16

    const/16 v2, 0xa

    goto :goto_21

    :cond_36
    const/4 v3, 0x0

    .line 332
    :goto_22
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_37

    .line 333
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    goto :goto_22

    .line 335
    :cond_37
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_45

    const/4 v3, 0x0

    .line 336
    :goto_23
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_45

    .line 337
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v16, v3

    move-object/from16 v3, p2

    move/from16 v5, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    goto :goto_23

    .line 341
    :cond_38
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v3, v4, :cond_45

    const/4 v3, 0x0

    .line 343
    :goto_24
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 344
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 347
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-le v5, v6, :cond_39

    .line 348
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 349
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_25

    .line 350
    :cond_39
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-ge v5, v6, :cond_3a

    .line 351
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 352
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_25

    .line 353
    :cond_3a
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 354
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 355
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_25

    .line 356
    :cond_3b
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 357
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 358
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_25

    :cond_3c
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 360
    :goto_25
    invoke-interface {v12, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 363
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v1, v6, :cond_3d

    .line 364
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v7

    add-int/lit8 v7, v7, 0x3c

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 365
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v6

    add-int/lit8 v6, v6, 0x3c

    invoke-virtual {v4, v6}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    :cond_3d
    if-nez v1, :cond_3e

    .line 369
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v13, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_26

    :cond_3e
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3f

    .line 371
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v13, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3f
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_24

    :cond_40
    if-nez v1, :cond_41

    const/4 v2, 0x2

    .line 375
    invoke-virtual {v0, v12, v13, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    .line 377
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    goto/16 :goto_2b

    :cond_41
    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    const/16 v2, 0x1a

    .line 380
    invoke-virtual {v0, v12, v13, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->organizeTeams(Ljava/util/List;II)V

    const/4 v3, 0x0

    .line 382
    :goto_27
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_42

    .line 383
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    goto :goto_27

    .line 385
    :cond_42
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_45

    const/4 v3, 0x0

    .line 386
    :goto_28
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_45

    .line 387
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v16, v3

    move-object/from16 v3, p2

    move/from16 v5, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    goto :goto_28

    :cond_43
    add-int/lit8 v11, v1, 0x1

    .line 392
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_45

    .line 394
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v13, v2, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 395
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    const/4 v3, 0x0

    .line 397
    :goto_29
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_44

    .line 398
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    move v13, v11

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v11, v13

    move/from16 v3, v16

    const/4 v13, 0x0

    goto :goto_29

    :cond_44
    move v13, v11

    .line 400
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_45

    const/4 v3, 0x0

    .line 401
    :goto_2a
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_45

    .line 402
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v13, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v13, v3

    move-object v3, v12

    move v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v3, v13

    goto :goto_2a

    :cond_45
    :goto_2b
    const-wide/16 v2, 0x7d0

    const-string v4, "continentalFederationPrizes"

    const/16 v5, 0x8

    if-ne v1, v5, :cond_48

    const/4 v5, 0x0

    .line 411
    :goto_2c
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 412
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 413
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-eq v7, v14, :cond_46

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v14, :cond_47

    .line 414
    :cond_46
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_48
    const/16 v5, 0x9

    if-ne v1, v5, :cond_4a

    .line 420
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v6, v14, :cond_49

    .line 422
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x2ee0

    invoke-direct {v6, v7, v8, v9, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_2d

    :cond_4a
    const/16 v5, 0xa

    if-lt v1, v5, :cond_50

    const/16 v5, 0xf

    if-gt v1, v5, :cond_51

    const/4 v5, 0x0

    .line 427
    :goto_2e
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_50

    .line 428
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 429
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4f

    .line 430
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v7, v14, :cond_4b

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    if-gt v7, v8, :cond_4c

    :cond_4b
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v7, v14, :cond_4d

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v8

    if-le v7, v8, :cond_4d

    .line 431
    :cond_4c
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x5dc

    invoke-direct {v6, v7, v8, v9, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_2f

    .line 432
    :cond_4d
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-eq v7, v14, :cond_4e

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v7, v14, :cond_4f

    :cond_4e
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-ne v7, v6, :cond_4f

    .line 433
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x2ee

    invoke-direct {v6, v7, v8, v9, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_4f
    :goto_2f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2e

    :cond_50
    const/16 v5, 0xf

    :cond_51
    if-ne v1, v5, :cond_53

    .line 439
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_52
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v6, v14, :cond_52

    .line 441
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-direct {v6, v7, v8, v9, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_30

    :cond_53
    const/16 v5, 0x11

    if-ne v1, v5, :cond_55

    .line 446
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_54
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v6, v14, :cond_54

    .line 448
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_31

    :cond_55
    const/16 v5, 0x13

    if-ne v1, v5, :cond_57

    .line 453
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_56
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v6, v14, :cond_56

    .line 455
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_32

    :cond_57
    const/16 v2, 0x15

    if-ne v1, v2, :cond_59

    .line 460
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_58
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v14, :cond_58

    .line 462
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0xfa0

    invoke-direct {v3, v5, v6, v7, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_33

    :cond_59
    const/16 v2, 0x16

    if-ne v1, v2, :cond_5b

    .line 467
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5a
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v2, v14, :cond_5a

    .line 469
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x1f40

    invoke-direct {v2, v3, v5, v6, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_34

    :cond_5b
    return-void
.end method
