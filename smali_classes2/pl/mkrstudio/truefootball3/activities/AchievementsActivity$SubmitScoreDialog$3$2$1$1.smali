.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;
.super Ljava/lang/Object;
.source "AchievementsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    .line 560
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;->this$4:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 563
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;->this$4:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;->this$4:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$act:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;)V

    .line 564
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->show()V

    .line 566
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;->this$4:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;->this$4:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
