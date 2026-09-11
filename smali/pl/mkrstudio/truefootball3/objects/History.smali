.class public Lpl/mkrstudio/truefootball3/objects/History;
.super Ljava/lang/Object;
.source "History.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c77cf35de20a6dcL


# instance fields
.field beginDate:Ljava/lang/String;

.field endDate:Ljava/lang/String;

.field historicalApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field historicalAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field historicalCleanSheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field historicalCompetitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;",
            ">;"
        }
    .end annotation
.end field

.field historicalRedCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field historicalScorers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field historicalYellowCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field managedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field records:Lpl/mkrstudio/truefootball3/objects/Records;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Records;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Records;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->records:Lpl/mkrstudio/truefootball3/objects/Records;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalScorers:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalAssistants:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalApps:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalYellowCards:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalRedCards:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalCleanSheets:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalCompetitions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBeginDate()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->beginDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoricalApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalApps:Ljava/util/List;

    return-object v0
.end method

.method public getHistoricalAssistants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalAssistants:Ljava/util/List;

    return-object v0
.end method

.method public getHistoricalCleanSheets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalCleanSheets:Ljava/util/List;

    return-object v0
.end method

.method public getHistoricalCompetitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalCompetitions:Ljava/util/List;

    return-object v0
.end method

.method public getHistoricalRedCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalRedCards:Ljava/util/List;

    return-object v0
.end method

.method public getHistoricalScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalScorers:Ljava/util/List;

    return-object v0
.end method

.method public getHistoricalYellowCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalYellowCards:Ljava/util/List;

    return-object v0
.end method

.method public getManagedTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 32
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->managedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getRecords()Lpl/mkrstudio/truefootball3/objects/Records;
    .locals 1

    .line 28
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/History;->records:Lpl/mkrstudio/truefootball3/objects/Records;

    return-object v0
.end method

.method public setBeginDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginDate"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->beginDate:Ljava/lang/String;

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endDate"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->endDate:Ljava/lang/String;

    return-void
.end method

.method public setHistoricalApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historicalApps"
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

    .line 64
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalApps:Ljava/util/List;

    return-void
.end method

.method public setHistoricalAssistants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historicalAssistants"
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

    .line 56
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalAssistants:Ljava/util/List;

    return-void
.end method

.method public setHistoricalCleanSheets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historicalCleanSheets"
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

    .line 96
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalCleanSheets:Ljava/util/List;

    return-void
.end method

.method public setHistoricalCompetitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historicalCompetitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalCompetitions:Ljava/util/List;

    return-void
.end method

.method public setHistoricalRedCards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historicalRedCards"
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

    .line 80
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalRedCards:Ljava/util/List;

    return-void
.end method

.method public setHistoricalScorers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historicalScorers"
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

    .line 48
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalScorers:Ljava/util/List;

    return-void
.end method

.method public setHistoricalYellowCards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historicalYellowCards"
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

    .line 72
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->historicalYellowCards:Ljava/util/List;

    return-void
.end method

.method public setManagedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "managedTeam"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->managedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setRecords(Lpl/mkrstudio/truefootball3/objects/Records;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "records"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/History;->records:Lpl/mkrstudio/truefootball3/objects/Records;

    return-void
.end method
