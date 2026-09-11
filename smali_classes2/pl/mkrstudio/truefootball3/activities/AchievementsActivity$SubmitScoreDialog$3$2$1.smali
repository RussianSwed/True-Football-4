.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;
.super Ljava/lang/Object;
.source "AchievementsActivity.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    .line 556
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 559
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;->val$authClient:Lcom/firebase/simplelogin/SimpleLogin;

    invoke-virtual {p1}, Lcom/firebase/simplelogin/SimpleLogin;->logout()V

    .line 560
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;->this$3:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    new-instance p2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1$1;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2$1;)V

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
