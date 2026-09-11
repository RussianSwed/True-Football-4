.class public Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NextDayProgressTask"
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
.field private activity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

.field private dialog:Landroid/app/Dialog;

.field private event:B

.field loadingTV:Landroid/widget/TextView;

.field private matchToday:Z

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/activities/MainActivity;)V
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

    .line 979
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 975
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->matchToday:Z

    .line 976
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->event:B

    .line 980
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    .line 981
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 1008
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    const-string v0, "tf3Settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "autosaveMode"

    .line 1009
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "simulationMode"

    const/4 v3, 0x1

    .line 1010
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x16b

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, p1, :cond_d

    if-nez v7, :cond_d

    .line 1032
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {v8, v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->nextDay(Landroid/content/Context;)V

    .line 1033
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-ne v8, v3, :cond_6

    .line 1034
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1035
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1036
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v8, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1038
    :cond_4
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1041
    :cond_5
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->setExtras(Ljava/util/List;)V

    .line 1042
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_6
    :goto_2
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTodayPlayerMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    .line 1050
    :cond_7
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->isGameOver()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    :cond_8
    if-lez v0, :cond_c

    const/4 v8, 0x6

    if-ne v0, v3, :cond_9

    .line 1056
    iget-object v9, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v9, v9, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    rem-int/2addr v9, v2

    if-eqz v9, :cond_b

    :cond_9
    if-ne v0, v4, :cond_a

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v9, v9, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x1e

    if-eqz v9, :cond_b

    :cond_a
    if-ne v0, v5, :cond_c

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v9, v9, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    if-nez v8, :cond_c

    :cond_b
    const/4 v7, 0x1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1063
    :cond_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 971
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

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

    .line 998
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 999
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :catch_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->autosave()V

    .line 1004
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->onResume()V

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

    .line 971
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 985
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 986
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 987
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 988
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 990
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->loadingTV:Landroid/widget/TextView;

    const v1, 0x7f0c039e

    .line 991
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
