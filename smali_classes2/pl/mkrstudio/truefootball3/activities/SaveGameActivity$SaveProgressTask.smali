.class public Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;
.super Landroid/os/AsyncTask;
.source "SaveGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveProgressTask"
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
.field activity:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field position:I

.field private saved:Z

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;Landroid/content/Context;I)V
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

    .line 368
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 369
    iput p3, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->position:I

    .line 370
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->activity:Landroid/content/Context;

    .line 371
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

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

    .line 397
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->setResult(I)V

    .line 398
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->save()Z

    move-result p1

    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->saved:Z

    if-eqz p1, :cond_0

    .line 400
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->position:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteGame(I)V

    :cond_0
    const/4 p1, 0x1

    .line 403
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "tag"

    const-string v1, "error"

    .line 405
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 406
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

    .line 361
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "success"
        }
    .end annotation

    .line 387
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :catch_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->finish()V

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

    .line 361
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 375
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 376
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 377
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 378
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c055c

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
