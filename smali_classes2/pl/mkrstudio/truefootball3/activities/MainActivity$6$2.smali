.class Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


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

    .line 696
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rewardItem"
        }
    .end annotation

    const-string p1, "ContentValues"

    const-string v0, "User earned reward"

    .line 699
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/activities/MainActivity;->reward:J

    const-string v4, "sponsorships"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 701
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 702
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 703
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 705
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->setExtras(Ljava/util/List;)V

    .line 709
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6$2;->this$1:Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
