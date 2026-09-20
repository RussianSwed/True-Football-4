.class public Lpl/mkrstudio/truefootball3/objects/UserData;
.super Landroidx/multidex/MultiDexApplication;
.source "UserData.java"


# instance fields
.field ai:Lpl/mkrstudio/truefootball3/objects/AI;

.field chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

.field chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

.field competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

.field currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

.field currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

.field dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

.field extras:Ljava/util/List;

.field finances:Lpl/mkrstudio/truefootball3/objects/Finances;

.field friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

.field gameOver:Z

.field gameVersion:Ljava/lang/String;

.field inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

.field jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

.field leagueNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

.field media:Lpl/mkrstudio/truefootball3/objects/Media;

.field pastHistories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            ">;"
        }
    .end annotation
.end field

.field sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

.field stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

.field supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

.field teamAnalyses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;"
        }
    .end annotation
.end field

.field time:Lpl/mkrstudio/truefootball3/objects/Time;

.field training:Lpl/mkrstudio/truefootball3/objects/Training;

.field transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

.field trophies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Trophy;",
            ">;"
        }
    .end annotation
.end field

.field useEditedData:Z

.field world:Lpl/mkrstudio/truefootball3/objects/World;

.field youth:Lpl/mkrstudio/truefootball3/objects/Youth;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->pastHistories:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->trophies:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->leagueNames:Ljava/util/HashMap;

    .line 68
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    return-void
.end method

.method private buildFewMatchesQuestion()V
    .locals 8

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v3, 0x0

    .line 323
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 324
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    .line 325
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v6, v7, :cond_0

    .line 326
    :cond_1
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v5, v2, v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getPlayerMonthlyApps(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 329
    :cond_2
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {v4, v2, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_3
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/UserData$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/objects/UserData$3;-><init>(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v1

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v3

    .line 347
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 348
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v5

    div-int/lit8 v6, v1, 0x2

    if-ge v5, v6, :cond_4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    if-ltz v5, :cond_5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_4

    :cond_5
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v6, v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 349
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 351
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 352
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 353
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    const v3, 0x7f0c04c2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lpl/mkrstudio/truefootball3/objects/Media;->buildQuestion(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private buildGoodFormQuestion()V
    .locals 9

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v4, 0x0

    .line 362
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 363
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v7

    .line 364
    sget-object v8, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v7, v8, :cond_1

    .line 365
    :cond_2
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getPlayerRatings()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPlayerRating(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 367
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6, v2, v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getPlayerMonthlyApps(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v8

    add-int/2addr v3, v8

    .line 368
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6, v2, v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getPlayerMonthlyApps(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getMonthlyRating()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    goto :goto_1

    :cond_3
    if-lez v3, :cond_0

    .line 373
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-direct {v5, v2, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_4
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/UserData$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/objects/UserData$4;-><init>(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 389
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 390
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    const v2, 0x7f0c04c8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lpl/mkrstudio/truefootball3/objects/Media;->buildQuestion(ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "teams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Team;"
        }
    .end annotation

    .line 836
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 837
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public acceptJobOffer(Lpl/mkrstudio/truefootball3/objects/JobOffer;Landroid/content/Context;Lpl/mkrstudio/truefootball3/activities/ProgressTask;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jobOffer",
            "context",
            "task"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 395
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Time;->setBeginningOfNewJob(Z)V

    .line 396
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 397
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setChosenTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 398
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Finances;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-direct {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Finances;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;)V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setFinances(Lpl/mkrstudio/truefootball3/objects/Finances;)V

    .line 399
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/Friendlies;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setFriendlies(Lpl/mkrstudio/truefootball3/objects/Friendlies;)V

    .line 400
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    invoke-direct {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Stadium;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Finances;)V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setStadium(Lpl/mkrstudio/truefootball3/objects/Stadium;)V

    .line 401
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-direct {v4, v5, v6, v1}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;-><init>(Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setSponsorships(Lpl/mkrstudio/truefootball3/objects/Sponsorships;)V

    .line 402
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/Training;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setTraining(Lpl/mkrstudio/truefootball3/objects/Training;)V

    .line 403
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Team;->setTraining(Lpl/mkrstudio/truefootball3/objects/Training;)V

    .line 404
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Transfers;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/Transfers;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setTransfers(Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 405
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Jobs;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/Jobs;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setJobs(Lpl/mkrstudio/truefootball3/objects/Jobs;)V

    .line 406
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Inbox;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setInbox(Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 407
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/MatchFixing;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setMatchFixing(Lpl/mkrstudio/truefootball3/objects/MatchFixing;)V

    .line 408
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/Supporters;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setSupporters(Lpl/mkrstudio/truefootball3/objects/Supporters;)V

    .line 409
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setDressingRoom(Lpl/mkrstudio/truefootball3/objects/DressingRoom;)V

    .line 411
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/Chairman;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v5

    invoke-direct {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Chairman;-><init>(Lpl/mkrstudio/truefootball3/enums/Faces;)V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setChairman(Lpl/mkrstudio/truefootball3/objects/Chairman;)V

    .line 412
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/AI;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/AI;-><init>()V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setAi(Lpl/mkrstudio/truefootball3/objects/AI;)V

    .line 414
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/History;->setEndDate(Ljava/lang/String;)V

    .line 416
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 417
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getAllTeams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 418
    :cond_1
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 419
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 420
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 421
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-direct {v7, v5, v2, v8, v9}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/History;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_2
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->pastHistories:Ljava/util/List;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/History;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/History;-><init>()V

    iput-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    .line 430
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/History;->setManagedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 431
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/History;->setBeginDate(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/objects/Tactics;->USER_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics;

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Team;->setTactics(Lpl/mkrstudio/truefootball3/objects/Tactics;)V

    .line 435
    new-instance v4, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;

    invoke-direct {v4, v1}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;-><init>(Landroid/content/Context;)V

    .line 436
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v8

    if-eq v7, v8, :cond_3

    move-object/from16 v7, p3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v7, p3

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v4, v5, v6, v8, v7}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateClubStaff(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;ZLpl/mkrstudio/truefootball3/activities/ProgressTask;)V

    .line 437
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v5

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->setPeopleToHire(Ljava/util/List;)V

    .line 438
    :cond_4
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v5

    iput-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    .line 439
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/Scouting;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getScouts()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Scouting;-><init>(Ljava/util/List;)V

    .line 440
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->setScouting(Lpl/mkrstudio/truefootball3/objects/Scouting;)V

    .line 441
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    const/4 v7, 0x6

    invoke-virtual {v4, v5, v6, v7}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateJournalists(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;I)V

    .line 442
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/Media;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->getJournalists()Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Media;-><init>(Ljava/util/List;)V

    iput-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    .line 444
    new-instance v4, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;

    invoke-direct {v4, v1}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;-><init>(Landroid/content/Context;)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->generateNameLists(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 446
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/Youth;

    iget-object v11, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v12, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->getFirstNames()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->getLastNames()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->getNationalities()Ljava/util/List;

    move-result-object v15

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    move-object v10, v5

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lpl/mkrstudio/truefootball3/objects/Youth;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;)V

    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->setYouth(Lpl/mkrstudio/truefootball3/objects/Youth;)V

    .line 448
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getCompetitions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 450
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 451
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 452
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 456
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 458
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v8, "north_america"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_1
    const-string v8, "asia"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_2
    const-string v8, "south_america"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_3
    const-string v8, "europe"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_4
    const-string v8, "africa"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    const/4 v7, 0x1

    goto :goto_3

    :sswitch_5
    const-string v8, "oceania"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    :goto_3
    const-string v6, "SAM_EC"

    const-string v8, "SAM_CC"

    const-string v11, "7.0"

    const-string v12, "8.0"

    const-string v13, "11.0"

    const-string v14, "10.0"

    const-string v15, "9.0"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    .line 501
    :pswitch_0
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v10

    const-string v11, "NAM_EC"

    const-string v3, "NAM_CC"

    if-ne v7, v10, :cond_e

    .line 502
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 504
    :cond_d
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 507
    :cond_e
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 509
    :cond_f
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 515
    :pswitch_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    const-string v10, "ASI_EC"

    const-string v11, "ASI_CC"

    if-ne v3, v7, :cond_10

    .line 516
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 519
    :cond_10
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 485
    :pswitch_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    const-string v10, "SAM_SUP"

    if-ne v3, v7, :cond_12

    .line 486
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 489
    :cond_11
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 492
    :cond_12
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 495
    :cond_13
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 460
    :pswitch_3
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v7, 0x5

    if-eq v3, v7, :cond_14

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v7, 0x6

    if-ne v3, v7, :cond_20

    :cond_14
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v3

    const-string v7, "07.01"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 461
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    const-string v10, "EUR_EC"

    const-string v9, "EUR_CC"

    if-ne v3, v7, :cond_18

    .line 462
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 465
    :cond_15
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v7, "EUR_SUP"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    const-string v7, "EUR_SUP"

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_16
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 468
    :cond_17
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v7, "EUR_FC"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    const-string v7, "EUR_FC"

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 471
    :cond_18
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    const-string v3, "EUR_SUP"

    .line 474
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_1a
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1b
    const-string v3, "EUR_FC"

    .line 477
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 533
    :pswitch_4
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    const-string v9, "AFR_SUP"

    const-string v10, "AFR_EC"

    const-string v1, "AFR_CC"

    if-ne v3, v7, :cond_1d

    .line 534
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 537
    :cond_1c
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 540
    :cond_1d
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 543
    :cond_1e
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 525
    :pswitch_5
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    const-string v7, "OCE_CC"

    if-ne v1, v3, :cond_1f

    .line 526
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 528
    :cond_1f
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_20
    :goto_4
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "WORLD_CUP"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 551
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 553
        :cond_21
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    const-string v3, "NTWCF"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "NTEUR"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "NTWCQ"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "NTEUQ"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 559
    new-instance v9, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {v9, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 563
    :cond_22
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 564
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 566
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    if-eq v1, v2, :cond_27

    .line 568
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_23
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 569
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 570
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 571
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/4 v2, 0x1

    .line 574
    :cond_24
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v7, v9, :cond_23

    .line 575
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v7, v9, :cond_23

    .line 576
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 581
    :cond_25
    new-instance v1, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_26

    const-string v2, ""

    goto :goto_8

    .line 582
    :cond_26
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v2

    :goto_8
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v0, v6}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->generateCompetitions(Ljava/lang/String;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;)V

    .line 583
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 584
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_27
    move-object/from16 v3, p2

    .line 590
    :cond_28
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getRivalries(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Supporters;->setRivalries(Ljava/util/List;)V

    .line 592
    new-instance v4, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    invoke-direct {v4, v3}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    .line 593
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {v4, v1, v2}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->getTeamsToGeneratePlayers(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;)Ljava/util/List;

    move-result-object v5

    .line 594
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v8, 0x0

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v9

    iget-boolean v10, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->useEditedData:Z

    invoke-virtual/range {v4 .. v10}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayers(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;Lpl/mkrstudio/truefootball3/objects/EditedData;Z)V

    .line 596
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->updateCompetitions(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;)V

    .line 598
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-virtual {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    const/4 v2, 0x0

    .line 600
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 601
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    .line 604
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Supporters;->selectFavouritePlayers(Ljava/util/List;)V

    .line 605
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 606
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    iget-object v11, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual/range {v3 .. v11}, Lpl/mkrstudio/truefootball3/objects/Finances;->makeMonthlyFinances(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/objects/Sponsorships;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 607
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildChairmanStartingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 608
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildAssistantStartingMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 609
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->setBeginningOfNewJob(Z)V

    return-void

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addAnalyzedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 1310
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)V

    .line 1311
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAwayMatchFinances()V
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->addTripCost()V

    .line 1040
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1043
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->addDonations(Z)V

    :goto_0
    return-void
.end method

.method addDonations(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "home"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1029
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getDonationsForFans()B

    move-result v0

    if-lez v0, :cond_0

    .line 1030
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    div-int/lit16 v0, v0, -0x1f4

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1031
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getDonationsForFans()B

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    div-int/lit16 v0, v0, -0x3e8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1033
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getDonationsForFans()B

    move-result p1

    if-lez p1, :cond_2

    .line 1034
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result p1

    div-int/lit16 v0, p1, -0x3e8

    .line 1035
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v0

    const-string v0, "donationsForFans2"

    invoke-direct {v1, v2, v3, v4, v0}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    return-void
.end method

.method public addHomeMatchFinances(Landroid/content/Context;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attendance"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p0, v0, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->addTicketIncome(Lpl/mkrstudio/truefootball3/objects/Match;[I)V

    .line 1049
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->addMatchOrganisationCost(Lpl/mkrstudio/truefootball3/objects/Match;)V

    .line 1050
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1053
    :cond_0
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->addDonations(Z)V

    :goto_0
    const/4 v0, 0x2

    .line 1056
    aget p2, p2, v0

    const/16 v2, 0x1f4

    if-le p2, v2, :cond_5

    .line 1057
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x78

    .line 1058
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    .line 1059
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Supporters;->isRivalryWith(Lpl/mkrstudio/truefootball3/objects/Team;)D

    move-result-wide v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    mul-int/lit8 p2, p2, 0x3

    .line 1062
    :cond_2
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getSecurityEmployees()I

    move-result v2

    if-ge v2, v0, :cond_3

    mul-int/lit8 p2, p2, 0x2

    .line 1065
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-eqz v0, :cond_4

    int-to-double v2, p2

    .line 1066
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getFansBehaviour()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int p2, v2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getSecurityEmployees()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_4
    const/16 v0, 0x5f

    if-lt p2, v0, :cond_5

    .line 1069
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p0, p2, p1, v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->addPenaltyForFansBehaviour(Lpl/mkrstudio/truefootball3/objects/Match;Landroid/content/Context;Z)V

    :cond_5
    return-void
.end method

.method public addMatchOrganisationCost(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateMatchOrganizationCost(Z)I

    move-result p1

    .line 1136
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, p1

    const-string p1, "matchOrganisation"

    invoke-direct {v1, v2, v3, v4, p1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    return-void
.end method

.method public addPenaltyForFansBehaviour(Lpl/mkrstudio/truefootball3/objects/Match;Landroid/content/Context;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "match",
            "context",
            "hate"
        }
    .end annotation

    .line 1077
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    .line 1078
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const-string v2, "racism"

    const-wide/16 v3, 0x32

    const-string v5, "pyrotechnics"

    const-wide/16 v6, 0x4b

    const-string v8, "hooligansPoliceFight"

    const-wide/16 v9, 0x96

    if-eqz p3, :cond_3

    const/4 p3, 0x6

    if-ge v0, p3, :cond_0

    const-wide/16 v3, 0xfa

    const-string v2, "hooligansFight"

    :goto_0
    move-object v8, v2

    move-wide v6, v3

    goto :goto_4

    :cond_0
    const/16 p3, 0x8

    if-ge v0, p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x9

    if-ge v0, p3, :cond_2

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_6

    goto :goto_3

    :cond_3
    const/4 p3, 0x2

    if-ge v0, p3, :cond_4

    :goto_1
    move-wide v6, v9

    goto :goto_4

    :cond_4
    const/4 p3, 0x7

    if-ge v0, p3, :cond_5

    :goto_2
    move-object v8, v5

    goto :goto_4

    :cond_5
    if-ge v0, v1, :cond_6

    :goto_3
    goto :goto_0

    :cond_6
    const-string v2, ""

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 1107
    :goto_4
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    neg-long v2, v6

    const-string v4, "contractTerminatePenalty"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 1109
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v9

    move-object v10, p2

    invoke-static/range {v5 .. v10}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildFansBehaviourPenaltyMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    return-void
.end method

.method addTicketIncome(Lpl/mkrstudio/truefootball3/objects/Match;[I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "match",
            "attendance"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v3, v6, :cond_4

    .line 1116
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1117
    aget v6, p2, v3

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getFriendlies()[I

    move-result-object v7

    aget v7, v7, v3

    :goto_1
    mul-int v6, v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_3

    .line 1118
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v6, v7, :cond_1

    goto :goto_2

    .line 1120
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v6, v7, :cond_2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isCupWinnerCompetition()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1121
    aget v6, p2, v3

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getDomesticCups()[I

    move-result-object v7

    aget v7, v7, v3

    goto :goto_1

    .line 1123
    :cond_2
    aget v6, p2, v3

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getContinentalCups()[I

    move-result-object v7

    aget v7, v7, v3

    goto :goto_1

    .line 1119
    :cond_3
    :goto_2
    aget v6, p2, v3

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getLeague()[I

    move-result-object v7

    aget v7, v7, v3

    goto :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-wide v6, 0x3fd3333333333333L    # 0.3

    .line 1127
    aget p1, p2, v0

    const/4 v0, 0x1

    aget v0, p2, v0

    add-int/2addr p1, v0

    const/4 v0, 0x2

    aget p2, p2, v0

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v6

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getGastronomyEmployees()I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v6

    double-to-long p1, p1

    cmp-long v0, p1, v1

    if-lez v0, :cond_5

    .line 1129
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gastronomy"

    invoke-direct {v1, v2, p1, p2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 1131
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    new-instance p2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long/2addr v4, v1

    const-string v1, "ticketIncome"

    invoke-direct {p2, v0, v4, v5, v1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    return-void
.end method

.method addTripCost()V
    .locals 6

    .line 993
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 994
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-virtual {v0, v2, v2}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateTripCost(ZZ)I

    move-result v0

    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 996
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-virtual {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateTripCost(ZZ)I

    move-result v0

    goto :goto_0

    .line 998
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-virtual {v0, v3, v3}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateTripCost(ZZ)I

    move-result v0

    .line 1000
    :goto_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    neg-int v0, v0

    int-to-long v4, v0

    const-string v0, "tripsAcommodations"

    invoke-direct {v2, v3, v4, v5, v0}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    return-void
.end method

.method public calculateAttendance(Lpl/mkrstudio/truefootball3/objects/Match;)[I
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 1140
    fill-array-data v2, :array_0

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->calculateTicketsExpensiveness(Lpl/mkrstudio/truefootball3/objects/Competition;)[D

    move-result-object v3

    .line 1142
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->calculateFansInterest(Lpl/mkrstudio/truefootball3/objects/Competition;)D

    move-result-wide v4

    .line 1143
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getDonationsForFans()B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const-wide v6, 0x3ff199999999999aL    # 1.1

    :goto_0
    mul-double v4, v4, v6

    goto :goto_1

    .line 1145
    :cond_0
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getDonationsForFans()B

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    goto :goto_0

    .line 1147
    :cond_1
    :goto_1
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Supporters;->isRivalryWith(Lpl/mkrstudio/truefootball3/objects/Team;)D

    move-result-wide v6

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v9

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v8

    .line 1149
    :cond_2
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide v14, 0x3fb999999999999aL    # 0.1

    .line 1150
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getMarketingLevel()B

    move-result v9

    div-int/lit8 v9, v9, 0xa

    move-object/from16 v17, v2

    int-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v14

    add-double/2addr v1, v12

    .line 1151
    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double/2addr v12, v14

    const-wide v14, 0x3fee666666666666L    # 0.95

    add-double/2addr v12, v14

    const/4 v9, 0x0

    :goto_2
    const/4 v14, 0x3

    if-ge v9, v14, :cond_4

    .line 1153
    aget-wide v15, v3, v9

    mul-double v15, v15, v4

    mul-double v15, v15, v6

    mul-double v15, v15, v10

    mul-double v15, v15, v1

    mul-double v15, v15, v12

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v14, v9}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity(I)I

    move-result v14

    move-wide/from16 v18, v1

    int-to-double v1, v14

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v15

    double-to-int v1, v1

    aput v1, v17, v9

    .line 1154
    aget v1, v17, v9

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v2, v9}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity(I)I

    move-result v2

    if-le v1, v2, :cond_3

    .line 1155
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v1, v9}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity(I)I

    move-result v1

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    const-wide v20, 0x3fa999999999999aL    # 0.05

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v2, v9}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity(I)I

    move-result v2

    move-object/from16 v16, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v20

    mul-double v14, v14, v2

    double-to-int v2, v14

    sub-int/2addr v1, v2

    aput v1, v17, v9

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move-wide/from16 v1, v18

    goto :goto_2

    :cond_4
    return-object v17

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method calculateFansInterest(Lpl/mkrstudio/truefootball3/objects/Competition;)D
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competition"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 988
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getFansInterest()D

    move-result-wide v2

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getConfidence()I

    move-result p1

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method calculateTicketsExpensiveness(Lpl/mkrstudio/truefootball3/objects/Competition;)[D
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competition"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->areExpensive(Lpl/mkrstudio/truefootball3/objects/Competition;)[D

    move-result-object p1

    return-object p1
.end method

.method public copyData(Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uds"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 73
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    .line 74
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->isGameOver()Z

    move-result v0

    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameOver:Z

    .line 75
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    .line 76
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    .line 77
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    .line 78
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    .line 79
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    .line 80
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

    .line 81
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    .line 82
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    .line 83
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    .line 84
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    .line 85
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    .line 86
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    .line 87
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getPastHistories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->pastHistories:Ljava/util/List;

    .line 88
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getTrophies()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->trophies:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    .line 90
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getMatchFixing()Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    .line 91
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    .line 92
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getMedia()Lpl/mkrstudio/truefootball3/objects/Media;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    .line 93
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

    .line 94
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    .line 95
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getAi()Lpl/mkrstudio/truefootball3/objects/AI;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->ai:Lpl/mkrstudio/truefootball3/objects/AI;

    .line 96
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getExtras()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->extras:Ljava/util/List;

    .line 98
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->isUseEditedData()Z

    move-result v0

    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->useEditedData:Z

    .line 99
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    .line 101
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->getTeamAnalyses()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    .line 102
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    if-nez p1, :cond_0

    new-instance p1, Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    invoke-direct {p1}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    .line 103
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    .line 104
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "1.0"

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public getAi()Lpl/mkrstudio/truefootball3/objects/AI;
    .locals 1

    .line 1507
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->ai:Lpl/mkrstudio/truefootball3/objects/AI;

    return-object v0
.end method

.method public getAnalyzedTeams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;"
        }
    .end annotation

    .line 1306
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    return-object v0
.end method

.method public getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;
    .locals 1

    .line 1491
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

    return-object v0
.end method

.method public getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 1331
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;
    .locals 1

    .line 1499
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    return-object v0
.end method

.method public getCode()I
    .locals 11

    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->getFinanceItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 1166
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1167
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1168
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1172
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1174
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :catch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1182
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Finances;->getFinanceItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 1183
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    int-to-long v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 1184
    invoke-virtual {v6, v9, v10}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v9

    add-long/2addr v7, v9

    long-to-int v1, v7

    goto :goto_1

    :cond_4
    return v1
.end method

.method public getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;
    .locals 1

    .line 1451
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    return-object v0
.end method

.method public getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;
    .locals 1

    .line 1443
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    return-object v0
.end method

.method public getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 1

    .line 1523
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0
.end method

.method public getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;
    .locals 1

    .line 1555
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    return-object v0
.end method

.method public getExtras()Ljava/util/List;
    .locals 1

    .line 1335
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->extras:Ljava/util/List;

    return-object v0
.end method

.method public getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;
    .locals 1

    .line 1427
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    return-object v0
.end method

.method public getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;
    .locals 1

    .line 1403
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 1

    .line 1343
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;
    .locals 1

    .line 1411
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    return-object v0
.end method

.method public getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;
    .locals 1

    .line 1395
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

    return-object v0
.end method

.method public getLeagueNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1551
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->leagueNames:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMatchFixing()Lpl/mkrstudio/truefootball3/objects/MatchFixing;
    .locals 1

    .line 1467
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    return-object v0
.end method

.method public getMedia()Lpl/mkrstudio/truefootball3/objects/Media;
    .locals 1

    .line 1483
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    return-object v0
.end method

.method public getPastHistories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            ">;"
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->pastHistories:Ljava/util/List;

    return-object v0
.end method

.method public getRivalries(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Rivalry;",
            ">;"
        }
    .end annotation

    .line 613
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 615
    :try_start_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 617
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 619
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 620
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getRivalries(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/util/List;

    move-result-object p1

    .line 621
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    return-object p1
.end method

.method public getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;
    .locals 1

    .line 1379
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    return-object v0
.end method

.method public getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;
    .locals 1

    .line 1435
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    return-object v0
.end method

.method public getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;
    .locals 1

    .line 1475
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    return-object v0
.end method

.method public getTeamAnalyses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;"
        }
    .end annotation

    .line 1563
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Lpl/mkrstudio/truefootball3/objects/Time;
    .locals 1

    .line 1355
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    return-object v0
.end method

.method public getTodayPlayerMatch()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 4

    .line 1193
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-virtual {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1196
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getTraining()Lpl/mkrstudio/truefootball3/objects/Training;
    .locals 1

    .line 1419
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    return-object v0
.end method

.method public getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;
    .locals 1

    .line 1387
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    return-object v0
.end method

.method public getTrophies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Trophy;",
            ">;"
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->trophies:Ljava/util/List;

    return-object v0
.end method

.method public getWorld()Lpl/mkrstudio/truefootball3/objects/World;
    .locals 1

    .line 1363
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    return-object v0
.end method

.method public getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;
    .locals 1

    .line 1371
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    return-object v0
.end method

.method public isGameOver()Z
    .locals 1

    .line 1515
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameOver:Z

    return v0
.end method

.method public isUseEditedData()Z
    .locals 1

    .line 1539
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->useEditedData:Z

    return v0
.end method

.method public nextDay(Landroid/content/Context;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 109
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    .line 111
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "06.30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v13, 0x4

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "07.01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "12.31"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "01.01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 116
    :cond_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 117
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v5, v6, :cond_2

    .line 118
    :cond_3
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4, v5, v15}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamLosses(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v5

    if-lez v5, :cond_4

    const/4 v3, 0x1

    .line 120
    :cond_4
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4, v5, v15}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamWins(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v5

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4, v6, v15}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamMatches(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v4

    if-eq v5, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const/16 v1, 0x20

    .line 125
    invoke-static {v1, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    :cond_6
    if-nez v3, :cond_7

    const/16 v1, 0x16

    .line 128
    invoke-static {v1, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    .line 131
    :cond_7
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getCurrentFriendlyMatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tf3SeasonCodes"

    .line 133
    invoke-virtual {v11, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "seasonCodes_size"

    .line 135
    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const-string v8, "seasonCodes_"

    if-ge v5, v4, :cond_9

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v6, 0x1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_9
    if-nez v6, :cond_a

    .line 142
    invoke-static {v13, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    .line 143
    invoke-static {v14, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0xe

    .line 144
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0x13

    .line 145
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0x18

    .line 146
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0x1d

    .line 147
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0x22

    .line 148
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0x26

    .line 149
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0x28

    .line 150
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v5, 0x2b

    .line 151
    invoke-static {v5, v9, v11}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    .line 152
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/2addr v4, v9

    .line 154
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    :cond_a
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1, v2, v3, v0, v11}, Lpl/mkrstudio/truefootball3/objects/Competitions;->nextDay(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/content/Context;)V

    .line 160
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->nextDay()V

    .line 162
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 163
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1, v9}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPlayersOfMonth(Z)Ljava/util/List;

    move-result-object v3

    .line 164
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x3

    if-ne v1, v8, :cond_f

    .line 165
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 167
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getWorldPlayersOfYear()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_c
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 168
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v10

    if-ne v10, v2, :cond_c

    .line 169
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v5

    add-int/2addr v5, v12

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    sub-int/2addr v5, v10

    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    if-nez v5, :cond_b

    .line 174
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getWorldPlayersOfYear()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x5

    invoke-direct {v5, v2, v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 177
    :cond_e
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v7

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayersOfMonthMessage(Lpl/mkrstudio/truefootball3/objects/Country;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v10, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 180
    :cond_f
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCountryPlayersOfMonth(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 181
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_14

    .line 182
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 184
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCountryPlayersOfYear()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_11
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 185
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v8

    if-ne v8, v2, :cond_11

    .line 186
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v5

    add-int/2addr v5, v12

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v5, 0x1

    goto :goto_5

    :cond_12
    if-nez v5, :cond_10

    .line 191
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCountryPlayersOfYear()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x5

    invoke-direct {v5, v2, v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 194
    :cond_13
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v7

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayersOfMonthMessage(Lpl/mkrstudio/truefootball3/objects/Country;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 196
    :cond_14
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->resetMonthlyRatings()V

    .line 199
    :cond_15
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/objects/World;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Transfers;Landroid/content/Context;)V

    .line 200
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Youth;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 201
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v10, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    .line 202
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getScouting()Lpl/mkrstudio/truefootball3/objects/Scouting;

    move-result-object v8

    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v13, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/objects/Transfers;->nextDay(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Scouting;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z

    .line 203
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-virtual/range {v16 .. v22}, Lpl/mkrstudio/truefootball3/objects/Jobs;->nextDay(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Chairman;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;)Z

    .line 204
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->nextDay(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)V

    .line 205
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Training;->nextDay(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 206
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-virtual/range {v16 .. v24}, Lpl/mkrstudio/truefootball3/objects/Finances;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/objects/Sponsorships;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 207
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    invoke-virtual {v1, v2, v3, v11}, Lpl/mkrstudio/truefootball3/objects/Stadium;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Landroid/content/Context;)V

    .line 208
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->nextDay(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    .line 209
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/objects/Media;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 210
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    invoke-virtual {v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 211
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->ai:Lpl/mkrstudio/truefootball3/objects/AI;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-virtual/range {v16 .. v22}, Lpl/mkrstudio/truefootball3/objects/AI;->nextDay(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Competitions;)V

    .line 212
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->nextDay(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getAnalyzedTeams()Ljava/util/List;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v4

    if-lez v4, :cond_17

    .line 218
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->setDaysLeftToResults(I)V

    .line 219
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v4

    if-nez v4, :cond_16

    .line 220
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->generateResults()V

    goto :goto_6

    .line 222
    :cond_17
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v4

    if-nez v4, :cond_16

    .line 223
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToExpire()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->setDaysLeftToExpire(I)V

    .line 224
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToExpire()I

    move-result v4

    if-gtz v4, :cond_16

    .line 225
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 228
    :cond_18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 229
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->removeAnalyzedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    goto :goto_7

    .line 232
    :cond_19
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    invoke-virtual {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 234
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v2

    const/4 v3, -0x3

    .line 235
    invoke-virtual {v2, v12, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 236
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->areDatesEqual(Ljava/lang/String;Ljava/util/GregorianCalendar;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 237
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Supporters;->isRivalryWith(Lpl/mkrstudio/truefootball3/objects/Team;)D

    move-result-wide v2

    const-wide v4, 0x3ff6666666666666L    # 1.4

    cmpl-double v6, v2, v4

    if-gez v6, :cond_1a

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Supporters;->isRivalryWith(Lpl/mkrstudio/truefootball3/objects/Team;)D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_1c

    .line 238
    :cond_1a
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    const v3, 0x7f0c0360

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v4, v5, :cond_1b

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    goto :goto_8

    :cond_1b
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    :goto_8
    invoke-virtual {v2, v3, v1}, Lpl/mkrstudio/truefootball3/objects/Media;->buildQuestion(ILjava/lang/Object;)V

    .line 243
    :cond_1c
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 244
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_1d

    invoke-virtual {v1, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_1d

    .line 245
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->buildGoodFormQuestion()V

    .line 247
    :cond_1d
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0x19

    const/4 v4, 0x2

    if-le v2, v3, :cond_1e

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_1e

    .line 248
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->buildFewMatchesQuestion()V

    .line 251
    :cond_1e
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v13, :cond_1f

    .line 252
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Supporters;->selectFavouritePlayers(Ljava/util/List;)V

    .line 255
    :cond_1f
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-gez v3, :cond_20

    .line 257
    iput-boolean v13, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameOver:Z

    .line 258
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildBankrupcyMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 261
    :cond_20
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v13, :cond_28

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 264
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYear()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-ge v5, v6, :cond_21

    .line 265
    invoke-virtual {v3, v15}, Lpl/mkrstudio/truefootball3/objects/Competition;->setFixtures(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;)V

    .line 266
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 269
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 270
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 273
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->getFinanceItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 275
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    if-ge v5, v7, :cond_24

    .line 276
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 279
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 280
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->getFinanceItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 283
    :cond_26
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getWorldPlayersOfYear()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/UserData$1;

    invoke-direct {v2, v0}, Lpl/mkrstudio/truefootball3/objects/UserData$1;-><init>(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCountryPlayersOfYear()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/UserData$2;

    invoke-direct {v2, v0}, Lpl/mkrstudio/truefootball3/objects/UserData$2;-><init>(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 310
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getWorldPlayersOfYear()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 311
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getWorldPlayersOfYear()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v13, v3, v4, v11}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayersOfYearMessage(Lpl/mkrstudio/truefootball3/objects/Country;ZLjava/util/List;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 312
    :cond_27
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCountryPlayersOfYear()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 313
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCountryPlayersOfYear()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, v11}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayersOfYearMessage(Lpl/mkrstudio/truefootball3/objects/Country;ZLjava/util/List;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_28
    return-void
.end method

.method public organizeAmericanTeams2018(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usa",
            "can"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Montreal I."

    .line 628
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Toronto"

    .line 629
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Washington D. C. U."

    .line 630
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York R. B."

    .line 631
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Chicago F."

    .line 632
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Columbus C."

    .line 633
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Philadelphia U."

    .line 634
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "N. E. R. Foxborough"

    .line 635
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Atlanta U."

    .line 636
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York C."

    .line 637
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Orlando C."

    .line 638
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Vancouver W."

    .line 640
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "San Jose E."

    .line 641
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "S. Kansas City"

    .line 642
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "R. Salt Lake City"

    .line 643
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Seattle S."

    .line 644
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles G."

    .line 645
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Houston D."

    .line 646
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Dallas"

    .line 647
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Colorado R."

    .line 648
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Portland T."

    .line 649
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Minnesota U."

    .line 650
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles"

    .line 651
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public organizeAmericanTeams2019(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usa",
            "can"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Montreal I."

    .line 661
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Toronto"

    .line 662
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Washington D. C. U."

    .line 663
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York R. B."

    .line 664
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Chicago F."

    .line 665
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Columbus C."

    .line 666
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Philadelphia U."

    .line 667
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "N. E. R. Foxborough"

    .line 668
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Atlanta U."

    .line 669
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York C."

    .line 670
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Orlando C."

    .line 671
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Cincinnati"

    .line 672
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Vancouver W."

    .line 674
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "San Jose E."

    .line 675
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "S. Kansas City"

    .line 676
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "R. Salt Lake City"

    .line 677
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Seattle S."

    .line 678
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles G."

    .line 679
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Houston D."

    .line 680
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Dallas"

    .line 681
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Colorado R."

    .line 682
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Portland T."

    .line 683
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Minnesota U."

    .line 684
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles"

    .line 685
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public organizeAmericanTeams2020(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usa",
            "can"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Montreal I."

    .line 695
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Toronto"

    .line 696
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Washington D. C. U."

    .line 697
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York R. B."

    .line 698
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Chicago F."

    .line 699
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Columbus C."

    .line 700
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Philadelphia U."

    .line 701
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "N. E. R. Foxborough"

    .line 702
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Atlanta U."

    .line 703
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York C."

    .line 704
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Orlando C."

    .line 705
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Cincinnati"

    .line 706
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "I. Miami"

    .line 707
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Nashville"

    .line 708
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Vancouver W."

    .line 710
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "San Jose E."

    .line 711
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "S. Kansas City"

    .line 712
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "R. Salt Lake City"

    .line 713
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Seattle S."

    .line 714
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles G."

    .line 715
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Houston D."

    .line 716
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Dallas"

    .line 717
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Colorado R."

    .line 718
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Portland T."

    .line 719
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Minnesota U."

    .line 720
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles"

    .line 721
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public organizeAmericanTeams2021(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usa",
            "can"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "C. F. Montr\u00e9al"

    .line 729
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Toronto"

    .line 730
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Washington D. C. U."

    .line 731
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York R. B."

    .line 732
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Chicago F."

    .line 733
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Columbus C."

    .line 734
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Philadelphia U."

    .line 735
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "N. E. R. Foxborough"

    .line 736
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Atlanta U."

    .line 737
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York C."

    .line 738
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Orlando C."

    .line 739
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Cincinnati"

    .line 740
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "I. Miami"

    .line 741
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Nashville"

    .line 742
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Vancouver W."

    .line 744
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "San Jose E."

    .line 745
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "S. Kansas City"

    .line 746
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "R. Salt Lake City"

    .line 747
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Seattle S."

    .line 748
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles G."

    .line 749
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Houston D."

    .line 750
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Dallas"

    .line 751
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Colorado R."

    .line 752
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Portland T."

    .line 753
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Minnesota U."

    .line 754
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles"

    .line 755
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Austin"

    .line 756
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public organizeAmericanTeams2022(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usa",
            "can"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "C. F. Montr\u00e9al"

    .line 764
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Toronto"

    .line 765
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Washington D. C. U."

    .line 766
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York R. B."

    .line 767
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Chicago F."

    .line 768
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Columbus C."

    .line 769
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Philadelphia U."

    .line 770
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "N. E. R. Foxborough"

    .line 771
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Atlanta U."

    .line 772
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York C."

    .line 773
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Orlando C."

    .line 774
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Cincinnati"

    .line 775
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "I. Miami"

    .line 776
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Charlotte"

    .line 777
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Vancouver W."

    .line 779
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "San Jose E."

    .line 780
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "S. Kansas City"

    .line 781
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "R. Salt Lake City"

    .line 782
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Seattle S."

    .line 783
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles G."

    .line 784
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Houston D."

    .line 785
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Dallas"

    .line 786
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Colorado R."

    .line 787
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Portland T."

    .line 788
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Minnesota U."

    .line 789
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles"

    .line 790
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Austin"

    .line 791
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Nashville"

    .line 792
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public organizeAmericanTeams2023(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usa",
            "can"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "C. F. Montr\u00e9al"

    .line 800
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Toronto"

    .line 801
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Washington D. C. U."

    .line 802
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York R. B."

    .line 803
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Chicago F."

    .line 804
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Columbus C."

    .line 805
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Philadelphia U."

    .line 806
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "N. E. R. Foxborough"

    .line 807
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Atlanta U."

    .line 808
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "New York C."

    .line 809
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Orlando C."

    .line 810
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Cincinnati"

    .line 811
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "I. Miami"

    .line 812
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Charlotte"

    .line 813
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Nashville"

    .line 814
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Vancouver W."

    .line 816
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "San Jose E."

    .line 817
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "S. Kansas City"

    .line 818
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "R. Salt Lake City"

    .line 819
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Seattle S."

    .line 820
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles G."

    .line 821
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Houston D."

    .line 822
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Dallas"

    .line 823
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Colorado R."

    .line 824
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Portland T."

    .line 825
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Minnesota U."

    .line 826
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Los Angeles"

    .line 827
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "Austin"

    .line 828
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "St. Louis C."

    .line 829
    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->returnTeamWithName(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method payFee()V
    .locals 11

    .line 1005
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v0, v1, :cond_0

    .line 1006
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    goto :goto_0

    .line 1008
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 1013
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1016
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1024
    :goto_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    new-instance v7, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v10, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v10

    if-ne v9, v10, :cond_3

    const/4 v4, 0x1

    :cond_3
    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateFee(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZZ)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-long v1, v1

    const-string v3, "friendlyFees"

    invoke-direct {v7, v8, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    return-void
.end method

.method public removeAnalyzedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 1317
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1323
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setAi(Lpl/mkrstudio/truefootball3/objects/AI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ai"
        }
    .end annotation

    .line 1511
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->ai:Lpl/mkrstudio/truefootball3/objects/AI;

    return-void
.end method

.method public setChairman(Lpl/mkrstudio/truefootball3/objects/Chairman;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chairman"
        }
    .end annotation

    .line 1495
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

    return-void
.end method

.method public setChosenTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chosenTeam"
        }
    .end annotation

    .line 1351
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setClubStaff(Lpl/mkrstudio/truefootball3/objects/ClubStaff;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clubStaff"
        }
    .end annotation

    .line 1503
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    return-void
.end method

.method public setCompetitions(Lpl/mkrstudio/truefootball3/objects/Competitions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitions"
        }
    .end annotation

    .line 1463
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    return-void
.end method

.method public setCurrentHistory(Lpl/mkrstudio/truefootball3/objects/History;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "history"
        }
    .end annotation

    .line 1447
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    return-void
.end method

.method public setCurrentMatch(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMatch"
        }
    .end annotation

    .line 1527
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    return-void
.end method

.method public setDressingRoom(Lpl/mkrstudio/truefootball3/objects/DressingRoom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dressingRoom"
        }
    .end annotation

    .line 1559
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    return-void
.end method

.method public setExtras(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 1339
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->extras:Ljava/util/List;

    return-void
.end method

.method public setFinances(Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finances"
        }
    .end annotation

    .line 1431
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    return-void
.end method

.method public setFriendlies(Lpl/mkrstudio/truefootball3/objects/Friendlies;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendlies"
        }
    .end annotation

    .line 1407
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    return-void
.end method

.method public setGameOver(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameOver"
        }
    .end annotation

    .line 1519
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameOver:Z

    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameVersion"
        }
    .end annotation

    .line 1347
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->gameVersion:Ljava/lang/String;

    return-void
.end method

.method public setInbox(Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inbox"
        }
    .end annotation

    .line 1415
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    return-void
.end method

.method public setJobs(Lpl/mkrstudio/truefootball3/objects/Jobs;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jobs"
        }
    .end annotation

    .line 1399
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

    return-void
.end method

.method public setLeagueNames(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leagueNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1547
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->leagueNames:Ljava/util/HashMap;

    return-void
.end method

.method public setMatchFixing(Lpl/mkrstudio/truefootball3/objects/MatchFixing;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchFixing"
        }
    .end annotation

    .line 1471
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    return-void
.end method

.method public setMedia(Lpl/mkrstudio/truefootball3/objects/Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "media"
        }
    .end annotation

    .line 1487
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    return-void
.end method

.method public setPastHistories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pastHistories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            ">;)V"
        }
    .end annotation

    .line 1459
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->pastHistories:Ljava/util/List;

    return-void
.end method

.method public setSponsorships(Lpl/mkrstudio/truefootball3/objects/Sponsorships;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sponsorships"
        }
    .end annotation

    .line 1383
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    return-void
.end method

.method public setStadium(Lpl/mkrstudio/truefootball3/objects/Stadium;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stadium"
        }
    .end annotation

    .line 1439
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    return-void
.end method

.method public setSupporters(Lpl/mkrstudio/truefootball3/objects/Supporters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supporters"
        }
    .end annotation

    .line 1479
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    return-void
.end method

.method public setTeamAnalyses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamAnalyses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;)V"
        }
    .end annotation

    .line 1567
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->teamAnalyses:Ljava/util/List;

    return-void
.end method

.method public setTime(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1359
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    return-void
.end method

.method public setTraining(Lpl/mkrstudio/truefootball3/objects/Training;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "training"
        }
    .end annotation

    .line 1423
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    return-void
.end method

.method public setTransfers(Lpl/mkrstudio/truefootball3/objects/Transfers;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transfers"
        }
    .end annotation

    .line 1391
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    return-void
.end method

.method public setTrophies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trophies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Trophy;",
            ">;)V"
        }
    .end annotation

    .line 1535
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->trophies:Ljava/util/List;

    return-void
.end method

.method public setUseEditedData(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useEditedData"
        }
    .end annotation

    .line 1543
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->useEditedData:Z

    return-void
.end method

.method public setWorld(Lpl/mkrstudio/truefootball3/objects/World;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    .line 1367
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->world:Lpl/mkrstudio/truefootball3/objects/World;

    return-void
.end method

.method public setYouth(Lpl/mkrstudio/truefootball3/objects/Youth;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youth"
        }
    .end annotation

    .line 1375
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    return-void
.end method

.method public updateAchievements(Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    new-array v0, v2, [I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v1

    aput v1, v0, v4

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v1

    aput v1, v0, v4

    .line 1204
    :goto_0
    aget v1, v0, v3

    aget v5, v0, v4

    if-le v1, v5, :cond_1

    .line 1205
    invoke-static {v3, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    .line 1206
    invoke-static {v2, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/4 v1, 0x5

    .line 1207
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x9

    .line 1208
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0xf

    .line 1209
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x14

    .line 1210
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x19

    .line 1211
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x1e

    .line 1212
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x23

    .line 1213
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x27

    .line 1214
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x29

    .line 1215
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x2c

    .line 1216
    invoke-static {v1, v4, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->addToAchievementResult(IILandroid/content/Context;)V

    .line 1217
    aget v1, v0, v3

    aget v2, v0, v4

    sub-int/2addr v1, v2

    invoke-static {v4, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0xb

    .line 1218
    aget v2, v0, v3

    aget v5, v0, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v2, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x15

    .line 1219
    aget v2, v0, v3

    aget v5, v0, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v2, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v1, 0x1a

    .line 1220
    aget v2, v0, v3

    aget v0, v0, v4

    sub-int/2addr v2, v0

    invoke-static {v1, v2, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    .line 1223
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1227
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;

    .line 1228
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1229
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1231
    :cond_3
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->pastHistories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/History;

    .line 1232
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;

    .line 1233
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1234
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1238
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/UserCompetition;

    .line 1240
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->getUserApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 1242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 1243
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v10

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v11

    if-ne v10, v11, :cond_9

    .line 1245
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result v8

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v9, v8}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setApps(I)V

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    if-nez v8, :cond_8

    .line 1249
    new-instance v7, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    invoke-direct {v7}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;-><init>()V

    .line 1250
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v8

    invoke-virtual {v7, v8}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 1251
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v6

    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setApps(I)V

    .line 1252
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1255
    :cond_b
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->getUserScorers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 1257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_d
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 1258
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v9

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v10

    if-ne v9, v10, :cond_d

    .line 1260
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v8, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setGoals(I)V

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    if-nez v7, :cond_c

    .line 1264
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    invoke-direct {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;-><init>()V

    .line 1265
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 1266
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v5

    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setGoals(I)V

    .line 1267
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1274
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_10
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 1275
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 1276
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result v3

    .line 1277
    :cond_11
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result v4

    if-ge v1, v4, :cond_10

    .line 1278
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result v1

    goto :goto_7

    :cond_12
    const/4 v0, 0x7

    .line 1281
    invoke-static {v0, v3, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0xd

    .line 1282
    invoke-static {v0, v3, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x10

    .line 1283
    invoke-static {v0, v3, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x17

    .line 1284
    invoke-static {v0, v3, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x1f

    .line 1285
    invoke-static {v0, v3, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x25

    .line 1286
    invoke-static {v0, v3, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x2a

    .line 1287
    invoke-static {v0, v3, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/4 v0, 0x3

    .line 1289
    invoke-static {v0, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/4 v0, 0x6

    .line 1290
    invoke-static {v0, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0xc

    .line 1291
    invoke-static {v0, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x12

    .line 1292
    invoke-static {v0, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x1c

    .line 1293
    invoke-static {v0, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x21

    .line 1294
    invoke-static {v0, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x24

    .line 1295
    invoke-static {v0, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    return-void
.end method

.method public wasDonatedThisMonth()Z
    .locals 2

    .line 1299
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->extras:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1300
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1301
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserData;->extras:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
