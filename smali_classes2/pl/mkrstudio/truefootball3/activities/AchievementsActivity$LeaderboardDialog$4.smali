.class Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;
.super Ljava/lang/Object;
.source "AchievementsActivity.java"

# interfaces
.implements Lcom/firebase/client/ChildEventListener;


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

.field final synthetic val$userPlace:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0",
            "val$userPlace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->val$this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->val$userPlace:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public onChildAdded(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "snapshot",
            "previousChildName"
        }
    .end annotation

    .line 385
    new-instance p2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4$1;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4$1;-><init>(Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;)V

    .line 387
    invoke-virtual {p1, p2}, Lcom/firebase/client/DataSnapshot;->getValue(Lcom/firebase/client/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 389
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget v2, v2, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->q:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "place"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "displayedname"

    .line 392
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "score"

    .line 393
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "points"

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "nationality"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/util/Locale;

    const-string v8, "en"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {v4, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "imageUri"

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userDisplayedName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "user"

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget v4, v4, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userScore:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->userNationality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 396
    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->val$userPlace:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 400
    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->adapters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->q:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->x:I

    div-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 406
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->adapters:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->q:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->this$0:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    iget v1, v1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;->x:I

    div-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/adapters/LeaderboardAdapter;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/adapters/LeaderboardAdapter;->add(Ljava/lang/Object;)V

    .line 408
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog$4;->this$1:Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;

    iget p2, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->q:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity$LeaderboardDialog;->q:I

    return-void
.end method

.method public onChildChanged(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "snapshot",
            "previousChildName"
        }
    .end annotation

    return-void
.end method

.method public onChildMoved(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "snapshot",
            "previousChildName"
        }
    .end annotation

    return-void
.end method

.method public onChildRemoved(Lcom/firebase/client/DataSnapshot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snapshot"
        }
    .end annotation

    return-void
.end method
