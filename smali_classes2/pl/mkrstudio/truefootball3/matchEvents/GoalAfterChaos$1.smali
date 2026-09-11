.class Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$1;
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

    .line 45
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 47
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
