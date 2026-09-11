.class Lpl/mkrstudio/truefootball3/activities/MainActivity$9$1;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity$9;->onAdDismissedFullScreenContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$9;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$9$1;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$9;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

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

    .line 930
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentValues"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$9$1;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$9;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interstitialAd"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$9$1;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$9;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iput-object p1, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const-string p1, "ContentValues"

    const-string v0, "onAdLoaded"

    .line 924
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "interstitialAd"
        }
    .end annotation

    .line 918
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$9$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
