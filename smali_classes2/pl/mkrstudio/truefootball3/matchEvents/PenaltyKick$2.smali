.class Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;
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

    .line 84
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 96
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 97
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
