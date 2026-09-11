.class public Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;
.super Ljava/lang/Object;
.source "CompetitionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x13c7dc56677602f2L


# instance fields
.field championCompetition:Z

.field championsCupWinnerCompetition:Z

.field competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

.field cupWinnerCompetition:Z

.field fansBehaviour:D

.field fansInterest:D

.field federationCupWinnerCompetition:Z

.field gameOverPlaces:[B

.field highlightedPlaces:[B

.field id:Ljava/lang/String;

.field moneyPrize:I

.field orderType:Lpl/mkrstudio/truefootball3/enums/OrderType;

.field playerNationalities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;"
        }
    .end annotation
.end field

.field promotionOrStayingPlaces:[B

.field promotionPlaces:[B

.field queries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;",
            ">;"
        }
    .end annotation
.end field

.field relegationOrStayingPlaces:[B

.field relegationPlaces:[B

.field tvRights:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->queries:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->playerNationalities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->moneyPrize:I

    .line 25
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->tvRights:I

    .line 30
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->championCompetition:Z

    .line 31
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->cupWinnerCompetition:Z

    .line 32
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->championsCupWinnerCompetition:Z

    .line 33
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->federationCupWinnerCompetition:Z

    return-void
.end method


# virtual methods
.method public getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;
    .locals 1

    .line 78
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    return-object v0
.end method

.method public getFansBehaviour()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->fansBehaviour:D

    return-wide v0
.end method

.method public getFansInterest()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->fansInterest:D

    return-wide v0
.end method

.method public getGameOverPlaces()[B
    .locals 1

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->gameOverPlaces:[B

    return-object v0
.end method

.method public getHighlightedPlaces()[B
    .locals 1

    .line 86
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->highlightedPlaces:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMoneyPrize()I
    .locals 1

    .line 110
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->moneyPrize:I

    return v0
.end method

.method public getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;
    .locals 1

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->orderType:Lpl/mkrstudio/truefootball3/enums/OrderType;

    return-object v0
.end method

.method public getPlayerNationalities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->playerNationalities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPromotionOrStayingPlaces()[B
    .locals 1

    .line 150
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->promotionOrStayingPlaces:[B

    return-object v0
.end method

.method public getPromotionPlaces()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->promotionPlaces:[B

    return-object v0
.end method

.method public getQueries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->queries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRelegationOrStayingPlaces()[B
    .locals 1

    .line 158
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->relegationOrStayingPlaces:[B

    return-object v0
.end method

.method public getRelegationPlaces()[B
    .locals 1

    .line 142
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->relegationPlaces:[B

    return-object v0
.end method

.method public getTvRights()I
    .locals 1

    .line 190
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->tvRights:I

    return v0
.end method

.method public isChampionCompetition()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->championCompetition:Z

    return v0
.end method

.method public isChampionsCupWinnerCompetition()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->championsCupWinnerCompetition:Z

    return v0
.end method

.method public isCupWinnerCompetition()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->cupWinnerCompetition:Z

    return v0
.end method

.method public isFederationCupWinnerCompetition()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->federationCupWinnerCompetition:Z

    return v0
.end method

.method public setChampionCompetition(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "championCompetition"
        }
    .end annotation

    .line 122
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->championCompetition:Z

    return-void
.end method

.method public setChampionsCupWinnerCompetition(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "championsCupWinnerCompetition"
        }
    .end annotation

    .line 178
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->championsCupWinnerCompetition:Z

    return-void
.end method

.method public setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitionType"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    return-void
.end method

.method public setCupWinnerCompetition(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cupWinnerCompetition"
        }
    .end annotation

    .line 170
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->cupWinnerCompetition:Z

    return-void
.end method

.method public setFansBehaviour(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fansBehaviour"
        }
    .end annotation

    .line 74
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->fansBehaviour:D

    return-void
.end method

.method public setFansInterest(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fansInterest"
        }
    .end annotation

    .line 98
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->fansInterest:D

    return-void
.end method

.method public setFederationCupWinnerCompetition(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "federationCupWinnerCompetition"
        }
    .end annotation

    .line 186
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->federationCupWinnerCompetition:Z

    return-void
.end method

.method public setGameOverPlaces([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameOverPlaces"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->gameOverPlaces:[B

    return-void
.end method

.method public setHighlightedPlaces([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highlightedPlaces"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->highlightedPlaces:[B

    return-void
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

    .line 106
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setMoneyPrize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moneyPrize"
        }
    .end annotation

    .line 114
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->moneyPrize:I

    return-void
.end method

.method public setOrderType(Lpl/mkrstudio/truefootball3/enums/OrderType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderType"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->orderType:Lpl/mkrstudio/truefootball3/enums/OrderType;

    return-void
.end method

.method public setPlayerNationalities(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerNationalities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->playerNationalities:Ljava/util/ArrayList;

    return-void
.end method

.method public setPromotionOrStayingPlaces([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promotionOrStayingPlaces"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->promotionOrStayingPlaces:[B

    return-void
.end method

.method public setPromotionPlaces([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promotionPlaces"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->promotionPlaces:[B

    return-void
.end method

.method public setQueries(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->queries:Ljava/util/ArrayList;

    return-void
.end method

.method public setRelegationOrStayingPlaces([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relegationOrStayingPlaces"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->relegationOrStayingPlaces:[B

    return-void
.end method

.method public setRelegationPlaces([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relegationPlaces"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->relegationPlaces:[B

    return-void
.end method

.method public setTvRights(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvRights"
        }
    .end annotation

    .line 194
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->tvRights:I

    return-void
.end method
