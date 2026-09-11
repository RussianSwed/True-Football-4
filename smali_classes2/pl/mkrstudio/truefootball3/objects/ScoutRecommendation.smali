.class public Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;
.super Ljava/lang/Object;
.source "ScoutRecommendation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x54696337f5f95abfL


# instance fields
.field daysLeft:B

.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field recommendationLevel:B


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;BB)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "player",
            "recommendationLevel",
            "daysLeft"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 17
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->recommendationLevel:B

    .line 18
    iput-byte p3, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->daysLeft:B

    return-void
.end method


# virtual methods
.method public getDaysLeft()B
    .locals 1

    .line 28
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->daysLeft:B

    return v0
.end method

.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 24
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getRecommendationLevel()B
    .locals 1

    .line 40
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->recommendationLevel:B

    return v0
.end method

.method public setDaysLeft(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysLeft"
        }
    .end annotation

    .line 32
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->daysLeft:B

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

    .line 36
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setRecommendationLevel(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendationLevel"
        }
    .end annotation

    .line 44
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->recommendationLevel:B

    return-void
.end method
