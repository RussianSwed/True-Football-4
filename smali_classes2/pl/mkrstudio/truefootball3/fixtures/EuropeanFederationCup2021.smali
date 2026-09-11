.class public Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "EuropeanFederationCup2021.java"

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

    .line 33
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    const/16 v0, 0xa

    .line 37
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v1, 0x10

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 40
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, p1, v3, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 41
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v1, p1, v0, v3, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 44
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v3, v0, 0xb

    add-int/lit8 v4, v0, 0xe

    invoke-virtual {v1, p1, v3, v4, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 45
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v1, p1, v4, v3, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_1
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

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

    .line 466
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 468
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
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

    .line 471
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

    .line 473
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

    .line 475
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

    .line 477
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

    .line 479
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
    .locals 23
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

    const/4 v10, 0x3

    const-string v4, "EUR_FC"

    const/4 v15, 0x0

    if-ne v1, v10, :cond_1a

    const/4 v3, 0x0

    .line 73
    :goto_0
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 74
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v11, v1, -0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 75
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 77
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v19

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v20

    add-int v10, v19, v20

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v19

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v20

    add-int v8, v19, v20

    if-le v10, v8, :cond_0

    .line 78
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v8

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v19

    add-int v10, v10, v19

    if-ge v8, v10, :cond_1

    .line 80
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    if-le v8, v10, :cond_2

    .line 82
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    if-ge v8, v10, :cond_3

    .line 84
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 88
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 90
    :goto_1
    invoke-interface {v12, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v15, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v15, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x3

    goto/16 :goto_0

    .line 99
    :cond_6
    new-instance v3, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021$1;

    invoke-direct {v3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021$1;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;)V

    invoke-static {v12, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v8, 0x20

    if-eq v3, v8, :cond_12

    .line 112
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    move-object/from16 v11, p3

    invoke-static {v11, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousChampionsCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 114
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v8, :cond_10

    if-eqz v3, :cond_7

    .line 118
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    goto :goto_3

    :cond_7
    const/16 v9, 0x1d

    .line 120
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    .line 123
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    .line 124
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    const-string v2, "EUR_CC"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllFirstDivisionTeams()Ljava/util/List;

    move-result-object v6

    .line 126
    new-instance v9, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021$2;

    invoke-direct {v9, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021$2;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;)V

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 140
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v21, 0x0

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 141
    invoke-virtual/range {v22 .. v22}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v21, 0x1

    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    .line 143
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 144
    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v21, 0x1

    goto :goto_6

    .line 146
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 147
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v21, 0x1

    goto :goto_7

    :cond_d
    if-nez v21, :cond_e

    .line 150
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    goto :goto_4

    :cond_f
    :goto_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 156
    :cond_10
    :goto_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_13

    .line 157
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 158
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 159
    :goto_a
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

    if-eqz v4, :cond_11

    .line 160
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_a

    .line 162
    :cond_11
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    move-object/from16 v11, p3

    :cond_13
    const/4 v2, 0x0

    :cond_14
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 169
    invoke-static {v4, v3, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 v4, 0x10

    .line 170
    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 v3, 0x18

    .line 171
    invoke-static {v4, v3, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 172
    invoke-static {v3, v8, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 174
    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->areGroupsReady(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_15

    const/16 v3, 0x64

    if-lt v2, v3, :cond_14

    .line 177
    :cond_15
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 178
    :goto_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    if-ge v2, v3, :cond_16

    .line 179
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v4

    const/4 v8, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v4

    const/4 v10, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    const/4 v8, 0x2

    const/4 v10, 0x3

    const/16 v7, 0x8

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v7, :cond_17

    .line 189
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/4 v6, 0x4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    mul-int/lit8 v17, v12, 0x4

    add-int/lit8 v19, v17, 0x1

    add-int/lit8 v20, v17, 0x2

    move-object v3, v15

    move/from16 v4, v19

    move/from16 v5, v20

    const/4 v9, 0x4

    move-object/from16 v6, p3

    const/16 v14, 0x8

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    const/4 v14, 0x4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 190
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v18, v17, 0x3

    add-int/lit8 v17, v17, 0x4

    move/from16 v4, v18

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 192
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 193
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v18

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 195
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/4 v11, 0x6

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v19

    move/from16 v5, v18

    const/4 v14, 0x6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 196
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v20

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 198
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/4 v14, 0x7

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 199
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 201
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v19

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 202
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 204
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/16 v14, 0x9

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 205
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, p3

    move-object/from16 v14, p9

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v10, 0x3

    goto/16 :goto_c

    :cond_17
    move-object v12, v15

    :cond_18
    const/16 v15, 0xb

    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_20

    :cond_1a
    const/16 v14, 0x9

    if-ne v1, v14, :cond_25

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x8

    :goto_d
    if-ge v5, v6, :cond_22

    const/4 v6, 0x4

    .line 214
    invoke-static {v0, v6, v14, v5, v6}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v7

    .line 215
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 218
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 219
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1c
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 222
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    const/4 v8, 0x2

    const/4 v9, 0x4

    :goto_f
    if-ge v8, v9, :cond_20

    .line 227
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 228
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 229
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 230
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x2

    if-ne v8, v14, :cond_1e

    .line 232
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v15

    const/4 v14, 0x0

    invoke-interface {v15, v14, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1e
    const/16 v14, 0x9

    goto :goto_10

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x4

    const/16 v14, 0x9

    goto :goto_f

    .line 237
    :cond_20
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 238
    invoke-interface {v12, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_11

    :cond_21
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    const/16 v14, 0x9

    goto/16 :goto_d

    .line 243
    :cond_22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 244
    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 248
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 249
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_24
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 253
    invoke-virtual {v0, v12, v4, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x10

    .line 254
    invoke-virtual {v0, v12, v3, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v3, :cond_18

    .line 257
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v2, 0x1

    add-int/lit8 v15, v2, 0x9

    move-object v2, v3

    move-object/from16 v3, p2

    move v4, v14

    move v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 258
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    const/16 v11, 0xb

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move v4, v15

    move v5, v14

    const/16 v15, 0xb

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v2, v14

    const/16 v3, 0x8

    goto :goto_14

    :cond_25
    const/16 v15, 0xb

    .line 263
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_19

    .line 264
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_31

    const/4 v2, 0x0

    .line 265
    :goto_15
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 266
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 267
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 269
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v8

    add-int/2addr v7, v8

    if-le v6, v7, :cond_26

    .line 270
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_16

    .line 271
    :cond_26
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v8

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_27

    .line 272
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_16

    .line 273
    :cond_27
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 274
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_16

    .line 275
    :cond_28
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 276
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_16

    :cond_29
    const/4 v3, 0x0

    .line 278
    :goto_16
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 279
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2b

    const/4 v5, 0x5

    if-ge v2, v5, :cond_2a

    .line 282
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_17

    .line 283
    :cond_2a
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    const/16 v7, 0xa

    invoke-interface {v6, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_17

    :cond_2b
    const/4 v5, 0x5

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    :cond_2c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 288
    invoke-virtual {v0, v12, v4, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    goto :goto_18

    :cond_2d
    const/4 v4, 0x0

    if-ne v1, v15, :cond_2e

    const/16 v3, 0x8

    .line 291
    invoke-virtual {v0, v12, v4, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    const/16 v5, 0x10

    .line 292
    invoke-virtual {v0, v12, v3, v5}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    goto :goto_18

    .line 294
    :cond_2e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v12, v4, v3}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->organizeTeams(Ljava/util/List;II)V

    :goto_18
    if-ne v1, v2, :cond_2f

    const/4 v2, 0x0

    const/16 v14, 0xa

    :goto_19
    if-ge v2, v14, :cond_19

    .line 300
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v2, 0x1

    add-int/lit8 v17, v2, 0xb

    move-object v2, v3

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

    .line 301
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v2, v16

    goto :goto_19

    :cond_2f
    const/4 v2, 0x0

    .line 304
    :goto_1a
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 305
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v2, 0x1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v5, v14, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move v4, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v2, v14

    goto :goto_1a

    .line 307
    :cond_30
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_19

    const/4 v2, 0x0

    .line 308
    :goto_1b
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 309
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v2, 0x1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v4, v14, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move v5, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v2, v14

    goto :goto_1b

    .line 314
    :cond_31
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_19

    const/4 v4, 0x0

    .line 316
    :goto_1c
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_37

    .line 317
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 320
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    if-le v3, v5, :cond_32

    .line 321
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 322
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_1d

    .line 323
    :cond_32
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    if-ge v3, v5, :cond_33

    .line 324
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 325
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_1d

    .line 326
    :cond_33
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 327
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 328
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_1d

    .line 329
    :cond_34
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 330
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 331
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_1d

    :cond_35
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 333
    :goto_1d
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 334
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 336
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-ne v1, v3, :cond_36

    .line 337
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {v3, v5}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 338
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1c

    :cond_37
    add-int/lit8 v14, v1, 0x1

    .line 341
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_19

    .line 343
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x0

    invoke-static {v11, v2, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 344
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    const/4 v4, 0x0

    .line 346
    :goto_1e
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_38

    .line 347
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v4, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    const/16 v17, 0x0

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    const/4 v11, 0x0

    goto :goto_1e

    :cond_38
    const/16 v17, 0x0

    .line 349
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_39

    const/4 v4, 0x0

    .line 350
    :goto_1f
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

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

    if-ge v4, v2, :cond_39

    .line 351
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v4, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

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

    move v4, v14

    goto :goto_1f

    :cond_39
    :goto_20
    const-string v2, "continentalFederationPrizes"

    if-nez v1, :cond_3c

    const/4 v4, 0x0

    .line 360
    :goto_21
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3c

    .line 361
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 362
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    if-eq v5, v13, :cond_3b

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, v13, :cond_3a

    goto :goto_22

    :cond_3a
    move-object/from16 v5, p9

    goto :goto_23

    .line 363
    :cond_3b
    :goto_22
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 364
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-direct {v3, v5, v6, v7, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v5, p9

    .line 363
    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3c
    move-object/from16 v5, p9

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3f

    const/4 v4, 0x0

    .line 372
    :goto_24
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3f

    .line 373
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 374
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-eq v6, v13, :cond_3d

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, v13, :cond_3e

    .line 375
    :cond_3d
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 376
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-direct {v3, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 375
    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_3f
    const/4 v3, 0x3

    if-ne v1, v3, :cond_41

    .line 384
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_40

    .line 386
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 387
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-direct {v4, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 386
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_25

    :cond_41
    const/4 v3, 0x4

    if-lt v1, v3, :cond_47

    const/16 v3, 0x9

    if-gt v1, v3, :cond_48

    const/4 v3, 0x0

    .line 394
    :goto_26
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 395
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 396
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_46

    .line 397
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v13, :cond_42

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    if-gt v6, v7, :cond_43

    .line 398
    :cond_42
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v13, :cond_44

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    if-le v6, v7, :cond_44

    .line 399
    :cond_43
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 400
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-direct {v4, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 399
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_27

    .line 403
    :cond_44
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-eq v6, v13, :cond_45

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v13, :cond_46

    .line 404
    :cond_45
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-ne v6, v4, :cond_46

    .line 405
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 406
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0xfa

    invoke-direct {v4, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 405
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_46
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    :cond_47
    const/16 v3, 0x9

    :cond_48
    if-ne v1, v3, :cond_4a

    .line 414
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_49

    .line 416
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 417
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x258

    invoke-direct {v4, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 416
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_28

    :cond_4a
    if-ne v1, v15, :cond_4c

    .line 424
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_4b

    .line 426
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 427
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x190

    invoke-direct {v4, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 426
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_29

    :cond_4c
    const/16 v3, 0xd

    if-ne v1, v3, :cond_4e

    .line 434
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_4d

    .line 436
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 437
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x2ee

    invoke-direct {v4, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 436
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_2a

    :cond_4e
    const/16 v3, 0xf

    if-ne v1, v3, :cond_50

    .line 444
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4f
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_4f

    .line 446
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 447
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-direct {v4, v6, v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 446
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_2b

    :cond_50
    const/16 v3, 0x11

    if-ne v1, v3, :cond_52

    .line 454
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_51
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_51

    .line 456
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 457
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0xfa0

    invoke-direct {v3, v4, v6, v7, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 456
    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_2c

    :cond_52
    return-void
.end method
