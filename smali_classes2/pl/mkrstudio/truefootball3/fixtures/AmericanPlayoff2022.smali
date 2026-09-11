.class public Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "AmericanPlayoff2022.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 25
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 p3, 0x0

    .line 27
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 28
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 29
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v1, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 30
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 31
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    const/16 v1, 0x9

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 32
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Week;

    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-virtual {p3, p1, v0, v1, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 34
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 1
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

    .line 39
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-le p5, p1, :cond_7

    .line 41
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object p5

    sget-object p6, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne p5, p6, :cond_7

    const/4 p5, 0x0

    const/4 p6, 0x0

    .line 42
    :goto_0
    iget-object p7, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object p7

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p7

    if-ge p6, p7, :cond_4

    .line 43
    iget-object p7, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object p7

    invoke-virtual {p7, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 46
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result p8

    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result p9

    const/4 v0, 0x0

    if-le p8, p9, :cond_0

    .line 47
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    .line 48
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result p8

    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result p9

    if-ge p8, p9, :cond_1

    .line 50
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    .line 51
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result p8

    if-eqz p8, :cond_2

    .line 53
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    .line 54
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result p8

    if-eqz p8, :cond_3

    .line 56
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    .line 57
    invoke-virtual {p7}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p7

    goto :goto_1

    :cond_3
    move-object p7, v0

    .line 59
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object p8, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object p8

    invoke-interface {p8, p5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_4
    const/4 p5, 0x4

    const/4 p6, 0x3

    const/4 p7, 0x2

    const/4 p8, 0x1

    if-nez p1, :cond_5

    .line 79
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p1, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 p3, 0x7

    invoke-virtual {p1, p2, p3, p8, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 80
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p1, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p1, p2, p7, p6, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 81
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p1, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    const/16 p3, 0x8

    invoke-virtual {p1, p2, p3, p5, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 82
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p1, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 p3, 0x5

    const/4 p5, 0x6

    invoke-virtual {p1, p2, p3, p5, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_2

    :cond_5
    if-ne p1, p8, :cond_6

    .line 84
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 85
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p1, p2, p8, p7, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    .line 87
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p1, p2, p6, p5, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_2

    :cond_6
    if-ne p1, p7, :cond_7

    .line 89
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AmericanPlayoff2022;->weeks:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p1, p2, p8, p7, p4}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    :cond_7
    :goto_2
    return-void
.end method
