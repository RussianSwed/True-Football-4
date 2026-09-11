.class public final Lpl/mkrstudio/truefootball3/helpers/DeveloperSeasonSimulator;
.super Ljava/lang/Object;
.source "DeveloperSeasonSimulator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static finishTeam(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;Z)V
    .locals 4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setCondition(B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setUnavailable(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->lowerSuspension(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->setSuspension(Lpl/mkrstudio/truefootball3/objects/Suspension;)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public static simulateToday(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;)I
    .locals 10

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTodayPlayerMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->setCurrentMatch(Lpl/mkrstudio/truefootball3/objects/Match;)V

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-static {v3, v2}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-static {v4, v2}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_2

    :goto_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041d\u0435\u0434\u043e\u0441\u0442\u0430\u0442\u043e\u0447\u043d\u043e \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u044b\u0445 \u0438\u0433\u0440\u043e\u043a\u043e\u0432 \u0434\u043b\u044f \u043c\u0430\u0442\u0447\u0430 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, v5}, Lpl/mkrstudio/truefootball3/objects/Match;->simulateMatch(Lpl/mkrstudio/truefootball3/objects/UserData;ZZ)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    :goto_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v3, v4, :cond_6

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->isNeutralGround()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->calculateAttendance(Lpl/mkrstudio/truefootball3/objects/Match;)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5

    aget v5, v3, v4

    if-gez v5, :cond_4

    const/4 v5, 0x0

    aput v5, v3, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p0, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->addHomeMatchFinances(Landroid/content/Context;[I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->addAwayMatchFinances()V

    :goto_3
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Match;->changeTrustAfterMatch(Lpl/mkrstudio/truefootball3/objects/UserData;)[I

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->changeConfidence(I)V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v4

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Supporters;->changeConfidence(I)V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_7

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildGameOverMessage(Ljava/lang/String;Z)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setGameOver(Z)V

    :cond_7
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v3, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    invoke-static {v3, v2, v4}, Lpl/mkrstudio/truefootball3/helpers/DeveloperSeasonSimulator;->finishTeam(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;Z)V

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    invoke-static {v3, v2, v4}, Lpl/mkrstudio/truefootball3/helpers/DeveloperSeasonSimulator;->finishTeam(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;Z)V

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->updateAchievements(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
