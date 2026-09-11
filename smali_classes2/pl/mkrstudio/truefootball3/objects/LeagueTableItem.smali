.class public Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;
.super Ljava/lang/Object;
.source "LeagueTableItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x47643bec58ded2fbL


# instance fields
.field draws:I

.field flag:Ljava/lang/String;

.field goalsLost:I

.field goalsScored:I

.field losses:I

.field teamName:Ljava/lang/String;

.field wins:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "teamName",
            "wins",
            "draws",
            "losses",
            "goalsScored",
            "goalsLost",
            "flag"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->teamName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->wins:I

    .line 21
    iput p3, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->draws:I

    .line 22
    iput p4, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->losses:I

    .line 23
    iput p5, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsScored:I

    .line 24
    iput p6, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsLost:I

    .line 25
    iput-object p7, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->flag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "teamName",
            "flag"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->teamName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->wins:I

    .line 31
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->draws:I

    .line 32
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->losses:I

    .line 33
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsScored:I

    .line 34
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsLost:I

    .line 35
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->flag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDraws()I
    .locals 1

    .line 59
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->draws:I

    return v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getGoalsLost()I
    .locals 1

    .line 83
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsLost:I

    return v0
.end method

.method public getGoalsScored()I
    .locals 1

    .line 75
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsScored:I

    return v0
.end method

.method public getLosses()I
    .locals 1

    .line 67
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->losses:I

    return v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public getWins()I
    .locals 1

    .line 51
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->wins:I

    return v0
.end method

.method public setDraws(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draws"
        }
    .end annotation

    .line 63
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->draws:I

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->flag:Ljava/lang/String;

    return-void
.end method

.method public setGoalsLost(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goalsLost"
        }
    .end annotation

    .line 87
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsLost:I

    return-void
.end method

.method public setGoalsScored(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goalsScored"
        }
    .end annotation

    .line 79
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->goalsScored:I

    return-void
.end method

.method public setLosses(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "losses"
        }
    .end annotation

    .line 71
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->losses:I

    return-void
.end method

.method public setTeamName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamName"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->teamName:Ljava/lang/String;

    return-void
.end method

.method public setWins(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wins"
        }
    .end annotation

    .line 55
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->wins:I

    return-void
.end method
