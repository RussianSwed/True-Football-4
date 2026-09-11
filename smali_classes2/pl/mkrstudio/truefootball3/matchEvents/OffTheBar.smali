.class public Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "OffTheBar.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "context",
            "sobl",
            "dipa",
            "at"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 18
    move-object p5, p3

    check-cast p5, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result p6

    iput p6, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->delay:I

    .line 19
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 20
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->context:Landroid/content/Context;

    .line 26
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne p4, p1, :cond_0

    .line 27
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/ActionType;->INCREDIBLY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    :goto_0
    move-object v6, p1

    goto :goto_1

    .line 28
    :cond_0
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne p4, p1, :cond_1

    .line 29
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/ActionType;->VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne p4, p1, :cond_2

    .line 31
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/ActionType;->SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 32
    :cond_2
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne p4, p1, :cond_3

    .line 33
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/ActionType;->QUITE_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 34
    :cond_3
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne p4, p1, :cond_4

    .line 35
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_VERY_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    .line 36
    :cond_4
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    if-ne p4, p1, :cond_5

    .line 37
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/ActionType;->NOT_SEVERE_COUNTER_ATTACK:Lpl/mkrstudio/truefootball3/enums/ActionType;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_0

    .line 40
    :goto_1
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p1

    sget-object p4, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p1, p4, :cond_6

    .line 41
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 42
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    :goto_2
    move-object v4, p1

    move-object v5, p4

    goto :goto_3

    .line 43
    :cond_6
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p1

    sget-object p4, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p1, p4, :cond_7

    .line 44
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 45
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_2

    .line 46
    :cond_7
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p1

    sget-object p4, Lpl/mkrstudio/truefootball3/enums/Gameplay;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p1, p4, :cond_8

    .line 47
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 48
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_2

    .line 50
    :cond_8
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 51
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_2

    .line 54
    :goto_3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p4, 0xa

    .line 55
    invoke-virtual {p1, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 p6, 0x1

    if-ge p1, p6, :cond_9

    .line 56
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p4, Lpl/mkrstudio/truefootball3/matchEvents/CounterAttack;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v0, p4

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/matchEvents/CounterAttack;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-ge p1, p4, :cond_a

    .line 57
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {p2, p3}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 62
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0432

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0433

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->context:Landroid/content/Context;

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0434

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 69
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 70
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/OffTheBar;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
