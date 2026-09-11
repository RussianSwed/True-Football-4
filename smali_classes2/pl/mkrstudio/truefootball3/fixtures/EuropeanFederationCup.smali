.class public Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "EuropeanFederationCup.java"

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

    .line 30
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    .line 34
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x33

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x66

    .line 35
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->organizeTeams(Ljava/util/List;II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 37
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v0, 0x34

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

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    const/16 v0, 0x64

    .line 41
    invoke-virtual {p0, p1, p3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->organizeTeams(Ljava/util/List;II)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 43
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v0, 0x33

    invoke-virtual {v3, p1, v4, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 44
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3, p1, v0, v4, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    move v0, v4

    goto :goto_1

    .line 47
    :cond_1
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

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

    .line 433
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
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

    .line 438
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

    .line 440
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

    .line 442
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

    .line 444
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

    .line 446
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
    .locals 20
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

    const/4 v11, 0x7

    const/16 v9, 0xc

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v11, :cond_13

    const/4 v3, 0x0

    .line 73
    :goto_0
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 74
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    add-int/lit8 v11, v1, -0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 75
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 77
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v18

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v19

    add-int v15, v18, v19

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v18

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v19

    add-int v10, v18, v19

    if-le v15, v10, :cond_0

    .line 78
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v10

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    add-int/2addr v10, v15

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v18

    add-int v15, v15, v18

    if-ge v10, v15, :cond_1

    .line 80
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-le v10, v15, :cond_2

    .line 82
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v15

    if-ge v10, v15, :cond_3

    .line 84
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

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
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x7

    goto/16 :goto_0

    .line 97
    :cond_6
    new-instance v3, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup$1;

    invoke-direct {v3, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup$1;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;)V

    invoke-static {v12, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    :cond_7
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v8, 0x30

    if-ge v3, v8, :cond_d

    .line 109
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v8, "EUR_CC"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    .line 110
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v8

    const-string v10, "ESP"

    invoke-virtual {v8, v10}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllFirstDivisionTeams()Ljava/util/List;

    move-result-object v8

    .line 111
    new-instance v10, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup$2;

    invoke-direct {v10, v0}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup$2;-><init>(Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;)V

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 125
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v15, 0x0

    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 126
    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    .line 128
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 129
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

    .line 132
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    :cond_e
    add-int/2addr v2, v4

    .line 141
    invoke-static {v5, v9, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v3

    const/16 v7, 0x18

    .line 142
    invoke-static {v9, v7, v3}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v3

    const/16 v10, 0x24

    .line 143
    invoke-static {v7, v10, v3}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 144
    invoke-static {v10, v8, v3}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 146
    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->areGroupsReady(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v3, 0x64

    if-lt v2, v3, :cond_e

    .line 149
    :cond_f
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 150
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    if-ge v2, v3, :cond_10

    .line 151
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    const/4 v7, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v6

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/4 v7, 0x2

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v9, :cond_11

    .line 161
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v10, 0x8

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    mul-int/lit8 v16, v12, 0x4

    add-int/lit8 v18, v16, 0x1

    add-int/lit8 v19, v16, 0x2

    move-object v3, v15

    move/from16 v4, v18

    const/4 v11, 0x0

    move/from16 v5, v19

    const/4 v8, 0x4

    move-object/from16 v6, p3

    const/4 v14, 0x2

    move-object/from16 v7, p4

    const/4 v14, 0x4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    const/16 v14, 0x8

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 162
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v17, v16, 0x3

    const/4 v3, 0x4

    add-int/lit8 v16, v16, 0x4

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 164
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v11, 0x9

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v18

    const/16 v14, 0x9

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 165
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v17

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 167
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v14, 0xa

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v18

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 168
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v19

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 170
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v14, 0xb

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 171
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 173
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v14, 0xc

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v18

    move/from16 v5, v16

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 174
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move/from16 v4, v19

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 176
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 177
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v19

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, p9

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v9, 0xc

    goto/16 :goto_6

    :cond_11
    move-object v12, v15

    const/4 v15, 0x0

    :cond_12
    const/16 v16, 0x2

    goto/16 :goto_15

    :cond_13
    const/16 v2, 0xd

    const/16 v14, 0xc

    if-ne v1, v2, :cond_19

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v14, :cond_18

    const/16 v3, 0x8

    const/4 v4, 0x4

    .line 184
    invoke-static {v0, v3, v2, v5, v4}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v6

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x2

    :goto_8
    if-ge v7, v4, :cond_16

    .line 187
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 188
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 189
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x4

    goto :goto_8

    .line 192
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 193
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v4

    const/4 v15, 0x0

    invoke-interface {v4, v15, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_a

    :cond_17
    const/4 v15, 0x0

    add-int/lit8 v5, v5, 0x1

    const/16 v2, 0xd

    goto :goto_7

    :cond_18
    const/4 v15, 0x0

    .line 198
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->organizeTeams(Ljava/util/List;II)V

    const/4 v5, 0x0

    :goto_b
    const/16 v2, 0x10

    if-ge v5, v2, :cond_12

    .line 202
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v3, 0xe

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v16, v5, 0x11

    move-object/from16 v3, p2

    move v4, v14

    move/from16 v5, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 203
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    const/16 v3, 0xf

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object/from16 v3, p2

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    goto :goto_b

    :cond_19
    const/4 v15, 0x0

    .line 208
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_12

    .line 209
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_25

    const/4 v5, 0x0

    .line 210
    :goto_c
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_20

    .line 211
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 212
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 214
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v8

    add-int/2addr v7, v8

    if-le v6, v7, :cond_1a

    .line 215
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_d

    .line 216
    :cond_1a
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v8

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_1b

    .line 217
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_d

    .line 218
    :cond_1b
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    if-le v6, v7, :cond_1c

    .line 219
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_d

    .line 220
    :cond_1c
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    if-ge v6, v7, :cond_1d

    .line 221
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_d

    .line 222
    :cond_1d
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 223
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_d

    .line 224
    :cond_1e
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 225
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_d

    :cond_1f
    const/4 v2, 0x0

    .line 227
    :goto_d
    invoke-interface {v12, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c

    :cond_20
    if-ne v1, v4, :cond_21

    const/16 v2, 0x42

    .line 231
    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->organizeTeams(Ljava/util/List;II)V

    goto :goto_e

    :cond_21
    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    const/16 v2, 0x3a

    .line 234
    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->organizeTeams(Ljava/util/List;II)V

    goto :goto_e

    :cond_22
    const/4 v2, 0x5

    if-ne v1, v2, :cond_23

    const/16 v2, 0x2c

    .line 237
    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->organizeTeams(Ljava/util/List;II)V

    goto :goto_e

    .line 240
    :cond_23
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v12, v15, v2}, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->organizeTeams(Ljava/util/List;II)V

    :goto_e
    const/4 v5, 0x0

    .line 244
    :goto_f
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

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

    if-ge v5, v2, :cond_24

    .line 245
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v5, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, v14, v3

    move-object/from16 v3, p2

    move v4, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move v5, v14

    goto :goto_f

    .line 247
    :cond_24
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_12

    const/4 v5, 0x0

    .line 248
    :goto_10
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

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

    if-ge v5, v2, :cond_12

    .line 249
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v5, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

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

    goto :goto_10

    .line 252
    :cond_25
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_12

    const/4 v5, 0x0

    .line 254
    :goto_11
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2a

    .line 255
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 258
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-le v3, v6, :cond_26

    .line 259
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 260
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_12

    .line 261
    :cond_26
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-ge v3, v6, :cond_27

    .line 262
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 263
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_12

    .line 264
    :cond_27
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 265
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 266
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_12

    .line 267
    :cond_28
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 268
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 269
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_12

    :cond_29
    const/4 v3, 0x0

    .line 271
    :goto_12
    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 272
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_2a
    add-int/lit8 v14, v1, 0x1

    .line 274
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_12

    .line 276
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v15, v2, v12}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 277
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v16, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4, v2}, Lpl/mkrstudio/truefootball3/helpers/CollectionsHelper;->shuffle(IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    const/4 v5, 0x0

    .line 279
    :goto_13
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2b

    .line 280
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v17, v5, 0x1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, v17, v3

    move-object v3, v12

    move/from16 v4, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    move/from16 v5, v17

    goto :goto_13

    .line 282
    :cond_2b
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_FIRST_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v2, v3, :cond_2c

    const/4 v5, 0x0

    .line 283
    :goto_14
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

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

    if-ge v5, v2, :cond_2c

    .line 284
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    add-int/lit8 v14, v5, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

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

    goto :goto_14

    :cond_2c
    :goto_15
    const-wide/16 v2, 0x64

    const-string v4, "continentalFederationPrizes"

    if-nez v1, :cond_2f

    const/4 v5, 0x0

    .line 293
    :goto_16
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2f

    .line 294
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 295
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-eq v7, v13, :cond_2e

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v13, :cond_2d

    goto :goto_17

    :cond_2d
    move-object/from16 v7, p9

    const/4 v8, 0x2

    goto :goto_18

    .line 296
    :cond_2e
    :goto_17
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 297
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v7, p9

    const/4 v8, 0x2

    .line 296
    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :goto_18
    add-int/lit8 v5, v5, 0x1

    const/16 v16, 0x2

    goto :goto_16

    :cond_2f
    move-object/from16 v7, p9

    const/4 v8, 0x2

    if-ne v1, v8, :cond_32

    const/4 v5, 0x0

    .line 305
    :goto_19
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_32

    .line 306
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 307
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    if-eq v8, v13, :cond_30

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v13, :cond_31

    .line 308
    :cond_30
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 309
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 308
    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_32
    const/4 v5, 0x4

    if-ne v1, v5, :cond_35

    const/4 v5, 0x0

    .line 317
    :goto_1a
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_35

    .line 318
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 319
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    if-eq v8, v13, :cond_33

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v13, :cond_34

    .line 320
    :cond_33
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 321
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 320
    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_35
    const/4 v5, 0x6

    if-ne v1, v5, :cond_38

    const/4 v5, 0x0

    .line 329
    :goto_1b
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    .line 330
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 331
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    if-eq v8, v13, :cond_36

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v13, :cond_37

    .line 332
    :cond_36
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 333
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 332
    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_38
    const/4 v5, 0x7

    if-ne v1, v5, :cond_3a

    .line 341
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v6, v13, :cond_39

    .line 343
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 344
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x514

    invoke-direct {v6, v8, v9, v10, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 343
    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1c

    :cond_3a
    const-wide/16 v5, 0xc8

    const/16 v8, 0x8

    if-lt v1, v8, :cond_40

    const/16 v8, 0xd

    if-gt v1, v8, :cond_40

    .line 351
    :goto_1d
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v15, v8, :cond_40

    .line 352
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup;->weeks:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 353
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3f

    .line 354
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-ne v9, v13, :cond_3b

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    if-gt v9, v10, :cond_3c

    .line 355
    :cond_3b
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-ne v9, v13, :cond_3d

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v10

    if-le v9, v10, :cond_3d

    .line 356
    :cond_3c
    new-instance v8, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 357
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v5, v6, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 356
    invoke-virtual {v7, v8}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1e

    .line 360
    :cond_3d
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-eq v9, v13, :cond_3e

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    if-ne v9, v13, :cond_3f

    .line 361
    :cond_3e
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v8

    if-ne v9, v8, :cond_3f

    .line 362
    new-instance v8, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 363
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 362
    invoke-virtual {v7, v8}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_3f
    :goto_1e
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d

    :cond_40
    const/16 v2, 0xd

    if-ne v1, v2, :cond_42

    .line 371
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_41

    .line 373
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 374
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x258

    invoke-direct {v3, v8, v9, v10, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 373
    invoke-virtual {v7, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_1f

    :cond_42
    const/16 v2, 0xf

    if-ne v1, v2, :cond_44

    .line 381
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_43

    .line 383
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 384
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x96

    invoke-direct {v3, v8, v9, v10, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 383
    invoke-virtual {v7, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_20

    :cond_44
    const/16 v2, 0x11

    if-ne v1, v2, :cond_46

    .line 391
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_45
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_45

    .line 393
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 394
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v5, v6, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 393
    invoke-virtual {v7, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_21

    :cond_46
    const/16 v2, 0x13

    if-ne v1, v2, :cond_48

    .line 401
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_47

    .line 403
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 404
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x1f4

    invoke-direct {v3, v5, v8, v9, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 403
    invoke-virtual {v7, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_22

    :cond_48
    const/16 v2, 0x15

    if-ne v1, v2, :cond_4a

    .line 411
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v3, v13, :cond_49

    .line 413
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 414
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x5dc

    invoke-direct {v3, v5, v8, v9, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 413
    invoke-virtual {v7, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_23

    :cond_4a
    const/16 v2, 0x16

    if-ne v1, v2, :cond_4c

    .line 421
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v2, v13, :cond_4b

    .line 423
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 424
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x9c4

    invoke-direct {v2, v3, v5, v6, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 423
    invoke-virtual {v7, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_24

    :cond_4c
    return-void
.end method
