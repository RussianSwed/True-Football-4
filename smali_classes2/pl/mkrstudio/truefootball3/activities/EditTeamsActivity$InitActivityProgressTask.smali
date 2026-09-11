.class public Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;
.super Landroid/os/AsyncTask;
.source "EditTeamsActivity.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/activities/ProgressTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitActivityProgressTask"
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
.field private activity:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

.field private dialog:Landroid/app/Dialog;

.field private progress:I

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "activity"
        }
    .end annotation

    .line 789
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 787
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->progress:I

    .line 790
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    .line 791
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

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

    .line 783
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->doInBackground([Landroid/content/Context;)Ljava/lang/String;

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

    .line 833
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 834
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->doProgress(I)V

    .line 835
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;-><init>(Landroid/content/Context;)V

    .line 836
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->doProgress(I)V

    .line 837
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->generateWorld(Lpl/mkrstudio/truefootball3/activities/ProgressTask;)V

    .line 839
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->setWorld(Lpl/mkrstudio/truefootball3/objects/World;)V

    :cond_1
    const/16 p1, 0x64

    .line 844
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->doProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "tag"

    const-string v1, "error"

    .line 846
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

    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->publishProgress([Ljava/lang/Object;)V

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

    .line 783
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 820
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 821
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 826
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->initViews()V

    .line 827
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countriesSpinnerPosition:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countriesSpinnerPosition:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 808
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 809
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 810
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 811
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c03a0

    .line 813
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 814
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

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

    .line 796
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->progress:I

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->progress:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 798
    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->progress:I

    .line 799
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
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

    .line 783
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
