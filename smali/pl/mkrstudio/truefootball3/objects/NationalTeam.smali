.class public Lpl/mkrstudio/truefootball3/objects/NationalTeam;
.super Lpl/mkrstudio/truefootball3/objects/Team;
.source "NationalTeam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCode:Ljava/lang/String;

.field private history:Ljava/util/List;

.field private previousPosition:I

.field private rankingPoints:I

.field private rankingPosition:I

.field private u21:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Team;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->history:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DIIBLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Country;Z)V
    .registers 11

    .line 23
    invoke-direct/range {p0 .. p10}, Lpl/mkrstudio/truefootball3/objects/Team;-><init>(Ljava/lang/String;Ljava/lang/String;DIIBLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Country;Z)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->history:Ljava/util/List;

    if-eqz p9, :cond_12

    .line 26
    invoke-virtual {p9}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->countryCode:Ljava/lang/String;

    :cond_12
    return-void
.end method


# virtual methods
.method public addHistory(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getHistory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 32
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->countryCode:Ljava/lang/String;

    .line 34
    :cond_14
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHistory()Ljava/util/List;
    .registers 2

    .line 84
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->history:Ljava/util/List;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->history:Ljava/util/List;

    .line 87
    :cond_b
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->history:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousPosition()I
    .registers 2

    .line 69
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->previousPosition:I

    return v0
.end method

.method public getRankingChange()I
    .registers 3

    .line 77
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->previousPosition:I

    if-lez v0, :cond_b

    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->rankingPosition:I

    if-gtz v1, :cond_9

    goto :goto_b

    :cond_9
    sub-int/2addr v0, v1

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method public getRankingPoints()I
    .registers 2

    .line 50
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->rankingPoints:I

    return v0
.end method

.method public getRankingPosition()I
    .registers 2

    .line 61
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->rankingPosition:I

    return v0
.end method

.method public isU21()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->u21:Z

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setPreviousPosition(I)V
    .registers 2

    .line 73
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->previousPosition:I

    return-void
.end method

.method public setRankingPoints(I)V
    .registers 2

    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 57
    :cond_3
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->rankingPoints:I

    return-void
.end method

.method public setRankingPosition(I)V
    .registers 2

    .line 65
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->rankingPosition:I

    return-void
.end method

.method public setU21(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->u21:Z

    return-void
.end method
