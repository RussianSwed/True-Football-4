.class Lpl/mkrstudio/truefootball3/activities/MainActivity$9;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 911
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 4

    .line 914
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MainActivity$9$1;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$9$1;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity$9;)V

    const-string v3, "ca-app-pub-1066342364129157/8503687820"

    invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method
