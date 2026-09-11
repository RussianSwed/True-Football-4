.class Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$2;
.super Landroid/os/Handler;
.source "LoadGameActivity.java"


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

    .line 364
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 366
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 369
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
