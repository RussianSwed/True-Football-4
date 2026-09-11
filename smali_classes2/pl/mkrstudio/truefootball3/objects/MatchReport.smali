.class public Lpl/mkrstudio/truefootball3/objects/MatchReport;
.super Ljava/lang/Object;
.source "MatchReport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x55227f52eff018feL


# instance fields
.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method deleteEventsAfterRedCard(Lpl/mkrstudio/truefootball3/objects/Match;Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "match",
            "mre"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 41
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v3

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v3

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->OWN_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v3, v4, :cond_0

    .line 44
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    .line 45
    :cond_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport;->events:Ljava/util/List;

    return-object v0
.end method

.method getSecondYellowCardTime(Lpl/mkrstudio/truefootball3/objects/Player;)B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->sortEvents()V

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 75
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v4, v5, :cond_0

    if-ne v2, v1, :cond_1

    .line 76
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v2

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "met"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 25
    sget-object v3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, v3, :cond_1

    .line 26
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v2

    if-ne v2, p2, :cond_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "events"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport;->events:Ljava/util/List;

    return-void
.end method

.method public sortEvents()V
    .locals 2

    .line 54
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport;->events:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/MatchReport$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/objects/MatchReport$1;-><init>(Lpl/mkrstudio/truefootball3/objects/MatchReport;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
