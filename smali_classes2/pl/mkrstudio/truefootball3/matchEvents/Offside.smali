.class public Lpl/mkrstudio/truefootball3/matchEvents/Offside;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "Offside.java"


# instance fields
.field afterGoal:Z


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afterGoal",
            "context"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 14
    move-object v0, p2

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v0

    if-eqz p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    iput v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->delay:I

    .line 15
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 16
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->afterGoal:Z

    .line 17
    move-object p1, p2

    check-cast p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;

    invoke-direct {v0, p2}, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 22
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->afterGoal:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_0

    new-array v0, v6, [Ljava/lang/String;

    .line 24
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 25
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0401

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0402

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0403

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0404

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0405

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 31
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 32
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;-><init>(Lpl/mkrstudio/truefootball3/matchEvents/Offside;)V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 48
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result v2

    int-to-long v2, v2

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    .line 50
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0453

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 52
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0454

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0455

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0456

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0457

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 58
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    check-cast v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
