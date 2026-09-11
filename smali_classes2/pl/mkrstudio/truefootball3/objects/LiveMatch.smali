.class public Lpl/mkrstudio/truefootball3/objects/LiveMatch;
.super Ljava/lang/Object;
.source "LiveMatch.java"


# instance fields
.field awayGoals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field currentAwayGoals:I

.field currentHomeGoals:I

.field homeGoals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "homeTeam",
            "awayTeam",
            "homeGoals",
            "awayGoals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->currentHomeGoals:I

    .line 11
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->currentAwayGoals:I

    .line 15
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 16
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 17
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->homeGoals:Ljava/util/List;

    .line 18
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->awayGoals:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAwayGoals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->awayGoals:Ljava/util/List;

    return-object v0
.end method

.method public getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getCurrentAwayGoals()I
    .locals 1

    .line 62
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->currentAwayGoals:I

    return v0
.end method

.method public getCurrentHomeGoals()I
    .locals 1

    .line 54
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->currentHomeGoals:I

    return v0
.end method

.method public getHomeGoals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->homeGoals:Ljava/util/List;

    return-object v0
.end method

.method public getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 22
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public setAwayGoals(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "awayGoals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->awayGoals:Ljava/util/List;

    return-void
.end method

.method public setAwayTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "awayTeam"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setCurrentAwayGoals(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentAwayGoals"
        }
    .end annotation

    .line 66
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->currentAwayGoals:I

    return-void
.end method

.method public setCurrentHomeGoals(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentHomeGoals"
        }
    .end annotation

    .line 58
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->currentHomeGoals:I

    return-void
.end method

.method public setHomeGoals(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeGoals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->homeGoals:Ljava/util/List;

    return-void
.end method

.method public setHomeTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeTeam"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method
