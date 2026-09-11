.class public Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;
.super Landroid/app/Activity;
.source "DeveloperToolsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;,
        Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;
    }
.end annotation


# instance fields
.field progress:Landroid/widget/ProgressBar;

.field simulateButton:Landroid/widget/Button;

.field simulateMonthButton:Landroid/widget/Button;

.field simulateThreeMonthsButton:Landroid/widget/Button;

.field simulationRunning:Z

.field statusTV:Landroid/widget/TextView;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private confirmAndStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulationRunning:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u041d\u0430\u0447\u0430\u0442\u044c"

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;

    invoke-direct {v2, p0, p3}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;-><init>(Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private showIdleStatus()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0422\u0435\u043a\u0443\u0449\u0430\u044f \u0434\u0430\u0442\u0430: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->statusTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public closeDeveloperTools(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulationRunning:Z

    if-eqz p1, :cond_0

    const-string p1, "\u0414\u043e\u0436\u0434\u0438\u0442\u0435\u0441\u044c \u043e\u043a\u043e\u043d\u0447\u0430\u043d\u0438\u044f \u0441\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u0438"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulationRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "\u0414\u043e\u0436\u0434\u0438\u0442\u0435\u0441\u044c \u043e\u043a\u043e\u043d\u0447\u0430\u043d\u0438\u044f \u0441\u0438\u043c\u0443\u043b\u044f\u0446\u0438\u0438"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->requestWindowFeature(I)Z

    const-string v0, "activity_developer_tools"

    const-string v1, "layout"

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    const-string v0, "developerStatus"

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->statusTV:Landroid/widget/TextView;

    const-string v0, "developerProgress"

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->progress:Landroid/widget/ProgressBar;

    const-string v0, "developerSimulateSeason"

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateButton:Landroid/widget/Button;

    const-string v0, "developerSimulateMonth"

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateMonthButton:Landroid/widget/Button;

    const-string v0, "developerSimulateThreeMonths"

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateThreeMonthsButton:Landroid/widget/Button;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateMonthButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->simulateThreeMonthsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->statusTV:Landroid/widget/TextView;

    const-string v1, "\u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0441\u043e\u0437\u0434\u0430\u0439\u0442\u0435 \u0438\u043b\u0438 \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u0435 \u043a\u0430\u0440\u044c\u0435\u0440\u0443"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->showIdleStatus()V

    return-void
.end method

.method public simulateMonth(Landroid/view/View;)V
    .locals 3

    const-string v0, "\u041f\u0435\u0440\u0435\u043c\u043e\u0442\u0430\u0442\u044c \u043e\u0434\u0438\u043d \u043c\u0435\u0441\u044f\u0446?"

    const-string v1, "\u0411\u0443\u0434\u0443\u0442 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u0441\u044b\u0433\u0440\u0430\u043d\u044b \u043c\u0430\u0442\u0447\u0438 \u0432\u0430\u0448\u0435\u0439 \u043a\u043e\u043c\u0430\u043d\u0434\u044b \u0438 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d\u044b 30 \u043e\u0431\u044b\u0447\u043d\u044b\u0445 \u0435\u0436\u0435\u0434\u043d\u0435\u0432\u043d\u044b\u0445 \u0446\u0438\u043a\u043b\u043e\u0432 \u0438\u0433\u0440\u044b. \u0422\u0435\u043a\u0443\u0449\u0430\u044f \u043a\u0430\u0440\u044c\u0435\u0440\u0430 \u0438\u0437\u043c\u0435\u043d\u0438\u0442\u0441\u044f; \u043f\u0435\u0440\u0435\u0434 \u0437\u0430\u043f\u0443\u0441\u043a\u043e\u043c \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u0442\u0441\u044f \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0435\u0451 \u0432 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0439 \u0441\u043b\u043e\u0442."

    const/16 v2, 0x1e

    invoke-direct {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->confirmAndStart(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public simulateSeason(Landroid/view/View;)V
    .locals 3

    const-string v0, "\u041f\u0435\u0440\u0435\u043c\u043e\u0442\u0430\u0442\u044c \u043e\u0434\u0438\u043d \u0441\u0435\u0437\u043e\u043d?"

    const-string v1, "\u0411\u0443\u0434\u0443\u0442 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u0441\u044b\u0433\u0440\u0430\u043d\u044b \u043c\u0430\u0442\u0447\u0438 \u0432\u0430\u0448\u0435\u0439 \u043a\u043e\u043c\u0430\u043d\u0434\u044b \u0438 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d\u044b 365 \u043e\u0431\u044b\u0447\u043d\u044b\u0445 \u0435\u0436\u0435\u0434\u043d\u0435\u0432\u043d\u044b\u0445 \u0446\u0438\u043a\u043b\u043e\u0432 \u0438\u0433\u0440\u044b. \u0422\u0435\u043a\u0443\u0449\u0430\u044f \u043a\u0430\u0440\u044c\u0435\u0440\u0430 \u0438\u0437\u043c\u0435\u043d\u0438\u0442\u0441\u044f; \u043f\u0435\u0440\u0435\u0434 \u0437\u0430\u043f\u0443\u0441\u043a\u043e\u043c \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u0442\u0441\u044f \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0435\u0451 \u0432 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0439 \u0441\u043b\u043e\u0442."

    const/16 v2, 0x16d

    invoke-direct {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->confirmAndStart(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public simulateThreeMonths(Landroid/view/View;)V
    .locals 3

    const-string v0, "\u041f\u0435\u0440\u0435\u043c\u043e\u0442\u0430\u0442\u044c \u0442\u0440\u0438 \u043c\u0435\u0441\u044f\u0446\u0430?"

    const-string v1, "\u0411\u0443\u0434\u0443\u0442 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u0441\u044b\u0433\u0440\u0430\u043d\u044b \u043c\u0430\u0442\u0447\u0438 \u0432\u0430\u0448\u0435\u0439 \u043a\u043e\u043c\u0430\u043d\u0434\u044b \u0438 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d\u044b 90 \u043e\u0431\u044b\u0447\u043d\u044b\u0445 \u0435\u0436\u0435\u0434\u043d\u0435\u0432\u043d\u044b\u0445 \u0446\u0438\u043a\u043b\u043e\u0432 \u0438\u0433\u0440\u044b. \u0422\u0435\u043a\u0443\u0449\u0430\u044f \u043a\u0430\u0440\u044c\u0435\u0440\u0430 \u0438\u0437\u043c\u0435\u043d\u0438\u0442\u0441\u044f; \u043f\u0435\u0440\u0435\u0434 \u0437\u0430\u043f\u0443\u0441\u043a\u043e\u043c \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u0442\u0441\u044f \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0435\u0451 \u0432 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0439 \u0441\u043b\u043e\u0442."

    const/16 v2, 0x5a

    invoke-direct {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->confirmAndStart(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public startSimulation(I)V
    .locals 2

    new-instance v0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;-><init>(Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$SeasonTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
