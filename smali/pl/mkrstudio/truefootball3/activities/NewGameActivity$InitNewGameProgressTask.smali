.class public Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;
.super Landroid/os/AsyncTask;
.source "NewGameActivity.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/activities/ProgressTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/NewGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitNewGameProgressTask"
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
.field private activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

.field private dialog:Landroid/app/Dialog;

.field private progress:I

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V
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

    .line 604
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 588
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->progress:I

    .line 605
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    .line 606
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

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

    .line 584
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doInBackground([Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/String;
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v0, "USA_1E"

    const-string v1, "USA_1W"

    const-string v2, "USA"

    .line 635
    :try_start_0
    iget-object v3, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 637
    new-instance v3, Ljava/util/GregorianCalendar;

    iget-object v4, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v7, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x7

    const/4 v12, 0x5

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    iget-object v13, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v13, v13, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v13

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x8

    const/16 v15, 0xa

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v3, v4, v7, v13}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 v4, 0x2

    .line 638
    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 639
    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    const-string v7, "11.0"

    .line 641
    invoke-virtual {v10, v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->setGameVersion(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v10, v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->setGameOver(Z)V

    .line 643
    iget-object v7, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v10, v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->setChosenTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 644
    new-instance v7, Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-direct {v7, v3}, Lpl/mkrstudio/truefootball3/objects/Time;-><init>(Ljava/util/GregorianCalendar;)V

    invoke-virtual {v10, v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->setTime(Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 645
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Finances;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-direct {v3, v7}, Lpl/mkrstudio/truefootball3/objects/Finances;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;)V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setFinances(Lpl/mkrstudio/truefootball3/objects/Finances;)V

    .line 646
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/Friendlies;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setFriendlies(Lpl/mkrstudio/truefootball3/objects/Friendlies;)V

    .line 647
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setDressingRoom(Lpl/mkrstudio/truefootball3/objects/DressingRoom;)V

    .line 648
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v13

    invoke-direct {v3, v7, v13}, Lpl/mkrstudio/truefootball3/objects/Stadium;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Finances;)V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setStadium(Lpl/mkrstudio/truefootball3/objects/Stadium;)V

    .line 649
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v7

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v13

    iget-object v14, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {v3, v7, v13, v14}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;-><init>(Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;Landroid/content/Context;)V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setSponsorships(Lpl/mkrstudio/truefootball3/objects/Sponsorships;)V

    .line 650
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/Training;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setTraining(Lpl/mkrstudio/truefootball3/objects/Training;)V

    .line 651
    iget-object v3, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v7

    invoke-virtual {v3, v7}, Lpl/mkrstudio/truefootball3/objects/Team;->setTraining(Lpl/mkrstudio/truefootball3/objects/Training;)V

    .line 652
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Transfers;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setTransfers(Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 653
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Jobs;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/Jobs;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setJobs(Lpl/mkrstudio/truefootball3/objects/Jobs;)V

    .line 654
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Inbox;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/Inbox;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setInbox(Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 655
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/History;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/History;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setCurrentHistory(Lpl/mkrstudio/truefootball3/objects/History;)V

    .line 656
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v3

    iget-object v7, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3, v7}, Lpl/mkrstudio/truefootball3/objects/History;->setManagedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 657
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v3

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lpl/mkrstudio/truefootball3/objects/History;->setBeginDate(Ljava/lang/String;)V

    .line 658
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setPastHistories(Ljava/util/List;)V

    .line 659
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/MatchFixing;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setMatchFixing(Lpl/mkrstudio/truefootball3/objects/MatchFixing;)V

    .line 660
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/Supporters;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setSupporters(Lpl/mkrstudio/truefootball3/objects/Supporters;)V

    .line 661
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Chairman;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v7

    invoke-direct {v3, v7}, Lpl/mkrstudio/truefootball3/objects/Chairman;-><init>(Lpl/mkrstudio/truefootball3/enums/Faces;)V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setChairman(Lpl/mkrstudio/truefootball3/objects/Chairman;)V

    .line 662
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/AI;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/AI;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setAi(Lpl/mkrstudio/truefootball3/objects/AI;)V

    .line 663
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setExtras(Ljava/util/List;)V

    .line 664
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object v3

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->setTrophies(Ljava/util/List;)V

    .line 667
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    sget-object v7, Lpl/mkrstudio/truefootball3/objects/Tactics;->USER_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics;

    invoke-virtual {v3, v7}, Lpl/mkrstudio/truefootball3/objects/Team;->setTactics(Lpl/mkrstudio/truefootball3/objects/Tactics;)V

    .line 669
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 670
    iget-object v7, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getCompetitions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 671
    iget-object v14, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v14, v14, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 672
    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 673
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_1
    iget-object v7, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "north_america"

    const-string v13, "asia"

    const-string v15, "south_america"

    const-string v9, "europe"

    const-string v12, "africa"

    const-string v5, "oceania"

    const/4 v4, 0x3

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_2
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_3
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_4
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    goto :goto_2

    :sswitch_5
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_2

    const/4 v7, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, -0x1

    :goto_2
    const-string v14, "07.01"

    if-eqz v7, :cond_9

    if-eq v7, v11, :cond_8

    const/4 v11, 0x2

    if-eq v7, v11, :cond_6

    if-eq v7, v4, :cond_5

    const/4 v4, 0x4

    if-eq v7, v4, :cond_4

    const/4 v4, 0x5

    if-eq v7, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    :try_start_2
    const-string v4, "OCE_CC"

    .line 715
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    const-string v4, "AFR_CC"

    .line 709
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "AFR_EC"

    .line 710
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "AFR_SUP"

    .line 711
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string v4, "ASI_CC"

    .line 704
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "ASI_EC"

    .line 705
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 694
    :cond_6
    iget-object v4, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v4

    const-string v7, "01.01"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "NAM_CC"

    .line 695
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "NAM_EC"

    .line 696
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 697
    :cond_7
    iget-object v4, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_3

    :cond_8
    const-string v4, "SAM_CC"

    .line 688
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "SAM_EC"

    .line 689
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "SAM_SUP"

    .line 690
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 679
    :cond_9
    iget-object v4, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "EUR_CC"

    .line 680
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "EUR_EC"

    .line 681
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "EUR_FC"

    .line 682
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "EUR_SUP"

    .line 683
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_a
    :goto_3
    iget-object v4, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->observedCountries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 721
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v11

    invoke-virtual {v11, v7}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    .line 722
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getCompetitions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 723
    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 724
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 727
    :cond_d
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 728
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_e
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 731
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    const-string v0, "WORLD_CUP"

    .line 740
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NTWCQ"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NTEUQ"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NTU2Q"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NTWCF"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NTEUR"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NTU2F"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->editedRB:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {v10, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->setUseEditedData(Z)V

    .line 743
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->isUseEditedData()Z

    move-result v0

    if-nez v0, :cond_10

    .line 744
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->setEditedData(Lpl/mkrstudio/truefootball3/objects/EditedData;)V

    :cond_10
    const/4 v0, 0x1

    .line 746
    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 748
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;

    iget-object v1, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;-><init>(Landroid/content/Context;)V

    .line 749
    iget-object v1, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v8}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateClubStaff(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;ZLpl/mkrstudio/truefootball3/activities/ProgressTask;)V

    .line 750
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v1

    invoke-virtual {v10, v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->setClubStaff(Lpl/mkrstudio/truefootball3/objects/ClubStaff;)V

    .line 752
    invoke-virtual {v8, v4}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 754
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/Scouting;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getScouts()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Lpl/mkrstudio/truefootball3/objects/Scouting;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->setScouting(Lpl/mkrstudio/truefootball3/objects/Scouting;)V

    .line 755
    iget-object v1, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateJournalists(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;I)V

    .line 756
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Media;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getJournalists()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Media;-><init>(Ljava/util/List;)V

    invoke-virtual {v10, v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->setMedia(Lpl/mkrstudio/truefootball3/objects/Media;)V

    const/4 v1, 0x1

    .line 758
    invoke-virtual {v8, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 760
    new-instance v1, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;

    iget-object v2, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {v1, v2}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;-><init>(Landroid/content/Context;)V

    .line 761
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->generateNameLists(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 762
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/Youth;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v18

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v19

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->getFirstNames()Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->getLastNames()Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->getNationalities()Ljava/util/List;

    move-result-object v22

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v23

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lpl/mkrstudio/truefootball3/objects/Youth;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;)V

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->setYouth(Lpl/mkrstudio/truefootball3/objects/Youth;)V

    const/4 v1, 0x1

    .line 764
    invoke-virtual {v8, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 766
    new-instance v1, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;

    iget-object v2, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {v1, v2}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;-><init>(Landroid/content/Context;)V

    .line 767
    iget-object v2, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v10, v8}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->generateCompetitions(Ljava/lang/String;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;)V

    .line 768
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v1

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v3, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {v10, v2, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getRivalries(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Supporters;->setRivalries(Ljava/util/List;)V

    const/16 v1, 0xf

    .line 770
    invoke-virtual {v8, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 772
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 773
    :cond_11
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x28

    if-eqz v1, :cond_12

    invoke-virtual {v8, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 774
    :cond_12
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v8, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 775
    :cond_13
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 776
    :cond_14
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x14

    if-eqz v1, :cond_15

    invoke-virtual {v8, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 777
    :cond_15
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v8, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 779
    :cond_16
    new-instance v1, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    iget-object v2, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {v1, v2}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getFirstNames()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->setFirstNames(Ljava/util/HashMap;)V

    .line 781
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getLastNames()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->setLastNames(Ljava/util/HashMap;)V

    .line 782
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->getTeamsToGeneratePlayers(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;)Ljava/util/List;

    move-result-object v2

    .line 784
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v6

    iget-object v0, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->editedRB:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayers(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;Lpl/mkrstudio/truefootball3/objects/EditedData;Z)V

    :try_start_ntplay
    invoke-static {v10}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->ensureFromUserData(Lpl/mkrstudio/truefootball3/objects/UserData;)V
    :try_end_ntplay
    .catch Ljava/lang/Exception; {:try_start_ntplay .. :try_end_ntplay} :catch_ntplay

    :catch_ntplay
    const/16 v0, 0x73

    .line 786
    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 788
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    iget-object v1, v8, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->activity:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {v0, v1, v10, v8}, Lpl/mkrstudio/truefootball3/objects/Competitions;->updateCompetitions(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;)V

    .line 790
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 793
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    goto :goto_6

    :cond_17
    const/4 v1, 0x0

    .line 797
    :goto_6
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v0

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Supporters;->selectFavouritePlayers(Ljava/util/List;)V

    .line 798
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getAi()Lpl/mkrstudio/truefootball3/objects/AI;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 799
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v17

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v18

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v19

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object v20

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v21

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v22

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v23

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v24

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v25

    invoke-virtual/range {v17 .. v25}, Lpl/mkrstudio/truefootball3/objects/Finances;->makeMonthlyFinances(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/objects/Sponsorships;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 800
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v0

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildChairmanStartingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 801
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v0

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildAssistantStartingMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "error"

    .line 818
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x617f816a -> :sswitch_5
        -0x54a72586 -> :sswitch_4
        -0x4d004a5e -> :sswitch_3
        -0x33f24e64 -> :sswitch_2
        0x2dd4ca -> :sswitch_1
        0x64d078d4 -> :sswitch_0
    .end sparse-switch
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

    .line 629
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->publishProgress([Ljava/lang/Object;)V

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

    .line 584
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->onPostExecute(Ljava/lang/String;)V

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

    .line 593
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 594
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :catch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 600
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 601
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->finish()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 610
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 611
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 612
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 613
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c03a0

    .line 615
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 616
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

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

    .line 621
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->progress:I

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->progress:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 623
    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->progress:I

    .line 624
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
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

    .line 584
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
