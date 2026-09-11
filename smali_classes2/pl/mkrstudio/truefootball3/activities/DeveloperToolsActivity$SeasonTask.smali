.class Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;
.super Landroid/os/AsyncTask;
.source "DeveloperToolsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SeasonTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

.field private daysProcessed:I

.field private final daysToSimulate:I

.field private failureMessage:Ljava/lang/String;

.field private matchesSimulated:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->daysToSimulate:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->daysToSimulate:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    iget-object v2, v1, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/DeveloperSeasonSimulator;->simulateToday(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;)I

    move-result v1

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->matchesSimulated:I

    add-int/2addr v2, v1

    iput v2, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->matchesSimulated:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    iget-object v2, v1, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->nextDay(Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->daysProcessed:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->isGameOver()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->failureMessage:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulationRunning:Z

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v3, 0x1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateMonthButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateThreeMonthsButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0441\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u0438: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->failureMessage:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->isGameOver()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u0421\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u044f \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0430: \u043a\u0430\u0440\u044c\u0435\u0440\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->daysToSimulate:I

    const/16 v4, 0x16d

    if-eq p1, v4, :cond_3

    const/16 v4, 0x1e

    if-eq p1, v4, :cond_2

    const-string p1, "3 \u043c\u0435\u0441\u044f\u0446\u0430 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u043f\u0435\u0440\u0435\u043c\u043e\u0442\u0430\u043d\u044b."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, "\u041c\u0435\u0441\u044f\u0446 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u043f\u0435\u0440\u0435\u043c\u043e\u0442\u0430\u043d."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, "\u0421\u0435\u0437\u043e\u043d \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u043f\u0435\u0440\u0435\u043c\u043e\u0442\u0430\u043d."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "\n\u0414\u043d\u0435\u0439: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->daysProcessed:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", \u043c\u0430\u0442\u0447\u0435\u0439 \u043a\u043b\u0443\u0431\u0430: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->matchesSimulated:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n\u0422\u0435\u043a\u0443\u0449\u0430\u044f \u0434\u0430\u0442\u0430: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->statusTV:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulationRunning:Z

    const/4 v1, 0x0

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateMonthButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateThreeMonthsButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->daysToSimulate:I

    const/16 v2, 0x16d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_0

    const-string v1, "\u0421\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u044f 3 \u043c\u0435\u0441\u044f\u0446\u0435\u0432\u2026 \u041d\u0435 \u0437\u0430\u043a\u0440\u044b\u0432\u0430\u0439\u0442\u0435 \u0438\u0433\u0440\u0443."

    goto :goto_0

    :cond_0
    const-string v1, "\u0421\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u044f \u043c\u0435\u0441\u044f\u0446\u0430\u2026 \u041d\u0435 \u0437\u0430\u043a\u0440\u044b\u0432\u0430\u0439\u0442\u0435 \u0438\u0433\u0440\u0443."

    goto :goto_0

    :cond_1
    const-string v1, "\u0421\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u044f \u0441\u0435\u0437\u043e\u043d\u0430\u2026 \u041d\u0435 \u0437\u0430\u043a\u0440\u044b\u0432\u0430\u0439\u0442\u0435 \u0438\u0433\u0440\u0443."

    :goto_0
    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->statusTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
