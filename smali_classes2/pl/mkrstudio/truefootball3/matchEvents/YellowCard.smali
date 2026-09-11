.class public Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "YellowCard.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "foulingTeam",
            "context"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 17
    move-object v0, p2

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->delay:I

    .line 18
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 19
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->getPlayerForCard(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 21
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->hasYellowCard(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-direct {v1, v2, p1, p2}, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {v0, p2}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 35
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v2, -0x40e66666    # -0.6f

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    .line 36
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->updateMatchReport()V

    .line 37
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0663

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 47
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    int-to-long v2, v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public simulate()V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->updateMatchReport()V

    return-void
.end method

.method updateMatchReport()V
    .locals 10

    .line 51
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v3

    int-to-byte v3, v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 52
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 53
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v6, 0x1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 57
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getReport()Lpl/mkrstudio/truefootball3/objects/MatchReport;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateReport()V

    return-void
.end method
