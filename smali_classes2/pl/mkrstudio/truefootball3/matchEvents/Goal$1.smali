.class Lpl/mkrstudio/truefootball3/matchEvents/Goal$1;
.super Ljava/lang/Object;
.source "Goal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/Goal;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/Goal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
