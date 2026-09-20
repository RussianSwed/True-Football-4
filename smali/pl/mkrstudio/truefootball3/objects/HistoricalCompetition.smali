.class public Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;
.super Lpl/mkrstudio/truefootball3/objects/UserCompetition;
.source "HistoricalCompetition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b95876984cd1dc7L


# instance fields
.field id:Ljava/lang/String;

.field managedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field playerRecord:[I

.field season:Ljava/lang/String;

.field won:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "season",
            "playerRecord"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;-><init>()V

    .line 45
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->id:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->season:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->playerRecord:[I

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/History;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "chosenTeam",
            "competitions",
            "history"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;-><init>()V

    .line 24
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->id:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYearString(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getBeginDate()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p4

    .line 29
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->managedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 30
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->season:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 31
    invoke-virtual {p1, p2, p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamWins(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, p2, p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamDraws(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1, p2, p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamLosses(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    invoke-virtual {p1, p2, p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamGoalsScored(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result v1

    const/4 v4, 0x3

    aput v1, v0, v4

    invoke-virtual {p1, p2, p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeamGoalsLost(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I

    move-result p4

    const/4 v1, 0x4

    aput p4, v0, v1

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->playerRecord:[I

    .line 33
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isChampionCompetition()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isChampionsCupWinnerCompetition()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isCupWinnerCompetition()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isFederationCupWinnerCompetition()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 34
    :cond_0
    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p2, :cond_1

    .line 35
    iput-boolean v3, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->won:Z

    .line 39
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getUserScorers()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->userScorers:Ljava/util/List;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->getUserAssistants()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->userAssistants:Ljava/util/List;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getUserApps()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->userApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerRecord()[I
    .locals 1

    .line 69
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->playerRecord:[I

    return-object v0
.end method

.method public getSeason()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->season:Ljava/lang/String;

    return-object v0
.end method

.method public isWon()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->won:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->id:Ljava/lang/String;

    return-void
.end method

.method public setPlayerRecord([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerRecord"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->playerRecord:[I

    return-void
.end method

.method public setSeason(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "season"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->season:Ljava/lang/String;

    return-void
.end method

.method public setWon(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "won"
        }
    .end annotation

    .line 81
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;->won:Z

    return-void
.end method
