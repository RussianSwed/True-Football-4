.class public Lpl/mkrstudio/truefootball3/activities/MainActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
.implements Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;,
        Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;,
        Lpl/mkrstudio/truefootball3/activities/MainActivity$TabFactory;,
        Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;
    }
.end annotation


# instance fields
.field achievementsButton:Landroid/widget/Button;

.field autosaveFile:Ljava/io/File;

.field calfrView:Landroid/view/View;

.field confrView:Landroid/view/View;

.field facebookButton:Landroid/widget/ImageView;

.field fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field fragmentsOnStack:I

.field private final handler:Landroid/os/Handler;

.field inbfrView:Landroid/view/View;

.field interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field loadingDialog:Landroid/app/Dialog;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field mapTabInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field menuOfficeFragment:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

.field motivationalSpeech:Z

.field pager:Landroidx/viewpager/widget/ViewPager;

.field pagerAdapter:Lpl/mkrstudio/truefootball3/adapters/PagerAdapter;

.field reward:J

.field rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field saveGameButton:Landroid/widget/Button;

.field saveRunnable:Ljava/lang/Runnable;

.field scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

.field settingsButton:Landroid/widget/Button;

.field tabHost:Landroid/widget/TabHost;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mapTabInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->reward:J

    .line 1067
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$10;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$10;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->saveRunnable:Ljava/lang/Runnable;

    .line 1084
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static AddTab(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "tabHost",
            "tabSpec",
            "tabInfo"
        }
    .end annotation

    .line 1230
    new-instance p3, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabFactory;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p3, p0, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabFactory;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1231
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadRewardedVideoAd()V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/activities/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 127
    iget-object p0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private areTheSame(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    .line 1105
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private generatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 1148
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 1150
    :try_start_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1154
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 1155
    new-instance v2, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 1156
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    const/4 v6, 0x0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v7

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->isUseEditedData()Z

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayers(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;Lpl/mkrstudio/truefootball3/objects/EditedData;Z)V

    .line 1157
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    return-void
.end method

.method private initAutosaveFile()V
    .locals 4

    .line 260
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_autosave_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".sav"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->autosaveFile:Ljava/io/File;

    :cond_1
    return-void
.end method

.method private initDate()V
    .locals 2

    const v0, 0x7f08013b

    .line 523
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 524
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initFragments()V
    .locals 3

    .line 547
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 550
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MenuFragment;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment;-><init>()V

    const v2, 0x7f08010e

    .line 551
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 552
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private initMenuButtons()V
    .locals 2

    const v0, 0x7f08017d

    .line 275
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->facebookButton:Landroid/widget/ImageView;

    .line 312
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNextMatch()V
    .locals 5

    const v0, 0x7f08022c

    .line 528
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08022a

    .line 529
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 530
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const-string v3, ")"

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "-"

    .line 540
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private loadRewardedVideoAd()V
    .locals 3

    .line 228
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 231
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    const-string v2, "ca-app-pub-1066342364129157/9435305468"

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method private prepareSquads(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    .line 1130
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-ne v0, v1, :cond_2

    .line 1131
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 1132
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->generatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 1134
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->removeDuplicatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 1135
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->removeDuplicatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 1136
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto :goto_2

    .line 1138
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 1139
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->generatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 1141
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->removeDuplicatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 1142
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->removeDuplicatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 1143
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    :goto_2
    return-void
.end method

.method private removeDuplicatePlayers(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1112
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1113
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 1114
    :goto_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1115
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1116
    invoke-direct {p0, v2, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->areTheSame(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1117
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1121
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1122
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1123
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private showInterview()V
    .locals 5

    .line 357
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 358
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getMedia()Lpl/mkrstudio/truefootball3/objects/Media;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Media;->getJournalists()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Journalist;

    .line 359
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Journalist;->getRelationsWithUser()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 360
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getMedia()Lpl/mkrstudio/truefootball3/objects/Media;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Media;->getCurrentInterviewQuestion()Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;Lpl/mkrstudio/truefootball3/objects/Journalist;)V

    .line 361
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getMedia()Lpl/mkrstudio/truefootball3/objects/Media;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Media;->setCurrentInterviewQuestion(Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;)V

    .line 362
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$4;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 368
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/InterviewDialog;->show()V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getMedia()Lpl/mkrstudio/truefootball3/objects/Media;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Media;->setCurrentInterviewQuestion(Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public agreeJobOffer(Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jobOffer",
            "fromMessage"
        }
    .end annotation

    .line 1321
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/content/Context;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$InitJobChangedProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method autosave()V
    .locals 4

    const-string v0, "tf3Settings"

    const/4 v1, 0x0

    .line 942
    invoke-virtual {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "autosaveMode"

    .line 943
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v0, v1, :cond_0

    .line 944
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x1e

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    if-nez v0, :cond_3

    .line 945
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method getView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1271
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08034f

    .line 1272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1273
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public goToFragment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentId"
        }
    .end annotation

    const-string v0, "transfers"

    .line 1550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1551
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v1

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1552
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-direct {p1, v1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;-><init>(I)V

    .line 1553
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 1554
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 1555
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "friendlyOffers"

    .line 1556
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v1

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1558
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    invoke-direct {p1, v1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;-><init>(I)V

    .line 1559
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 1560
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 1561
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto :goto_0

    :cond_1
    const-string v0, "sponsorshipOffers"

    .line 1562
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1563
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v1

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1564
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-direct {p1, v1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;-><init>(I)V

    .line 1565
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 1566
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 1567
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto :goto_0

    :cond_2
    const-string v0, "jobOffers"

    .line 1568
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1569
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v1

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1570
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;

    invoke-direct {p1, v1}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;-><init>(Z)V

    .line 1571
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 1572
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 1573
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto :goto_0

    :cond_3
    const-string v0, "scouting"

    .line 1574
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1575
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v1

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1576
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;-><init>()V

    .line 1577
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 1578
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 1579
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto :goto_0

    :cond_4
    const-string v0, "locker_room"

    .line 1581
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1582
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v1

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1583
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;-><init>()V

    .line 1584
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 1585
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 1586
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    :cond_5
    :goto_0
    return-void
.end method

.method public hideAds()V
    .locals 2

    const v0, 0x7f080049

    .line 1166
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideCenterAndIcons()V
    .locals 2

    .line 1215
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    const v0, 0x7f08022b

    .line 1216
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080139

    .line 1217
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method initAds()V
    .locals 2

    .line 1593
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_0

    const v0, 0x7f080044

    .line 1594
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 1595
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$14;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$14;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 1607
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_0
    return-void
.end method

.method initialisePaging()V
    .locals 3

    .line 401
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragments:Ljava/util/List;

    .line 402
    const-class v1, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragments:Ljava/util/List;

    const-class v1, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragments:Ljava/util/List;

    const-class v1, Lpl/mkrstudio/truefootball3/fragments/ConfidenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/PagerAdapter;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/adapters/PagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->pagerAdapter:Lpl/mkrstudio/truefootball3/adapters/PagerAdapter;

    const v0, 0x7f080263

    .line 407
    invoke-super {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    .line 408
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 409
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->pagerAdapter:Lpl/mkrstudio/truefootball3/adapters/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 410
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method initialiseTabHost(Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    const v0, 0x1020012

    .line 415
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    .line 416
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 425
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 428
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Message;

    .line 429
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Message;->isRead()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    const-string v3, "Tab1"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0c0361

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v4, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;

    const-class v5, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    invoke-direct {v4, p0, v3, v5, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {p0, v0, v2, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->AddTab(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;)V

    .line 435
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mapTabInfo:Ljava/util/HashMap;

    iget-object v2, v4, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "Tab2"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f0c0197

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    new-instance v4, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;

    const-class v5, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;

    invoke-direct {v4, p0, v2, v5, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {p0, v0, v3, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->AddTab(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;)V

    .line 437
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mapTabInfo:Ljava/util/HashMap;

    iget-object v2, v4, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    const-string v2, "Tab3"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f0c01d5

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    new-instance v4, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;

    const-class v5, Lpl/mkrstudio/truefootball3/fragments/ConfidenceFragment;

    invoke-direct {v4, p0, v2, v5, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {p0, v0, v3, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->AddTab(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;)V

    .line 439
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mapTabInfo:Ljava/util/HashMap;

    iget-object v0, v4, Lpl/mkrstudio/truefootball3/activities/MainActivity$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 445
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p1

    const/4 v0, 0x1

    .line 446
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 448
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    .line 449
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3f59999a    # 0.85f

    const/16 v6, 0xc

    const v7, 0x3f4ccccd    # 0.8f

    const/16 v8, 0xe

    const/high16 v9, 0x3f400000    # 0.75f

    const/16 v10, 0x10

    const/16 v11, 0x12

    if-le v2, v11, :cond_3

    .line 451
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_1

    .line 452
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v10, :cond_4

    .line 453
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_1

    .line 454
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v8, :cond_5

    .line 455
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v6, :cond_6

    .line 457
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_6
    :goto_1
    const/4 v0, 0x2

    .line 460
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 461
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 462
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v12

    float-to-int v2, v2

    int-to-float v2, v2

    .line 463
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 464
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v11, :cond_7

    .line 465
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_2

    .line 466
    :cond_7
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v10, :cond_8

    .line 467
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_2

    .line 468
    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v8, :cond_9

    .line 469
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_2

    .line 470
    :cond_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v6, :cond_a

    .line 471
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 474
    :cond_a
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 475
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 476
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 477
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 910
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz p1, :cond_0

    .line 911
    new-instance p2, Lpl/mkrstudio/truefootball3/activities/MainActivity$9;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$9;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 936
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onArrangeFriendlyClicked()V
    .locals 3

    .line 1415
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1416
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;-><init>()V

    .line 1417
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f08010e

    .line 1419
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 1420
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1422
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1171
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1173
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 1174
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 1176
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0547

    .line 1177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0803d0

    .line 1179
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1180
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MainActivity$12;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$12;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08022d

    .line 1190
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1191
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MainActivity$13;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$13;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1200
    :cond_0
    iget-boolean v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->motivationalSpeech:Z

    if-nez v2, :cond_2

    sub-int/2addr v0, v1

    .line 1201
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    if-nez v0, :cond_1

    .line 1203
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showCenterAndIcons()V

    .line 1204
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideAds()V

    .line 1206
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 1208
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    if-eqz v0, :cond_3

    .line 1209
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCompetitionSelected(Ljava/lang/String;Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedCompetitionCode",
            "scd"
        }
    .end annotation

    .line 952
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->hide()V

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    const-string v0, "_1"

    .line 955
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "_2"

    .line 956
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_3"

    .line 957
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_4"

    .line 958
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_5"

    .line 959
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_6"

    .line 960
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_7"

    .line 961
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_8"

    .line 962
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p2, 0x1

    .line 965
    :cond_1
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr v0, v1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 966
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-static {v1, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByCode(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 967
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    :cond_2
    return-void
.end method

.method public onContinueGameButtonClicked()V
    .locals 0

    return-void
.end method

.method public onContinueMatchButtonClicked()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 157
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0a0022

    .line 160
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->setContentView(I)V

    .line 163
    sget-object v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 167
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 170
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    const-string v2, "ca-app-pub-1066342364129157/8503687820"

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    .line 195
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadRewardedVideoAd()V

    .line 197
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    if-nez v0, :cond_1

    .line 200
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Oops. Restarting app..."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initialiseTabHost(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    .line 209
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    const-string v1, "tab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 211
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initialisePaging()V

    .line 213
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initMenuButtons()V

    .line 215
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initFragments()V

    .line 217
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initAutosaveFile()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1613
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 1615
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onEmployeeSelected(Lpl/mkrstudio/truefootball3/objects/Employee;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "employee",
            "toHire"
        }
    .end annotation

    .line 1403
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1404
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/EmployeeInfoFragment;

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/EmployeeInfoFragment;-><init>(Lpl/mkrstudio/truefootball3/objects/Employee;Z)V

    .line 1405
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f08010e

    .line 1407
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p2, 0x0

    .line 1408
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1410
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onHallOfTrophiesClicked()V
    .locals 3

    .line 1439
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1440
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;-><init>()V

    .line 1441
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f08010e

    .line 1443
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 1444
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1446
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onHistorySelected(Lpl/mkrstudio/truefootball3/objects/History;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "history",
            "current"
        }
    .end annotation

    .line 1391
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1392
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;-><init>(Lpl/mkrstudio/truefootball3/objects/History;Z)V

    .line 1393
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f08010e

    .line 1395
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p2, 0x0

    .line 1396
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1398
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onJobOfferSelected(Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jobOffer",
            "fromMessage"
        }
    .end annotation

    .line 1309
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1310
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;-><init>(Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V

    .line 1311
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f08010e

    .line 1313
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p2, 0x0

    .line 1314
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1316
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onMenuButtonClicked(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonId"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 613
    :pswitch_1
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 614
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;-><init>()V

    .line 615
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 796
    :pswitch_2
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 797
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->WORLD_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 798
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 655
    :pswitch_3
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 656
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-direct {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;-><init>(I)V

    .line 657
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 607
    :pswitch_4
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 608
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;-><init>()V

    .line 609
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 748
    :pswitch_5
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 749
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->THIRD_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 750
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 601
    :pswitch_6
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 602
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;-><init>()V

    .line 603
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 637
    :pswitch_7
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 638
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;-><init>()V

    .line 639
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 814
    :pswitch_8
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 815
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SUPER_CUP_DOMESTIC:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 816
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 808
    :pswitch_9
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 809
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SUPER_CUP_CONTINENTAL:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 810
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 643
    :pswitch_a
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 644
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;-><init>()V

    .line 645
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 595
    :pswitch_b
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 596
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    invoke-direct {p1, v1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;-><init>(Z)V

    .line 597
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 619
    :pswitch_c
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 620
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-direct {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;-><init>(I)V

    .line 621
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 766
    :pswitch_d
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 767
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SIXTH_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 768
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 853
    :pswitch_e
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 854
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 742
    :pswitch_f
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 743
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SECOND_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 744
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 730
    :pswitch_10
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 731
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;-><init>()V

    .line 732
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 831
    :pswitch_11
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 832
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;-><init>()V

    .line 833
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 864
    :pswitch_12
    iput-boolean v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->motivationalSpeech:Z

    .line 865
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 866
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTodayPlayerMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->setCurrentMatch(Lpl/mkrstudio/truefootball3/objects/Match;)V

    .line 867
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;

    invoke-direct {p1, v1, v1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;-><init>(ZZ)V

    .line 868
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 802
    :pswitch_13
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 803
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 804
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 820
    :pswitch_14
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;-><init>()V

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 673
    :pswitch_15
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 674
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;-><init>()V

    .line 675
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 772
    :pswitch_16
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 773
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->NATIONAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 774
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 571
    :pswitch_17
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 572
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/MenuTeamFragment;-><init>()V

    .line 573
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 574
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 575
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto/16 :goto_0

    .line 848
    :pswitch_18
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 849
    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 579
    :pswitch_19
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 580
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p1, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;-><init>(Z)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->menuOfficeFragment:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    .line 581
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 582
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 583
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto/16 :goto_0

    .line 872
    :pswitch_1a
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->isGameOver()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 873
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 874
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0033

    .line 875
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 877
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c028a

    .line 878
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080259

    .line 880
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 881
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$8;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 889
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTodayPlayerMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 891
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTodayPlayerMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->prepareSquads(Lpl/mkrstudio/truefootball3/objects/Match;)V

    .line 893
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 895
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    invoke-direct {p1, v2}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;-><init>(Z)V

    .line 896
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 897
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 898
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto/16 :goto_0

    .line 900
    :cond_2
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;

    invoke-direct {p1, p0, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$NextDayProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 587
    :pswitch_1b
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 588
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;-><init>()V

    .line 589
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    .line 590
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAds()V

    .line 591
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->hideCenterAndIcons()V

    goto/16 :goto_0

    .line 625
    :pswitch_1c
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 626
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;

    invoke-direct {p1, v1}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;-><init>(Z)V

    .line 627
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 837
    :pswitch_1d
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 838
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;-><init>()V

    .line 839
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 724
    :pswitch_1e
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 725
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    invoke-direct {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;-><init>(I)V

    .line 726
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 754
    :pswitch_1f
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 755
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FOURTH_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 756
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 736
    :pswitch_20
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 737
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FIRST_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 738
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 760
    :pswitch_21
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 761
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FIFTH_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 762
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 778
    :pswitch_22
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 779
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FEDERATION_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 780
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 667
    :pswitch_23
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 668
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;-><init>()V

    .line 669
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 784
    :pswitch_24
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 785
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->COMMUNITY_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 786
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 631
    :pswitch_25
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 632
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;-><init>()V

    .line 633
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 790
    :pswitch_26
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 791
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionByTypeAndCountry(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Country;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    .line 792
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 679
    :pswitch_27
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->rewardedVideoAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz p1, :cond_3

    .line 680
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;-><init>(Landroid/content/Context;)V

    .line 681
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 719
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->show()V

    goto :goto_0

    .line 661
    :pswitch_28
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 662
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;-><init>()V

    .line 663
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 649
    :pswitch_29
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/2addr p1, v2

    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 650
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;-><init>()V

    .line 651
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 843
    :pswitch_2a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lpl/mkrstudio/truefootball3/activities/AchievementsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800a4
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onOpponentSelected(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 1460
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1461
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentSquadFragment;

    invoke-direct {v0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentSquadFragment;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 1462
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f08010e

    .line 1464
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 1465
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1467
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 1620
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1621
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1622
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1624
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 1626
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onProceedToMatchButtonClicked()V
    .locals 2

    const/4 v0, 0x0

    .line 1451
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->motivationalSpeech:Z

    .line 1452
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1453
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1454
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->onBackPressed()V

    .line 1455
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->onBackPressed()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 336
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initDate()V

    .line 337
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initNextMatch()V

    .line 338
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->updateNumberOfUnreadMessages()V

    .line 339
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->refreshMessages()V

    .line 340
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->renderCalendar()V

    .line 341
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showConfidences()V

    .line 342
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showAchievements()V

    .line 343
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getMedia()Lpl/mkrstudio/truefootball3/objects/Media;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Media;->isInterviewQuestion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showInterview()V

    .line 347
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 348
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    :cond_1
    const v0, 0x7f0801f7

    .line 351
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public onScoutSelected(Lpl/mkrstudio/truefootball3/objects/Scout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scout"
        }
    .end annotation

    .line 1427
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1428
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    invoke-direct {v0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;-><init>(Lpl/mkrstudio/truefootball3/objects/Scout;)V

    .line 1429
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f08010e

    .line 1431
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 1432
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1434
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1236
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    .line 1237
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onYouthTeamSelected(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTeamName"
        }
    .end annotation

    .line 1297
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    .line 1298
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-direct {v0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;-><init>(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f08010e

    .line 1301
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 1302
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1304
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method openFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08010e

    .line 558
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 559
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 561
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public openStackedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragmentsOnStack:I

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public showOtherCountriesCompetitionsDialog()V
    .locals 3

    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getOtherCountriesCompetition(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MainActivity$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->show()V

    return-void
.end method

.method public refreshMessages()V
    .locals 3

    .line 494
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;

    .line 495
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->sortMessages(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    .line 496
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->inbfrView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 497
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->inbfrView:Landroid/view/View;

    .line 498
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->inbfrView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 499
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, v2, v1}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->showMessageList(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V

    .line 500
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->inbfrView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/InboxFragment;->attachListener(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public renderCalendar()V
    .locals 3

    .line 505
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragments:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;

    .line 506
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->calfrView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 507
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->calfrView:Landroid/view/View;

    .line 508
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->calfrView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 509
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, v2, v1}, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;->renderCalendar(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public save()Z
    .locals 5

    .line 1523
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1525
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1526
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1529
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 1530
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;-><init>()V

    .line 1531
    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->copyData(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    .line 1533
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->autosaveFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1534
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1535
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1536
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 1537
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1

    :cond_1
    const-string v0, "failure"

    .line 1544
    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method showAchievements()V
    .locals 9

    .line 376
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->getAchievementsToShow(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 379
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0a0032

    .line 380
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f08002a

    .line 382
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080259

    .line 383
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "achievement"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "string"

    invoke-virtual {v6, v4, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MainActivity$5;

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/activities/MainActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public showAds()V
    .locals 2

    const v0, 0x7f080049

    .line 1161
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->initAds()V

    return-void
.end method

.method public showCenterAndIcons()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    const v0, 0x7f08022b

    .line 1223
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080139

    .line 1224
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showConfidences()V
    .locals 3

    .line 514
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->fragments:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/ConfidenceFragment;

    .line 515
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->confrView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 516
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/ConfidenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->confrView:Landroid/view/View;

    .line 517
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->confrView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 518
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, v2, v1}, Lpl/mkrstudio/truefootball3/fragments/ConfidenceFragment;->showConfidences(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public updateNumberOfUnreadMessages()V
    .locals 4

    .line 481
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    .line 482
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 483
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 485
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Message;

    .line 486
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Message;->isRead()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c0361

    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
