.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$17;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateActionButtonAfterMatch()V
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

    .line 1079
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$17;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1082
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$17;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1083
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$17;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p1, v1, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
