.class public Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;
.super Ljava/lang/Object;
.source "FriendlyOffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c6fe202359074f7L


# instance fields
.field date:Ljava/lang/String;

.field daysToExpire:B

.field daysToResponse:B

.field fee:I

.field from:Lpl/mkrstudio/truefootball3/objects/Team;

.field home:Z

.field to:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method public constructor <init>(BBLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;IZLjava/lang/String;)V
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
            "daysToExpire",
            "daysToResponse",
            "from",
            "to",
            "fee",
            "home",
            "date"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->daysToExpire:B

    .line 23
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->daysToResponse:B

    .line 24
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->from:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 25
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->to:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 26
    iput p5, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->fee:I

    .line 27
    iput-boolean p6, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->home:Z

    .line 28
    iput-object p7, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 10

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 34
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->to:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->from:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmpl-double v9, v1, v3

    if-lez v9, :cond_3

    .line 35
    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->home:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    return v8

    :cond_0
    return v7

    :cond_1
    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    return v8

    :cond_2
    return v7

    .line 46
    :cond_3
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->to:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v5

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->from:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v3

    float-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_4

    return v8

    .line 49
    :cond_4
    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->home:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    if-le v0, v1, :cond_5

    return v8

    :cond_5
    return v7

    :cond_6
    const/4 v1, 0x3

    if-le v0, v1, :cond_7

    return v8

    :cond_7
    return v7
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysToExpire()B
    .locals 1

    .line 66
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->daysToExpire:B

    return v0
.end method

.method public getDaysToResponse()B
    .locals 1

    .line 114
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->daysToResponse:B

    return v0
.end method

.method public getFee()I
    .locals 1

    .line 90
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->fee:I

    return v0
.end method

.method public getFrom()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->from:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getTo()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 82
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->to:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public isHome()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->home:Z

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->date:Ljava/lang/String;

    return-void
.end method

.method public setDaysToExpire(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToExpire"
        }
    .end annotation

    .line 70
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->daysToExpire:B

    return-void
.end method

.method public setDaysToResponse(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToResponse"
        }
    .end annotation

    .line 118
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->daysToResponse:B

    return-void
.end method

.method public setFee(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fee"
        }
    .end annotation

    .line 94
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->fee:I

    return-void
.end method

.method public setFrom(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->from:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setHome(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "home"
        }
    .end annotation

    .line 102
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->home:Z

    return-void
.end method

.method public setTo(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->to:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method
