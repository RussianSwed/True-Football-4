.class public Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "GoalAfterChaos.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "context"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 16
    move-object p2, p3

    check-cast p2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->delay:I

    .line 17
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 18
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 19
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {p2, p3}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method changeGoals()V
    .locals 4

    .line 80
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 82
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->isNeutralGround()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 84
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v2, v3, :cond_1

    .line 85
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    .line 86
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateResult()V

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->isGoalSounds()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playHomeGoalSound(Lpl/mkrstudio/truefootball3/objects/Country;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playAwayGoalSound()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    .line 95
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateResult()V

    .line 96
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->isGoalSounds()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 98
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playAwayGoalSound()V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playHomeGoalSound(Lpl/mkrstudio/truefootball3/objects/Country;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 37
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->changeGoals()V

    .line 39
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->updateMatchReport()V

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 42
    :goto_0
    div-int/lit8 v2, v0, 0x4b

    if-ge v1, v2, :cond_1

    .line 44
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 45
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$1;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;)V

    mul-int/lit8 v4, v1, 0x4b

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 51
    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$2;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$2;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;)V

    mul-int/lit8 v4, v1, 0x4b

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 76
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public simulate()V
    .locals 5

    .line 25
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 26
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v1, v2, :cond_0

    .line 27
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    .line 31
    :goto_0
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v3

    int-to-byte v3, v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 32
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getReport()Lpl/mkrstudio/truefootball3/objects/MatchReport;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method updateMatchReport()V
    .locals 10

    .line 106
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 107
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRatingsAfterGoal(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 108
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v3

    int-to-byte v3, v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 109
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 110
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v6, 0x1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getReport()Lpl/mkrstudio/truefootball3/objects/MatchReport;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateReport()V

    return-void
.end method
