.class public Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;
.super Landroid/os/AsyncTask;
.source "LoadGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadProgressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field position:I

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "position"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 401
    iput p3, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->position:I

    .line 402
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->activity:Landroid/app/Activity;

    .line 403
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 435
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 436
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->position:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->load(I)Z

    move-result v0

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loaded:Z

    const/4 p1, 0x1

    .line 438
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "tag"

    const-string v1, "error"

    .line 440
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 441
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "args"
        }
    .end annotation

    .line 394
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "success"
        }
    .end annotation

    .line 420
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->finish()V

    .line 426
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-boolean v0, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loaded:Z

    const-string v1, "loaded"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 430
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->finish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "success"
        }
    .end annotation

    .line 394
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 407
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 408
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 409
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 410
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c039e

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 413
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
