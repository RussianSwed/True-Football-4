.class public Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "HistoryDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;
    }
.end annotation


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field competitionHeader:Landroid/widget/TextView;

.field competitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field current:Z

.field drawsTV:Landroid/widget/TextView;

.field firstLayout:Landroid/view/View;

.field goalsTV:Landroid/widget/TextView;

.field history:Lpl/mkrstudio/truefootball3/objects/History;

.field layoutShown:Z

.field lossesTV:Landroid/widget/TextView;

.field players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field playersHeader:Landroid/widget/LinearLayout;

.field playersLV:Landroid/widget/ListView;

.field seasonHeader:Landroid/widget/TextView;

.field seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field secondLayout:Landroid/view/View;

.field shownCompetitionIdPosition:I

.field shownSeasonPosition:I

.field sortByApps:Z

.field thirdLayout:Landroid/view/View;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field winsTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/History;Z)V
    .locals 2
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

    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    .line 55
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownCompetitionIdPosition:I

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->sortByApps:Z

    .line 137
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->layoutShown:Z

    .line 78
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->current:Z

    .line 79
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->history:Lpl/mkrstudio/truefootball3/objects/History;

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->addApps(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->addGoals(Ljava/util/List;)V

    return-void
.end method

.method private addApps(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    const/4 v1, 0x0

    .line 390
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 391
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 393
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result v4

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setApps(I)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_0

    .line 397
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;-><init>()V

    .line 398
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 399
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setApps(I)V

    .line 400
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addGoals(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goalList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    const/4 v1, 0x0

    .line 408
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 409
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 411
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result v4

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setGoals(I)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_0

    .line 415
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;-><init>()V

    .line 416
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 417
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->setGoals(I)V

    .line 418
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initCompetitions()V
    .locals 4

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    const-string v1, ""

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->current:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 101
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getAllTeams()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->history:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;

    .line 109
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initSeasons()V
    .locals 4

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    const-string v1, ""

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->current:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 120
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 123
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYearString(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->history:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;

    .line 132
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getSeason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getSeason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080185

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->firstLayout:Landroid/view/View;

    const v0, 0x7f080300

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->secondLayout:Landroid/view/View;

    const v0, 0x7f080388

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->thirdLayout:Landroid/view/View;

    const v0, 0x7f0803cb

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->winsTV:Landroid/widget/TextView;

    const v0, 0x7f08015e

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->drawsTV:Landroid/widget/TextView;

    const v0, 0x7f0801ef

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->lossesTV:Landroid/widget/TextView;

    const v0, 0x7f0801a1

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->goalsTV:Landroid/widget/TextView;

    const v0, 0x7f080295

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->playersLV:Landroid/widget/ListView;

    const v0, 0x7f080293

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->playersHeader:Landroid/widget/LinearLayout;

    const v0, 0x7f08031a

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 318
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08031b

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 326
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080060

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowRight2:Landroid/widget/Button;

    .line 339
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowLeft2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->arrowRight2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802ff

    .line 379
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasonHeader:Landroid/widget/TextView;

    const v0, 0x7f080105

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitionHeader:Landroid/widget/TextView;

    .line 382
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0a006d

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 89
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->initSeasons()V

    .line 90
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->initCompetitions()V

    .line 91
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showLayout()V
    .locals 2

    .line 299
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->firstLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->secondLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->thirdLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->layoutShown:Z

    return-void
.end method
