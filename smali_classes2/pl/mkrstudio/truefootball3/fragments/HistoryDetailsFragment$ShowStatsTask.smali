.class public Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;
.super Landroid/os/AsyncTask;
.source "HistoryDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowStatsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field draws:I

.field goalsLost:I

.field goalsScored:I

.field historyPlayersAdapter:Lpl/mkrstudio/truefootball3/adapters/HistoryPlayersAdapter;

.field losses:I

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

.field wins:I


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 195
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->wins:I

    .line 196
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->draws:I

    .line 197
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->losses:I

    .line 198
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsScored:I

    .line 199
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsLost:I

    .line 144
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

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

    .line 139
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 206
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    .line 208
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->history:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/History;->getBeginDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-boolean v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->current:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 211
    :try_start_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

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

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 213
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 216
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYearString(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 220
    :goto_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v5}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 221
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v6, v6, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v6, v6, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownCompetitionIdPosition:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownCompetitionIdPosition:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    :cond_3
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->wins:I

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamWins(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->wins:I

    .line 223
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->draws:I

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamDraws(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->draws:I

    .line 224
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->losses:I

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamLosses(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->losses:I

    .line 225
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsScored:I

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamGoalsScored(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsScored:I

    .line 226
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsLost:I

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamGoalsLost(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsLost:I

    .line 228
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getUserApps()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V

    .line 229
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->getUserAssistants()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getUserScorers()Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V

    invoke-static {v3, v5}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->access$200(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V

    goto/16 :goto_0

    .line 234
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->history:Lpl/mkrstudio/truefootball3/objects/History;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;

    .line 235
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getSeason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_6
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownCompetitionIdPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v5, v5, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownCompetitionIdPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    :cond_7
    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->wins:I

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getPlayerRecord()[I

    move-result-object v4

    aget v2, v4, v2

    add-int/2addr v3, v2

    iput v3, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->wins:I

    .line 238
    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->draws:I

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getPlayerRecord()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->draws:I

    .line 239
    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->losses:I

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getPlayerRecord()[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->losses:I

    .line 240
    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsScored:I

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getPlayerRecord()[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsScored:I

    .line 241
    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsLost:I

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getPlayerRecord()[I

    move-result-object v3

    const/4 v4, 0x4

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsLost:I

    .line 243
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getUserApps()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V

    .line 244
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->getUserAssistants()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->getUserScorers()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V

    invoke-static {v2, v5}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->access$200(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Ljava/util/List;)V

    goto/16 :goto_2

    .line 250
    :cond_8
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask$1;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 274
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "name"

    .line 275
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "edited"

    .line 276
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "apps"

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "goals"

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "assists"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getAssists()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "flag"

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/util/Locale;

    const-string v9, "en"

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "drawable"

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 284
    :cond_9
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/HistoryPlayersAdapter;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lpl/mkrstudio/truefootball3/adapters/HistoryPlayersAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->historyPlayersAdapter:Lpl/mkrstudio/truefootball3/adapters/HistoryPlayersAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v0, "tag"

    const-string v1, "error"

    .line 288
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_4
    const/4 p1, 0x0

    return-object p1
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

    .line 139
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string p1, ""

    .line 160
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-boolean v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->layoutShown:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->showLayout()V

    .line 164
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v1, v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasonHeader:Landroid/widget/TextView;

    const v1, 0x7f0c014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasonHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v2, v2, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v1, v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownCompetitionIdPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitionHeader:Landroid/widget/TextView;

    const v1, 0x7f0c014d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 172
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitionHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->competitions:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v2, v2, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownCompetitionIdPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->winsTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->wins:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->drawsTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->draws:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->lossesTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->losses:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->goalsTV:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsScored:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->goalsLost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->players:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->playersHeader:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->playersLV:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2

    .line 183
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->playersHeader:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->playersLV:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->playersLV:Landroid/widget/ListView;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->historyPlayersAdapter:Lpl/mkrstudio/truefootball3/adapters/HistoryPlayersAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    :goto_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 148
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 149
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 150
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 151
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c039e

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
