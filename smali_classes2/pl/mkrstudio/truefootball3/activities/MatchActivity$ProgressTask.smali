.class public Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;
.super Landroid/os/AsyncTask;
.source "MatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressTask"
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
.field private activity:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

.field private dialog:Landroid/app/Dialog;

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V
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

    .line 1718
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1719
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    .line 1720
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1746
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const-class v2, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "halfTime"

    .line 1747
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "fullTime"

    const/4 v2, 0x1

    .line 1748
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1749
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1750
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->finish()V

    .line 1751
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "error"

    .line 1753
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1754
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

    .line 1713
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

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

    .line 1736
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 1737
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    .line 1713
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1724
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1725
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1726
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1727
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1728
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c039e

    .line 1729
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1730
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
