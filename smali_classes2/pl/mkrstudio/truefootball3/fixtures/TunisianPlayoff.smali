.class public Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "TunisianPlayoff.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 4
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

    .line 22
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    .line 24
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 25
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v0, 0x2

    const/4 v3, 0x4

    invoke-virtual {p3, p1, v0, v3, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 26
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p3, p1, v2, v1, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 27
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p3, p1, v3, v0, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 29
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;->weeks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "Lpl/mkrstudio/truefootball3/objects/Finances;",
            ")V"
        }
    .end annotation

    .line 33
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;->weeks:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p1, :cond_6

    .line 34
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;->weeks:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object p3

    sget-object p4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne p3, p4, :cond_6

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 35
    :goto_0
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;->weeks:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_6

    .line 36
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;->weeks:Ljava/util/List;

    add-int/lit8 p6, p1, -0x1

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 37
    iget-object p6, p0, Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;->weeks:Ljava/util/List;

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object p6

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lpl/mkrstudio/truefootball3/objects/Match;

    const/4 p7, 0x0

    .line 39
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result p8

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    add-int/2addr p8, v0

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v1

    add-int/2addr v0, v1

    if-le p8, v0, :cond_0

    .line 40
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result p8

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    add-int/2addr p8, v0

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v1

    add-int/2addr v0, v1

    if-ge p8, v0, :cond_1

    .line 42
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result p8

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    if-le p8, v0, :cond_2

    .line 44
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result p8

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    if-ge p8, v0, :cond_3

    .line 46
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 48
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 49
    :cond_4
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result p5

    if-eqz p5, :cond_5

    .line 50
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    .line 52
    :cond_5
    :goto_1
    invoke-interface {p2, p7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fixtures/TunisianPlayoff;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3, p7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
