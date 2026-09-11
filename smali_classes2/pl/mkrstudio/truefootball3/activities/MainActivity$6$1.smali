.class Lpl/mkrstudio/truefootball3/activities/MainActivity$6$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 686
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$1;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 2

    const-string v0, "ContentValues"

    const-string v1, "Ad dismissed"

    .line 689
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$1;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->menuOfficeFragment:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$1;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->menuOfficeFragment:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->setAdEnabled(Z)V

    .line 693
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$1;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->access$000(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    return-void
.end method
