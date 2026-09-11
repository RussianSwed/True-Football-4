.class Lpl/mkrstudio/truefootball3/activities/MainActivity$2;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadRewardedVideoAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadAdError"
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentValues"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iput-object p1, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 243
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->menuOfficeFragment:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->menuOfficeFragment:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->setAdEnabled(Z)V

    :cond_0
    const-string p1, "ContentValues"

    const-string v0, "Ad was loaded."

    .line 246
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ad"
        }
    .end annotation

    .line 232
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
