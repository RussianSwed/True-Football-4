.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;
.super Ljava/lang/Object;
.source "AchievementsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 179
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->disableLeftButton()V

    .line 181
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->enableRightButton()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->enableLeftButton()V

    .line 184
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->enableRightButton()V

    .line 186
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->showView(I)V

    return-void
.end method
