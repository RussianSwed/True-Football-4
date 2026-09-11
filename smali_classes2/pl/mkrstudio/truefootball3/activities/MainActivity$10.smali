.class Lpl/mkrstudio/truefootball3/activities/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;
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

    .line 1067
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1072
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->save()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "error"

    .line 1075
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->access$100(Lpl/mkrstudio/truefootball3/activities/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
