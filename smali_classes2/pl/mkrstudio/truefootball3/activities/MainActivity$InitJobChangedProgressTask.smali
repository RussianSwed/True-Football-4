.class public Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/activities/ProgressTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitJobChangedProgressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;",
        "Lpl/mkrstudio/truefootball3/activities/ProgressTask;"
    }
.end annotation


# instance fields
.field private activity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

.field private dialog:Landroid/app/Dialog;

.field fromMessage:Z

.field private jobOffer:Lpl/mkrstudio/truefootball3/objects/JobOffer;

.field private progress:I

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "jobOffer",
            "fromMessage"
        }
    .end annotation

    .line 1332
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 1329
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->progress:I

    .line 1333
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    .line 1334
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->jobOffer:Lpl/mkrstudio/truefootball3/objects/JobOffer;

    .line 1335
    iput-boolean p4, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->fromMessage:Z

    .line 1336
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 1324
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->doInBackground([Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1381
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->jobOffer:Lpl/mkrstudio/truefootball3/objects/JobOffer;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1, v0, v1, p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->acceptJobOffer(Lpl/mkrstudio/truefootball3/objects/JobOffer;Landroid/content/Context;Lpl/mkrstudio/truefootball3/activities/ProgressTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "tag"

    const-string v1, "error"

    .line 1383
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public doProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    .line 1349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1324
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1365
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 1366
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1371
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->setResult(I)V

    .line 1372
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->onBackPressed()V

    .line 1373
    iget-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->fromMessage:Z

    if-nez p1, :cond_0

    .line 1374
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->onBackPressed()V

    .line 1375
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->onResume()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1353
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1354
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1355
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1356
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1357
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c039e

    .line 1358
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1359
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1341
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->progress:I

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->progress:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 1343
    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->progress:I

    .line 1344
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "values"
        }
    .end annotation

    .line 1324
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
