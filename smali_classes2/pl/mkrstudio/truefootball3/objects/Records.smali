.class public Lpl/mkrstudio/truefootball3/objects/Records;
.super Ljava/lang/Object;
.source "Records.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2ac785e7fbbd4597L


# instance fields
.field apps:I

.field assists:I

.field biggestAttendance:Lpl/mkrstudio/truefootball3/objects/Match;

.field goals:I

.field highestLoss:Lpl/mkrstudio/truefootball3/objects/Match;

.field highestWin:Lpl/mkrstudio/truefootball3/objects/Match;

.field mostApps:Lpl/mkrstudio/truefootball3/objects/Player;

.field mostAssists:Lpl/mkrstudio/truefootball3/objects/Player;

.field mostGoals:Lpl/mkrstudio/truefootball3/objects/Match;

.field mostRedCards:Lpl/mkrstudio/truefootball3/objects/Player;

.field mostYellowCards:Lpl/mkrstudio/truefootball3/objects/Player;

.field redCards:I

.field topScorer:Lpl/mkrstudio/truefootball3/objects/Player;

.field yellowCards:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->apps:I

    .line 20
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->goals:I

    .line 21
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->yellowCards:I

    .line 22
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->redCards:I

    .line 23
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->assists:I

    return-void
.end method


# virtual methods
.method public getApps()I
    .locals 1

    .line 103
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->apps:I

    return v0
.end method

.method public getAssists()I
    .locals 1

    .line 135
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->assists:I

    return v0
.end method

.method public getBiggestAttendance()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 1

    .line 55
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->biggestAttendance:Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0
.end method

.method public getGoals()I
    .locals 1

    .line 111
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->goals:I

    return v0
.end method

.method public getHighestLoss()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 1

    .line 39
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->highestLoss:Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0
.end method

.method public getHighestWin()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 1

    .line 31
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->highestWin:Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0
.end method

.method public getMostApps()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 63
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostApps:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getMostAssists()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 95
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostAssists:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getMostGoals()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 1

    .line 47
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostGoals:Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0
.end method

.method public getMostRedCards()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostRedCards:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getMostYellowCards()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostYellowCards:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getRedCards()I
    .locals 1

    .line 127
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->redCards:I

    return v0
.end method

.method public getTopScorer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->topScorer:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getYellowCards()I
    .locals 1

    .line 119
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Records;->yellowCards:I

    return v0
.end method

.method public setApps(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apps"
        }
    .end annotation

    .line 107
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->apps:I

    return-void
.end method

.method public setAssists(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assists"
        }
    .end annotation

    .line 139
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->assists:I

    return-void
.end method

.method public setBiggestAttendance(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "biggestAttendance"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->biggestAttendance:Lpl/mkrstudio/truefootball3/objects/Match;

    return-void
.end method

.method public setGoals(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goals"
        }
    .end annotation

    .line 115
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->goals:I

    return-void
.end method

.method public setHighestLoss(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highestLoss"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->highestLoss:Lpl/mkrstudio/truefootball3/objects/Match;

    return-void
.end method

.method public setHighestWin(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highestWin"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->highestWin:Lpl/mkrstudio/truefootball3/objects/Match;

    return-void
.end method

.method public setMostApps(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mostApps"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostApps:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setMostAssists(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mostAssists"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostAssists:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setMostGoals(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mostGoals"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostGoals:Lpl/mkrstudio/truefootball3/objects/Match;

    return-void
.end method

.method public setMostRedCards(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mostRedCards"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostRedCards:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setMostYellowCards(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mostYellowCards"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->mostYellowCards:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setRedCards(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redCards"
        }
    .end annotation

    .line 131
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->redCards:I

    return-void
.end method

.method public setTopScorer(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topScorer"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->topScorer:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setYellowCards(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yellowCards"
        }
    .end annotation

    .line 123
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Records;->yellowCards:I

    return-void
.end method
