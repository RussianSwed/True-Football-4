.class Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;
.super Ljava/lang/Object;
.source "SaveGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 280
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->setResult(I)V

    .line 281
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->save()Z

    move-result v1

    iput-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saved:Z

    .line 282
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-boolean v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savePosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savePosition:I

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteGame(I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->access$000(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "error"

    .line 288
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->finish()V

    return-void
.end method
