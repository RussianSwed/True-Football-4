.class public Lpl/mkrstudio/truefootball3/matchEvents/Substitution;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "Substitution.java"


# instance fields
.field in:Lpl/mkrstudio/truefootball3/objects/Player;

.field out:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;ZLandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "subbingTeam",
            "playerOut",
            "injury",
            "context"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 20
    move-object v0, p4

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->delay:I

    .line 21
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 22
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result p3

    iput p3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->delay:I

    :cond_0
    if-eqz p2, :cond_1

    .line 25
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->out:Lpl/mkrstudio/truefootball3/objects/Player;

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->out:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 30
    :goto_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->out:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->getBenchedPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/Position;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->in:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 37
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {p2, p4}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 42
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->out:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    .line 44
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->in:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    .line 45
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->out:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 46
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->in:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 47
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->in:Lpl/mkrstudio/truefootball3/objects/Player;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addPlayerRating(Lpl/mkrstudio/truefootball3/objects/PlayerRating;)V

    .line 48
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->out:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setUnavailable(Z)V

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getSubsMadeByRival()B

    move-result v2

    add-int/2addr v2, v1

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setSubsMadeByRival(B)V

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c05e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c05e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c05e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c05e6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0c05e7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 58
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0c05e8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x5

    aput-object v3, v2, v8

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 59
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0c05e9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x6

    aput-object v3, v2, v9

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0c05ea

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x7

    aput-object v3, v2, v10

    new-array v3, v0, [Ljava/lang/String;

    .line 63
    iget-object v11, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c05db

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    iget-object v11, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c05dc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v1

    iget-object v11, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 66
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c05dd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    iget-object v11, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c05de

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v6

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 68
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f0c05df

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c05e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 70
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c05e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c05e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 74
    iget v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->delay:I

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v7, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    if-ne v6, v7, :cond_0

    .line 75
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 76
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v6, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v2, v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->out:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;

    invoke-direct {v1, p0, v3}, Lpl/mkrstudio/truefootball3/matchEvents/Substitution$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Substitution;[Ljava/lang/String;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 82
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    int-to-long v2, v2

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 84
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 85
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->context:Landroid/content/Context;

    check-cast v5, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v3, v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;->in:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
