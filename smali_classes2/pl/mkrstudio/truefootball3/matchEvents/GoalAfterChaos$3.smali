.class Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;
.super Ljava/lang/Object;
.source "GoalAfterChaos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c031f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0320

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0321

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0322

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0323

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0324

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0325

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 73
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 74
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
