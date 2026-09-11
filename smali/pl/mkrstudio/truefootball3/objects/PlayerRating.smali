.class public Lpl/mkrstudio/truefootball3/objects/PlayerRating;
.super Ljava/lang/Object;
.source "PlayerRating.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x51fca843f2f6765dL


# instance fields
.field monthlyRating:F

.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field rating:F


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "rating"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 18
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->rating:F

    .line 19
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->monthlyRating:F

    return-void
.end method


# virtual methods
.method public getMonthlyRating()F
    .locals 1

    .line 39
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->monthlyRating:F

    return v0
.end method

.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 23
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .line 31
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->rating:F

    return v0
.end method

.method public setMonthlyRating(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthlyRating"
        }
    .end annotation

    .line 43
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->monthlyRating:F

    return-void
.end method

.method public setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setRating(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rating"
        }
    .end annotation

    .line 35
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->rating:F

    return-void
.end method
