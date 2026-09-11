.class public Lpl/mkrstudio/truefootball3/matchEvents/Injury;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "Injury.java"


# instance fields
.field playerInjured:Z


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fouledTeam",
            "context",
            "playerInjured"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 18
    move-object v0, p2

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->delay:I

    .line 19
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 20
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->getPlayerForCard(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 21
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    .line 22
    iput-boolean p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->playerInjured:Z

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p3, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {p3, p2}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p2}, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;ZLandroid/content/Context;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method injurePlayer()V
    .locals 2

    .line 75
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Injury;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Injury;-><init>(B)V

    .line 76
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setInjury(Lpl/mkrstudio/truefootball3/objects/Injury;)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 37
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->playerInjured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->injurePlayer()V

    .line 40
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTactics()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getSubs()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 42
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setPause(Z)V

    .line 44
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/Injury$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Injury;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 55
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    int-to-long v4, v2

    .line 46
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->playerInjured:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/Injury$2;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Injury;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 70
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public simulate()V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/matchEvents/Injury;->injurePlayer()V

    return-void
.end method
