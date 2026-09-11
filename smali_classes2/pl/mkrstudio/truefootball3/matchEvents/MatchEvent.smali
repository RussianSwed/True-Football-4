.class public Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.super Ljava/lang/Object;
.source "MatchEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field context:Landroid/content/Context;

.field delay:I

.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field team:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssistant(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attackingTeam"
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 182
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    aget-object v4, v5, v4

    .line 184
    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->isPositionOffensiveForAssists(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 186
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 187
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 190
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    aget-object v4, v4, v5

    .line 192
    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->isPositionOffensiveForAssists(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_2

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getBenchedPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/Position;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "position"
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object p1

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 322
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {v2, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v0

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v2, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v3

    if-ge v0, v3, :cond_0

    .line 328
    invoke-virtual {v2, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v0

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getDelay()I
    .locals 1

    .line 401
    iget v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->delay:I

    return v0
.end method

.method public getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attackingTeam"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 160
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    aget-object v4, v5, v4

    .line 162
    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->isPositionOffensive(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 164
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 165
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 168
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    aget-object v4, v4, v5

    .line 170
    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->isPositionOffensive(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_2

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getGoalkeeper(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defendingTeam"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getIndividualOrders(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/IndividualOrders;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "player"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 289
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 290
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOwnGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defendingTeam"
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 203
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    aget-object v4, v5, v4

    .line 205
    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->isPositionOffensive(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    rsub-int/lit8 v4, v4, 0x9

    add-int/2addr v3, v4

    goto :goto_0

    .line 207
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 208
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 211
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    aget-object v4, v4, v5

    .line 213
    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->isPositionOffensive(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v4

    rsub-int/lit8 v4, v4, 0x9

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_2

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 409
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method getPlayerForAction(Lpl/mkrstudio/truefootball3/objects/Player;BZ)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previous",
            "side",
            "offensive"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 57
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    :goto_0
    if-ne p2, p1, :cond_0

    .line 59
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2

    .line 64
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_7

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 69
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v3, v4, :cond_7

    .line 70
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    if-nez p2, :cond_5

    .line 73
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v3, v4, :cond_7

    .line 74
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    if-ne p2, v3, :cond_7

    .line 77
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v3, v4, :cond_7

    .line 78
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 83
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 84
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    .line 86
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 87
    :goto_3
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v1

    if-nez v1, :cond_a

    if-ne p3, p1, :cond_9

    goto :goto_4

    :cond_9
    return-object p3

    .line 88
    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    .line 89
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_3

    .line 93
    :cond_b
    invoke-virtual {p0, p1, p3}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getPlayerForAction(Lpl/mkrstudio/truefootball3/objects/Player;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    return-object p1
.end method

.method getPlayerForAction(Lpl/mkrstudio/truefootball3/objects/Player;Z)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previous",
            "offensive"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 99
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x3

    .line 100
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 102
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    :goto_0
    if-ne p2, p1, :cond_0

    .line 104
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2

    .line 109
    :cond_1
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object p2

    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 112
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 113
    :goto_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_3

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v2

    .line 114
    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 115
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_1
.end method

.method getPlayerForAction([Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "availablePositions",
            "previous"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p2, :cond_1

    const/4 v4, 0x0

    .line 31
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 32
    aget-object v5, p1, v4

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v3

    if-ne v5, v6, :cond_0

    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 39
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 42
    :goto_2
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_4

    if-ne v1, p2, :cond_3

    goto :goto_3

    :cond_3
    return-object v1

    .line 43
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_2

    .line 48
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    return-object p1
.end method

.method getPlayerForCard(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "foulingTeam"
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x5

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 359
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v7

    if-eqz v7, :cond_0

    .line 361
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v7

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    .line 363
    :goto_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v6, v7, :cond_2

    add-int/lit8 v5, v5, -0x3

    .line 365
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x5

    .line 367
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v4

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Diving;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v4, v6, :cond_4

    add-int/lit8 v5, v5, 0x3

    :cond_4
    add-int/2addr v3, v5

    goto/16 :goto_0

    .line 371
    :cond_5
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 372
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 375
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v7

    if-eqz v7, :cond_6

    .line 377
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v7

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v7, v8, :cond_7

    const/16 v7, 0xa

    goto :goto_2

    :cond_7
    const/4 v7, 0x5

    .line 379
    :goto_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v8

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v8, v9, :cond_8

    add-int/lit8 v7, v7, -0x3

    .line 381
    :cond_8
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v8

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v8, v9, :cond_9

    add-int/lit8 v7, v7, 0x5

    .line 383
    :cond_9
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v8

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Diving;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v8, v9, :cond_a

    add-int/lit8 v7, v7, 0x3

    :cond_a
    add-int/2addr v2, v7

    if-ge v1, v2, :cond_6

    return-object v4

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method getPlayerForTackle()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 8

    .line 121
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 124
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTackling()B

    move-result v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getStrength()B

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 126
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v6, v7, :cond_1

    add-int/lit8 v3, v3, 0x14

    .line 128
    :cond_1
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v4

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v4, v6, :cond_2

    add-int/lit8 v3, v3, -0x14

    :cond_2
    if-ge v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 133
    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 137
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v6

    if-eqz v6, :cond_4

    .line 138
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTackling()B

    move-result v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getStrength()B

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 139
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v6, v7, :cond_5

    add-int/lit8 v2, v2, 0x14

    .line 141
    :cond_5
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v6, v7, :cond_6

    add-int/lit8 v2, v2, -0x14

    :cond_6
    if-ge v2, v5, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-ge v1, v2, :cond_4

    return-object v4

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method getRandomBenchedPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object p1

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 340
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 344
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 346
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 347
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object p1

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 299
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 305
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 308
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStrengthAverageOfPlayersInPenaltyArea(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/ActionType;)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "at"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/ActionType;->CORNER_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v3, :cond_8

    .line 244
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    if-ne v2, v5, :cond_0

    .line 246
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 250
    :cond_1
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/ActionType;->FAR_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne p2, v2, :cond_3

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v3, :cond_8

    .line 252
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    if-ne v2, v5, :cond_2

    .line 254
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 258
    :cond_3
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/ActionType;->CLOSE_FREE_KICK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    if-ne p2, v2, :cond_5

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v3, :cond_8

    .line 260
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_4

    .line 261
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    if-ne v2, v5, :cond_4

    .line 262
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-ge p2, v3, :cond_8

    .line 268
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_7

    .line 269
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v2

    aget-object v2, v2, p2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v2, v5, :cond_6

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v2

    aget-object v2, v2, p2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v2, v5, :cond_6

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v2

    aget-object v2, v2, p2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v2, v5, :cond_6

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v2

    aget-object v2, v2, p2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v2, v5, :cond_7

    .line 270
    :cond_6
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 276
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 280
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 281
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getStrength()B

    move-result p2

    add-int/2addr v4, p2

    goto :goto_4

    .line 283
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    div-int/2addr v4, p1

    int-to-float p1, v4

    return p1
.end method

.method public getTacklingAverage(Lpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 223
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 225
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTackling()B

    move-result v3

    add-int/2addr v2, v3

    .line 227
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x14

    .line 229
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, -0x14

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ge v2, p1, :cond_3

    const/4 v2, 0x2

    .line 235
    :cond_3
    div-int/lit8 v2, v2, 0xb

    int-to-float p1, v2

    return p1
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 417
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 405
    iput p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->delay:I

    return-void
.end method

.method public setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 413
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public simulate()V
    .locals 0

    return-void
.end method
