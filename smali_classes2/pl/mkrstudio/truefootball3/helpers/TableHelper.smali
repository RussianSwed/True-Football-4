.class public Lpl/mkrstudio/truefootball3/helpers/TableHelper;
.super Ljava/lang/Object;
.source "TableHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static existsPlayerInTable(Lpl/mkrstudio/truefootball3/objects/Player;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "table"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;"
        }
    .end annotation

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 307
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static existsTeamInTable(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "teamName",
            "table"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 315
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAmericanLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BBI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "startWeek",
            "endWeek",
            "conference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "BBI)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {p0, p1, p2}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object p1

    .line 173
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 175
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 176
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_2

    .line 177
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 183
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method public static getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "championsCup",
            "startWeek",
            "endWeek",
            "groupNr",
            "numberOfTeamsInGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/fixtures/Fixtures;",
            "IIII)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt p1, v1, :cond_6

    .line 105
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 106
    div-int/lit8 v2, p4, 0x2

    mul-int v3, p3, v2

    move v4, v3

    :goto_1
    add-int v5, v3, v2

    if-ge v4, v5, :cond_5

    .line 107
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 108
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-static {v6, v0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->existsTeamInTable(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    move-result-object v8

    if-nez v8, :cond_0

    .line 112
    new-instance v8, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    invoke-static {v7, v0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->existsTeamInTable(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    move-result-object v6

    if-nez v6, :cond_1

    .line 117
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    const/4 v9, -0x1

    if-le v7, v9, :cond_4

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    if-le v7, v9, :cond_4

    .line 122
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v8, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsScored(I)V

    .line 123
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v8, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsLost(I)V

    .line 124
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsScored(I)V

    .line 125
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsLost(I)V

    .line 127
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v9

    if-le v7, v9, :cond_2

    .line 128
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setWins(I)V

    .line 129
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setLosses(I)V

    .line 131
    :cond_2
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v9

    if-ne v7, v9, :cond_3

    .line 132
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setDraws(I)V

    .line 133
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setDraws(I)V

    .line 135
    :cond_3
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    if-ge v7, v5, :cond_4

    .line 136
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v8, v5}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setLosses(I)V

    .line 137
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setWins(I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 143
    :cond_6
    new-instance p0, Lpl/mkrstudio/truefootball3/helpers/TableHelper$3;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper$3;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static getGreekPlayoffTable(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "GRE_PLAYOFF1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-byte p0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayerRatingsList(Lpl/mkrstudio/truefootball3/objects/Competition;BBI)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "startWeek",
            "endWeek",
            "howMany"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "BBI)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerRating;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getPlayerRatings()Ljava/util/List;

    move-result-object p0

    .line 71
    new-instance p1, Lpl/mkrstudio/truefootball3/helpers/TableHelper$2;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/helpers/TableHelper$2;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 96
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getPlayerStatsList(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;BBI)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "MatchEventType",
            "startWeek",
            "endWeek",
            "howMany"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "Lpl/mkrstudio/truefootball3/enums/MatchEventType;",
            "BBI)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    sget-object p3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p1, p3, :cond_0

    .line 25
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getScorers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_0
    sget-object p3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p1, p3, :cond_1

    .line 27
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getAssistants()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_1
    sget-object p3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p1, p3, :cond_2

    .line 29
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYellowCards()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_2
    sget-object p3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p1, p3, :cond_3

    .line 31
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getRedCards()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_3
    sget-object p3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p1, p3, :cond_4

    .line 33
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCleanSheets()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_4
    new-instance p0, Lpl/mkrstudio/truefootball3/helpers/TableHelper$1;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper$1;-><init>()V

    invoke-static {p2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p4, :cond_5

    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object p2
.end method

.method public static getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "startWeek",
            "endWeek"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "BB)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt p1, v1, :cond_6

    .line 240
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 241
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 242
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-static {v3, v0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->existsTeamInTable(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    move-result-object v5

    if-nez v5, :cond_1

    .line 246
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    invoke-static {v4, v0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->existsTeamInTable(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    move-result-object v3

    if-nez v3, :cond_2

    .line 251
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-le v4, v6, :cond_0

    .line 256
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsScored(I)V

    .line 257
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsLost(I)V

    .line 258
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsScored(I)V

    .line 259
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsLost(I)V

    .line 261
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-le v4, v6, :cond_3

    .line 262
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setWins(I)V

    .line 263
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setLosses(I)V

    .line 265
    :cond_3
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-ne v4, v6, :cond_4

    .line 266
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setDraws(I)V

    .line 267
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setDraws(I)V

    .line 269
    :cond_4
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-ge v4, v2, :cond_0

    .line 270
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setLosses(I)V

    .line 271
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setWins(I)V

    goto/16 :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 277
    :cond_6
    new-instance p0, Lpl/mkrstudio/truefootball3/helpers/TableHelper$5;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper$5;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition1",
            "competition2",
            "startWeek",
            "endWeek"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "BB)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {p0, p2, p3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object p0

    .line 190
    invoke-static {p1, p2, p3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object p1

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 193
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setDraws(I)V

    .line 195
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsLost(I)V

    .line 196
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setGoalsScored(I)V

    .line 197
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setLosses(I)V

    .line 198
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->setWins(I)V

    goto :goto_0

    .line 203
    :cond_2
    new-instance p1, Lpl/mkrstudio/truefootball3/helpers/TableHelper$4;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/helpers/TableHelper$4;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method
