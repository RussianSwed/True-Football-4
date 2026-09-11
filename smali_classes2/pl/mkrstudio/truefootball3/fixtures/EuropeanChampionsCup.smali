.class public Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "EuropeanChampionsCup.java"

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

    .line 31
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    .line 33
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 34
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 37
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v3, p1, v4, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 38
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3, p1, v0, v4, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    move v0, v4

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    const/16 v0, 0xa

    .line 41
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 44
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, p1, v4, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 45
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v1, p1, v0, v4, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    move v0, v4

    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 48
    invoke-virtual {p0, p1, p3, v1}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    .line 50
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v4, 0x3

    invoke-virtual {v0, p1, v2, v4, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 51
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p3, p1, v3, v1, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 54
    :cond_2
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    .line 402
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
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

    .line 408
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

    .line 410
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

    .line 413
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

    .line 415
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

    .line 418
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
    .locals 22
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

    const/4 v15, 0x7

    const-string v4, "EUR_EC"

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v1, v15, :cond_13

    const/4 v8, 0x0

    .line 78
    :goto_0
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 79
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v10, v1, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 80
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 82
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v20

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v21

    add-int v11, v20, v21

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v20

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v21

    add-int v15, v20, v21

    if-le v11, v15, :cond_0

    .line 83
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v11

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    add-int/2addr v11, v15

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v20

    add-int v15, v15, v20

    if-ge v11, v15, :cond_1

    .line 85
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v11

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-le v11, v15, :cond_2

    .line 87
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v11

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-ge v11, v15, :cond_3

    .line 89
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 91
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 93
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    .line 95
    :goto_1
    invoke-interface {v12, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v15, 0x7

    goto/16 :goto_0

    .line 106
    :cond_6
    new-instance v8, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup$1;

    invoke-direct {v8, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup$1;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;)V

    invoke-static {v12, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    :cond_7
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_d

    .line 120
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v8

    .line 121
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v9

    const-string v10, "ENG"

    invoke-virtual {v9, v10}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllFirstDivisionTeams()Ljava/util/List;

    move-result-object v9

    .line 122
    new-instance v10, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup$2;

    invoke-direct {v10, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup$2;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 136
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v15, 0x0

    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 137
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    .line 139
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 140
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v15, 0x1

    goto :goto_4

    :cond_c
    if-nez v15, :cond_8

    .line 143
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x0

    :cond_e
    add-int/2addr v4, v2

    .line 152
    invoke-static {v3, v6, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x10

    .line 153
    invoke-static {v6, v7, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    const/16 v8, 0x18

    .line 154
    invoke-static {v7, v8, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 155
    invoke-static {v8, v9, v5}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 156
    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->areGroupsReady(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_f

    const/16 v5, 0x64

    if-lt v4, v5, :cond_e

    .line 158
    :cond_f
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 159
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x4

    div-int/2addr v4, v7

    if-ge v2, v4, :cond_10

    .line 160
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v7

    add-int/2addr v4, v2

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v7

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v7

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v2

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v6, :cond_11

    .line 168
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    mul-int/lit8 v16, v12, 0x4

    add-int/lit8 v17, v16, 0x1

    add-int/lit8 v20, v16, 0x2

    const/4 v11, 0x0

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v20

    const/16 v10, 0x8

    move-object/from16 v6, p3

    const/4 v9, 0x4

    move-object/from16 v7, p4

    const/16 v14, 0xd

    move-object/from16 v8, p5

    const/4 v14, 0x4

    move-object/from16 v9, p6

    const/16 v14, 0x8

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 169
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v19, v16, 0x3

    const/4 v3, 0x4

    add-int/lit8 v16, v16, 0x4

    move-object v3, v15

    move/from16 v4, v19

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 171
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v11, 0x9

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v17

    const/16 v14, 0x9

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 172
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 174
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 175
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v20

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 177
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v14, 0xb

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 178
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 180
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 181
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v20

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 183
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v19

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 184
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v20

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, p9

    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x4

    goto/16 :goto_6

    :cond_11
    move-object v12, v15

    :cond_12
    const/16 v14, 0xf

    goto/16 :goto_1a

    :cond_13
    const/16 v14, 0xd

    if-ne v1, v14, :cond_19

    const/16 v2, 0x8

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_18

    const/4 v5, 0x4

    .line 191
    invoke-static {v0, v2, v14, v3, v5}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v6

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x2

    :goto_8
    if-ge v7, v5, :cond_16

    .line 194
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 195
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 196
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 197
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x2

    if-ne v7, v11, :cond_14

    .line 199
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    const/4 v15, 0x0

    invoke-interface {v11, v15, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    :cond_14
    const/4 v15, 0x0

    goto :goto_9

    :cond_15
    const/4 v15, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_16
    const/4 v15, 0x0

    .line 204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 205
    invoke-interface {v12, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v15, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_a

    :cond_17
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    goto :goto_7

    :cond_18
    const/4 v15, 0x0

    .line 210
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_12

    .line 215
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v4, 0xe

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v3, 0x9

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

    .line 216
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    const/16 v11, 0xf

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v16

    const/16 v14, 0xf

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    const/16 v2, 0x8

    const/16 v14, 0xd

    goto :goto_b

    :cond_19
    const/16 v14, 0xf

    const/4 v15, 0x0

    .line 221
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_31

    .line 223
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v3, v5, :cond_2a

    const/4 v3, 0x0

    .line 224
    :goto_c
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v11, 0x5

    if-ge v3, v5, :cond_21

    .line 225
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 226
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 228
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    add-int/2addr v8, v9

    if-le v7, v8, :cond_1a

    .line 229
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_d

    .line 230
    :cond_1a
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_1b

    .line 231
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_d

    .line 232
    :cond_1b
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    if-le v7, v8, :cond_1c

    .line 233
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_d

    .line 234
    :cond_1c
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 235
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_d

    .line 236
    :cond_1d
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 237
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_d

    .line 238
    :cond_1e
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 239
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_d

    :cond_1f
    const/4 v5, 0x0

    .line 242
    :goto_d
    invoke-interface {v12, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-ne v1, v11, :cond_20

    .line 246
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_21
    if-ne v1, v2, :cond_22

    const/16 v2, 0x22

    .line 250
    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    const/4 v2, 0x3

    const/16 v9, 0xa

    const/16 v10, 0x14

    goto :goto_f

    :cond_22
    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    const/16 v10, 0x14

    .line 254
    invoke-virtual {v0, v12, v15, v10}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    const/16 v2, 0x1e

    .line 255
    invoke-virtual {v0, v12, v10, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    const/4 v2, 0x3

    const/16 v9, 0xa

    goto :goto_f

    :cond_23
    const/16 v10, 0x14

    if-ne v1, v11, :cond_24

    const/16 v9, 0xa

    .line 259
    invoke-virtual {v0, v12, v15, v9}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    .line 260
    invoke-virtual {v0, v12, v9, v10}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    goto :goto_e

    :cond_24
    const/16 v9, 0xa

    .line 264
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->organizeTeams(Ljava/util/List;II)V

    :goto_e
    const/4 v2, 0x3

    :goto_f
    if-ne v1, v2, :cond_26

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v9, :cond_25

    .line 269
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    move-object/from16 v8, p5

    const/16 v18, 0xa

    move-object/from16 v9, p6

    const/16 v11, 0x14

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 270
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    const/16 v9, 0xa

    const/16 v10, 0x14

    goto :goto_10

    :cond_25
    const/16 v10, 0x14

    :goto_11
    const/16 v2, 0x19

    if-ge v10, v2, :cond_31

    .line 273
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v10, 0x1

    add-int/lit8 v17, v10, 0x6

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

    .line 274
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v10, v16

    goto :goto_11

    :cond_26
    const/16 v18, 0xa

    if-ne v1, v11, :cond_28

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v11, :cond_27

    .line 279
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v3, 0x6

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    const/16 v19, 0x5

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 280
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v3, v16

    const/4 v11, 0x5

    goto :goto_12

    :cond_27
    const/16 v9, 0xa

    :goto_13
    if-ge v9, v14, :cond_31

    .line 283
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v9, 0x1

    add-int/lit8 v17, v9, 0x6

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

    .line 284
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v9, v16

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    .line 287
    :goto_14
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    if-ge v3, v2, :cond_29

    .line 288
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    goto :goto_14

    .line 290
    :cond_29
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_31

    const/4 v3, 0x0

    .line 291
    :goto_15
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    if-ge v3, v2, :cond_31

    .line 292
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    goto :goto_15

    .line 296
    :cond_2a
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v3, v4, :cond_31

    const/4 v3, 0x0

    .line 298
    :goto_16
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 299
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 302
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-le v5, v6, :cond_2b

    .line 303
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 304
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_17

    .line 305
    :cond_2b
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-ge v5, v6, :cond_2c

    .line 306
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 307
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_17

    .line 308
    :cond_2c
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 309
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 310
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_17

    .line 311
    :cond_2d
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 312
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 313
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_17

    :cond_2e
    const/4 v5, 0x0

    .line 315
    :goto_17
    invoke-interface {v12, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v15, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2f
    add-int/lit8 v11, v1, 0x1

    .line 318
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_31

    .line 320
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v15, v3, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 321
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2, v3}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    const/4 v3, 0x0

    .line 323
    :goto_18
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_30

    .line 324
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    move v15, v11

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v11, v15

    move/from16 v3, v16

    const/4 v15, 0x0

    goto :goto_18

    :cond_30
    move v15, v11

    .line 326
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_31

    const/4 v3, 0x0

    .line 327
    :goto_19
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

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

    if-ge v3, v2, :cond_31

    .line 328
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v15, v3, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, v15, v3

    move-object v3, v12

    move v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v3, v15

    goto :goto_19

    :cond_31
    :goto_1a
    const/4 v2, 0x6

    const-string v3, "continentalFederationPrizes"

    if-ne v1, v2, :cond_34

    const/4 v2, 0x0

    .line 337
    :goto_1b
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_34

    .line 338
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 339
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    if-eq v5, v13, :cond_33

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, v13, :cond_32

    goto :goto_1c

    :cond_32
    move-object/from16 v5, p9

    const/16 v6, 0xd

    goto :goto_1d

    .line 340
    :cond_33
    :goto_1c
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-direct {v4, v5, v6, v7, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v5, p9

    const/16 v6, 0xd

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_34
    move-object/from16 v5, p9

    const/16 v6, 0xd

    const/4 v2, 0x7

    if-ne v1, v2, :cond_36

    .line 346
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_35

    .line 348
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x2134

    invoke-direct {v4, v7, v8, v9, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1e

    :cond_36
    const-wide/16 v7, 0x1f4

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3c

    if-gt v1, v6, :cond_3c

    const/4 v2, 0x0

    .line 353
    :goto_1f
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3c

    .line 354
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 355
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3b

    .line 356
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-ne v9, v13, :cond_37

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    if-gt v9, v10, :cond_38

    :cond_37
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-ne v9, v13, :cond_39

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v9

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v10

    if-le v9, v10, :cond_39

    .line 357
    :cond_38
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-direct {v4, v9, v10, v11, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_20

    .line 358
    :cond_39
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-eq v9, v13, :cond_3a

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-ne v9, v13, :cond_3b

    :cond_3a
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-ne v9, v4, :cond_3b

    .line 359
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9, v7, v8, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_3b
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_3c
    if-ne v1, v6, :cond_3e

    .line 365
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_3d

    .line 367
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v9, 0xdac

    invoke-direct {v4, v6, v9, v10, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_21

    :cond_3e
    if-ne v1, v14, :cond_40

    .line 372
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_3f

    .line 374
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v7, v8, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_22

    :cond_40
    const/16 v2, 0x11

    if-ne v1, v2, :cond_42

    .line 379
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_41

    .line 381
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-direct {v4, v6, v7, v8, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_23

    :cond_42
    const/16 v2, 0x13

    if-ne v1, v2, :cond_44

    .line 386
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v13, :cond_43

    .line 388
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x5dc

    invoke-direct {v4, v6, v7, v8, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_24

    :cond_44
    const/16 v2, 0x14

    if-ne v1, v2, :cond_46

    .line 393
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_45
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v2, v13, :cond_45

    .line 395
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0xfa0

    invoke-direct {v2, v4, v6, v7, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_25

    :cond_46
    return-void
.end method
