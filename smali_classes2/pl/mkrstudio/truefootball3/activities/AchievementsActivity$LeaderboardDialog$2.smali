.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;
.super Ljava/lang/Object;
.source "AchievementsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

.field final synthetic val$arrowLeft1:Landroid/widget/Button;

.field final synthetic val$arrowRight1:Landroid/widget/Button;

.field final synthetic val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0",
            "val$arrowLeft1",
            "val$arrowRight1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->val$arrowLeft1:Landroid/widget/Button;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->val$arrowRight1:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 352
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 353
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 354
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->rangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 355
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->val$arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->val$arrowLeft1:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->val$arrowRight1:Landroid/widget/Button;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v1, v1, v2, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$2;->val$arrowRight1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
