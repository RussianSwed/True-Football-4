.class public Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;
.super Ljava/lang/Object;
.source "PlayerSeasonRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x51c0ffee00000001L


# instance fields
.field apps:I

.field assists:I

.field club:Ljava/lang/String;

.field goals:I

.field season:Ljava/lang/String;

.field transfers:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->season:Ljava/lang/String;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->club:Ljava/lang/String;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->transfers:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->apps:I

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->goals:I

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->assists:I

    return-void
.end method


# virtual methods
.method public appendTransfer(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->transfers:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->transfers:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->transfers:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public getApps()I
    .locals 1

    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->apps:I

    return v0
.end method

.method public getAssists()I
    .locals 1

    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->assists:I

    return v0
.end method

.method public getClub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->club:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getGoals()I
    .locals 1

    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->goals:I

    return v0
.end method

.method public getSeason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->season:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTransfers()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->transfers:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public setClub(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->club:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSeason(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->season:Ljava/lang/String;

    :cond_0
    return-void
.end method
