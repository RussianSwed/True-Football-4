.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$5;
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

.field final synthetic val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$5;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$5;->val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 438
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$5;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->dismiss()V

    return-void
.end method
