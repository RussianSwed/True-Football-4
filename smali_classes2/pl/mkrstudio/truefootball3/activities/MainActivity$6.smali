.class Lpl/mkrstudio/truefootball3/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;->onMenuButtonClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

.field final synthetic val$businessmanDialog:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$businessmanDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->val$businessmanDialog:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 684
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->val$businessmanDialog:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->showAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz p1, :cond_0

    .line 685
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->val$businessmanDialog:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->getReward()J

    move-result-wide v0

    iput-wide v0, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->reward:J

    .line 686
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$1;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity$6;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 696
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity$6;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    :cond_0
    return-void
.end method
