.class public Lpl/mkrstudio/truefootball3/objects/MatchFix;
.super Ljava/lang/Object;
.source "MatchFix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3a660bd5e57dbcf9L


# instance fields
.field fee:J

.field match:Lpl/mkrstudio/truefootball3/objects/Match;

.field userToWin:Z


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Match;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "match",
            "userToWin",
            "fee"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    .line 18
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->userToWin:Z

    .line 19
    iput-wide p3, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->fee:J

    return-void
.end method


# virtual methods
.method public getFee()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->fee:J

    return-wide v0
.end method

.method public getMatch()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 1

    .line 25
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0
.end method

.method public isUserToWin()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->userToWin:Z

    return v0
.end method

.method public setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fee"
        }
    .end annotation

    .line 45
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->fee:J

    return-void
.end method

.method public setMatch(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    return-void
.end method

.method public setUserToWin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userToWin"
        }
    .end annotation

    .line 37
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchFix;->userToWin:Z

    return-void
.end method
