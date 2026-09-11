.class Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;
.super Ljava/lang/Object;
.source "PenaltyKick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c04aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c04ab

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 107
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c04ac

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c04ad

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c04ae

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 111
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 112
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
