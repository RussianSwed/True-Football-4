.class public Lpl/mkrstudio/truefootball3/objects/Trophy;
.super Ljava/lang/Object;
.source "Trophy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x406a723861af0d30L


# instance fields
.field competitionCode:Ljava/lang/String;

.field season:Ljava/lang/String;

.field team:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "competitionCode",
            "season",
            "team"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->competitionCode:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->season:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method


# virtual methods
.method public getCompetitionCode()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->competitionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeason()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->season:Ljava/lang/String;

    return-object v0
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 38
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public setCompetitionCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitionCode"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->competitionCode:Ljava/lang/String;

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

    .line 34
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->season:Ljava/lang/String;

    return-void
.end method

.method public setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Trophy;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method
