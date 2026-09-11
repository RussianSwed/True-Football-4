.class Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;
.super Ljava/lang/Object;
.source "LoadGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 380
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadPosition:I

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->load(I)Z

    move-result v1

    iput-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loaded:Z

    .line 381
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->access$000(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->finish()V

    .line 383
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    const-class v2, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "loaded"

    .line 384
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-boolean v2, v2, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loaded:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "error"

    .line 387
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
