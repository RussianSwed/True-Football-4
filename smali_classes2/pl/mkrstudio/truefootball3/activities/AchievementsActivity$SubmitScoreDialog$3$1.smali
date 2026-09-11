.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;
.super Ljava/lang/Object;
.source "AchievementsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 517
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    .line 518
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 519
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 520
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 521
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v1, 0x7f0c039e

    .line 523
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    .line 524
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3$1;->this$2:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$3;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
