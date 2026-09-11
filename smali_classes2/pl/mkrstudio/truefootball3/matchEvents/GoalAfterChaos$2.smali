.class Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$2;
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

    .line 51
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos$2;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/matchEvents/GoalAfterChaos;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentaryTV()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
