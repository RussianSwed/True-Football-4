.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;
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

.field final synthetic val$act:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

.field final synthetic val$points:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$act",
            "val$points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;->val$act:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iput p3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;->val$points:I

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

    .line 215
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;->val$act:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$3;->val$points:I

    invoke-direct {p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/content/Context;I)V

    .line 216
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$SubmitScoreDialog;->show()V

    return-void
.end method
