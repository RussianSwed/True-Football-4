.class public Lpl/mkrstudio/truefootball3/objects/Supporters;
.super Ljava/lang/Object;
.source "Supporters.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x75a31d0596e25d92L


# instance fields
.field confidence:I

.field donationsForFans:B

.field favouritePlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field rivalries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Rivalry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 15
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    const/4 v0, 0x0

    .line 16
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->donationsForFans:B

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->rivalries:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->favouritePlayers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public changeConfidence(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "change"
        }
    .end annotation

    .line 79
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    add-int/2addr v0, p1

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    const/16 p1, 0x64

    if-le v0, p1, :cond_0

    .line 80
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    .line 81
    :cond_0
    iget p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    :cond_1
    return-void
.end method

.method public getConfidence()I
    .locals 1

    .line 87
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    return v0
.end method

.method public getDonationsForFans()B
    .locals 1

    .line 99
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->donationsForFans:B

    return v0
.end method

.method public getFavouritePlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->favouritePlayers:Ljava/util/List;

    return-object v0
.end method

.method public getRivalries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Rivalry;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->rivalries:Ljava/util/List;

    return-object v0
.end method

.method public isRivalryWith(Lpl/mkrstudio/truefootball3/objects/Team;)D
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->rivalries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Rivalry;

    .line 22
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Rivalry;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 23
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Rivalry;->getMeaning()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-wide v0, 0x3ff999999999999aL    # 1.6

    return-wide v0

    .line 25
    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Rivalry;->getMeaning()B

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-wide v0, 0x3ff6666666666666L    # 1.4

    return-wide v0

    .line 27
    :cond_2
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Rivalry;->getMeaning()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-wide v0, 0x3ff199999999999aL    # 1.1

    return-wide v0

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public selectFavouritePlayers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "players"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 49
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v3

    invoke-direct {v2, p0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;-><init>(Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Player;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;

    .line 52
    iget-object v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    add-int/lit8 v2, v2, 0xf

    iput v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    .line 53
    :cond_2
    iget-object v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v2

    const/16 v3, 0x15

    if-gt v2, v3, :cond_3

    iget v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    .line 54
    :cond_3
    iget-object v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v2

    const/16 v3, 0x23

    if-lt v2, v3, :cond_1

    iget v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    goto :goto_1

    .line 57
    :cond_4
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/Supporters$1;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Supporters$1;-><init>(Lpl/mkrstudio/truefootball3/objects/Supporters;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->favouritePlayers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->favouritePlayers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->favouritePlayers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-le p1, v1, :cond_7

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->favouritePlayers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setConfidence(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confidence"
        }
    .end annotation

    .line 107
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->confidence:I

    return-void
.end method

.method public setDonationsForFans(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "donationsForFans"
        }
    .end annotation

    .line 103
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->donationsForFans:B

    return-void
.end method

.method public setFavouritePlayers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "favouritePlayers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->favouritePlayers:Ljava/util/List;

    return-void
.end method

.method public setRivalries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rivalries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Rivalry;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters;->rivalries:Ljava/util/List;

    return-void
.end method
