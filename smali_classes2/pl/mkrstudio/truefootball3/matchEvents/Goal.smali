.class public Lpl/mkrstudio/truefootball3/matchEvents/Goal;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "Goal.java"


# instance fields
.field assistant:Lpl/mkrstudio/truefootball3/objects/Player;

.field canBeOffside:Z

.field defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field offside:Z

.field penalty:Z


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scorer",
            "assistant",
            "attackingTeam",
            "defendingTeam",
            "context",
            "penalty",
            "canBeOffside"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 24
    iput-boolean p7, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->canBeOffside:Z

    .line 25
    iput-boolean p6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->penalty:Z

    .line 26
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 27
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 28
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 29
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 30
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 31
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x64

    .line 32
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 34
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object p3

    sget-object p4, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    const/high16 p6, 0x40e00000    # 7.0f

    if-ne p3, p4, :cond_0

    float-to-double p3, p6

    const-wide/high16 p6, 0x3ffc000000000000L    # 1.75

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p6

    double-to-float p6, p3

    :cond_0
    const/4 p3, 0x0

    .line 36
    iput-boolean p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->offside:Z

    .line 37
    iget-boolean p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->canBeOffside:Z

    if-eqz p3, :cond_2

    float-to-int p3, p6

    if-ge p1, p3, :cond_1

    .line 39
    move-object p1, p5

    check-cast p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p5}, Lpl/mkrstudio/truefootball3/matchEvents/Offside;-><init>(ZLandroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iput-boolean p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->offside:Z

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_3

    .line 41
    move-object p1, p5

    check-cast p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {p2, p5}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_2
    move-object p1, p5

    check-cast p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {p2, p5}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->offside:Z

    check-cast p5, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    if-eqz p1, :cond_4

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result p1

    mul-int/lit8 p1, p1, 0x7

    :goto_1
    iput p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->delay:I

    return-void
.end method


# virtual methods
.method changeResult()V
    .locals 4

    .line 243
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 245
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->isNeutralGround()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 248
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v2, v3, :cond_1

    .line 249
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    .line 250
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateResult()V

    .line 251
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->offside:Z

    if-nez v0, :cond_3

    .line 252
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->isGoalSounds()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playHomeGoalSound(Lpl/mkrstudio/truefootball3/objects/Country;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playAwayGoalSound()V

    goto :goto_0

    .line 260
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

    .line 261
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateResult()V

    .line 262
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->offside:Z

    if-nez v0, :cond_3

    .line 263
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->isGoalSounds()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 265
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playAwayGoalSound()V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playHomeGoalSound(Lpl/mkrstudio/truefootball3/objects/Country;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 63
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 64
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->offside:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    :goto_0
    const/4 v2, 0x0

    .line 66
    :goto_1
    div-int/lit8 v3, v1, 0x4b

    if-ge v2, v3, :cond_2

    .line 68
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    .line 69
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal$1;

    invoke-direct {v4, p0}, Lpl/mkrstudio/truefootball3/matchEvents/Goal$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Goal;)V

    mul-int/lit8 v5, v2, 0x4b

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 75
    :cond_1
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal$2;

    invoke-direct {v4, p0}, Lpl/mkrstudio/truefootball3/matchEvents/Goal$2;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Goal;)V

    mul-int/lit8 v5, v2, 0x4b

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->changeResult()V

    .line 84
    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->offside:Z

    if-nez v1, :cond_3

    .line 85
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->updateMatchReport()V

    .line 86
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Goal;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 231
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    int-to-long v3, v0

    .line 86
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 233
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/Goal$4;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Goal;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 238
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 233
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method

.method undoChangeResult()V
    .locals 3

    .line 275
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 276
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v1, v2, :cond_0

    .line 277
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    .line 278
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateResult()V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    .line 281
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateResult()V

    :goto_0
    return-void
.end method

.method updateMatchReport()V
    .locals 10

    .line 286
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 287
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 289
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRatingsAfterGoal(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 291
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v3

    int-to-byte v3, v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 292
    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->penalty:Z

    if-eqz v1, :cond_1

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->setType(Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 293
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 294
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v6, 0x1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 296
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v2, :cond_2

    .line 297
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v6, 0x1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 301
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getReport()Lpl/mkrstudio/truefootball3/objects/MatchReport;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->assistant:Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v0, :cond_3

    .line 303
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v3

    int-to-byte v3, v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v1, v0, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 304
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getReport()Lpl/mkrstudio/truefootball3/objects/MatchReport;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateReport()V

    return-void
.end method
