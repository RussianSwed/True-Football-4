.class public Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "SecondYellowCard.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "player",
            "foulingTeam",
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 18
    move-object v0, p3

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v1

    iput v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->delay:I

    .line 19
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 20
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 22
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {p2, p3}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 27
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->updateMatchReport()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0581

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 31
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 32
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getRedColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method

.method public simulate()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->updateMatchReport()V

    return-void
.end method

.method suspendPlayer()V
    .locals 4

    .line 55
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 56
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Suspension;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lpl/mkrstudio/truefootball3/objects/Suspension;-><init>(Lpl/mkrstudio/truefootball3/enums/CompetitionType;B)V

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSuspension(Lpl/mkrstudio/truefootball3/objects/Suspension;)V

    .line 59
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->setUnavailable(Z)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->setUnavailable(Z)V

    :goto_0
    return-void
.end method

.method updateMatchReport()V
    .locals 10

    .line 42
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/high16 v2, -0x3f800000    # -4.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 43
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->suspendPlayer()V

    .line 44
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v3

    int-to-byte v3, v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 45
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 46
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v6, 0x1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 50
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getReport()Lpl/mkrstudio/truefootball3/objects/MatchReport;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateReport()V

    return-void
.end method
