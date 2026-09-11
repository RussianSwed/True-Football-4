.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;
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

.field final synthetic val$countrySpinner:Landroid/widget/Spinner;

.field final synthetic val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/Spinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0",
            "val$countrySpinner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 489
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;->val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;->val$countrySpinner:Landroid/widget/Spinner;

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
            "arg0"
        }
    .end annotation

    .line 492
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;->val$countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;->val$countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 493
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;->val$countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog$2;->val$countrySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_0
    return-void
.end method
