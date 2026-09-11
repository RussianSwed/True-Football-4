.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;
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

    .line 189
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

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
            "v"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 193
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 194
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->disableRightButton()V

    .line 195
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->enableLeftButton()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->enableLeftButton()V

    .line 198
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->enableRightButton()V

    .line 200
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->achievementsTrophiesVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->showView(I)V

    return-void
.end method
