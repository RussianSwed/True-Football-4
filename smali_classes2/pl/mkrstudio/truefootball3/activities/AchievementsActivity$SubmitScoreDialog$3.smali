.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;
.super Ljava/lang/Object;
.source "AchievementsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

.field final synthetic val$act:Landroid/content/Context;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countriesTab:[Ljava/lang/String;

.field final synthetic val$countrySpinner:Landroid/widget/Spinner;

.field final synthetic val$points:I

.field final synthetic val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

.field final synthetic val$yourName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;Landroid/content/Context;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/Spinner;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0",
            "val$context",
            "val$act",
            "val$yourName",
            "val$countriesTab",
            "val$countrySpinner",
            "val$points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 510
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$act:Landroid/content/Context;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$yourName:Landroid/widget/EditText;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$countriesTab:[Ljava/lang/String;

    iput-object p7, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$countrySpinner:Landroid/widget/Spinner;

    iput p8, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$points:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 513
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->dismiss()V

    .line 514
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    new-instance v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$act:Landroid/content/Context;

    const-string v0, "tf3UserPass"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 529
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$yourName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "displayedname"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 531
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$countriesTab:[Ljava/lang/String;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "country"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "user"

    .line 534
    invoke-interface {p1, v0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pass"

    .line 535
    invoke-interface {p1, v1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userName:Ljava/lang/String;

    .line 538
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$yourName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userDisplayedName:Ljava/lang/String;

    .line 539
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$countriesTab:[Ljava/lang/String;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userNationality:Ljava/lang/String;

    .line 540
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$points:I

    iput v1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userScore:I

    .line 542
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userScore:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->pointsThreshold:I

    if-le p1, v1, :cond_0

    .line 543
    new-instance p1, Lcom/firebase/client/Firebase;

    const-string v1, "https://true-football-3.firebaseio.com"

    invoke-direct {p1, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    .line 544
    new-instance v1, Lcom/firebase/simplelogin/SimpleLogin;

    invoke-direct {v1, p1}, Lcom/firebase/simplelogin/SimpleLogin;-><init>(Lcom/firebase/client/Firebase;)V

    .line 545
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$2;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;Lcom/firebase/client/Firebase;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLogin;)V

    invoke-virtual {v1, v2}, Lcom/firebase/simplelogin/SimpleLogin;->loginAnonymously(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 623
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    new-instance v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$3;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$3;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
