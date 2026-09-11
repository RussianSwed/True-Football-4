.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penalties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1062
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1064
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1066
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    const v1, 0x7f07026f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1067
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->recoverPlayers(I)V

    .line 1069
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showSquads()V

    .line 1070
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateActionButtonAfterMatch()V

    .line 1071
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showLiveResults()V

    return-void
.end method
