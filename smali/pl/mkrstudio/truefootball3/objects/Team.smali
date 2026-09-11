.class public Lpl/mkrstudio/truefootball3/objects/Team;
.super Ljava/lang/Object;
.source "Team.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1356da41750bfe7aL


# instance fields
.field budget:I

.field capacity:I

.field country:Lpl/mkrstudio/truefootball3/objects/Country;

.field editedName:Ljava/lang/String;

.field emblemFileName:Ljava/lang/String;

.field generateTeams:Z

.field lastPlace:B

.field leagueId:Ljava/lang/String;

.field originalName:Ljava/lang/String;

.field originalRank:I

.field players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field rank:I

.field skill:F

.field tactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

.field training:Lpl/mkrstudio/truefootball3/objects/Training;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    .line 32
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->AI_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->tactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    .line 33
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Training;->AI_TRAINING:Lpl/mkrstudio/truefootball3/objects/Training;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    const/4 v0, 0x0

    .line 34
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->lastPlace:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DIIBLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Country;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "emblem",
            "skill",
            "stadiumCapacity",
            "budget",
            "lastPlace",
            "leagueId",
            "country",
            "generateTeams"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    .line 32
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->AI_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->tactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    .line 33
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Training;->AI_TRAINING:Lpl/mkrstudio/truefootball3/objects/Training;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    const/4 v0, 0x0

    .line 34
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->lastPlace:B

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 44
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->originalName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Team;->emblemFileName:Ljava/lang/String;

    double-to-float p1, p3

    .line 46
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->skill:F

    const-wide p1, 0x4062c00000000000L    # 150.0

    mul-double p3, p3, p1

    const-wide p1, 0x407f400000000000L    # 500.0

    add-double/2addr p3, p1

    const/16 p1, 0x4b

    .line 47
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p3, p1

    double-to-int p1, p3

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->rank:I

    .line 48
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->originalRank:I

    .line 49
    iput p5, p0, Lpl/mkrstudio/truefootball3/objects/Team;->capacity:I

    .line 50
    iput p6, p0, Lpl/mkrstudio/truefootball3/objects/Team;->budget:I

    .line 51
    iput-object p8, p0, Lpl/mkrstudio/truefootball3/objects/Team;->leagueId:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lpl/mkrstudio/truefootball3/objects/Team;->country:Lpl/mkrstudio/truefootball3/objects/Country;

    if-lez p7, :cond_0

    .line 54
    iput-byte p7, p0, Lpl/mkrstudio/truefootball3/objects/Team;->lastPlace:B

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    .line 56
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->lastPlace:B

    .line 57
    :goto_0
    iput-boolean p10, p0, Lpl/mkrstudio/truefootball3/objects/Team;->generateTeams:Z

    return-void
.end method


# virtual methods
.method public calculateSkill()F
    .locals 8

    .line 130
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 133
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 136
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/16 v2, 0x12

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 140
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    int-to-float v0, v3

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getAveragePlayerSkill()I
    .locals 5

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 151
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/16 v1, 0x12

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_1
    div-int/2addr v3, v1

    return v3
.end method

.method public getBench()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 63
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Team$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/objects/Team$1;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getBudget()I
    .locals 1

    .line 244
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->budget:I

    return v0
.end method

.method public getCapacity()I
    .locals 1

    .line 252
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->capacity:I

    return v0
.end method

.method public getCountry()Lpl/mkrstudio/truefootball3/objects/Country;
    .locals 1

    .line 236
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->country:Lpl/mkrstudio/truefootball3/objects/Country;

    return-object v0
.end method

.method public getEditedName()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->editedName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmblemFileName()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->emblemFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPlace()B
    .locals 1

    .line 228
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->lastPlace:B

    return v0
.end method

.method public getLeagueId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->leagueId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineup()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 112
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Team$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/objects/Team$2;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->editedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->originalName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalRank()I
    .locals 1

    .line 284
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->originalRank:I

    return v0
.end method

.method public getPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 276
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->rank:I

    return v0
.end method

.method public getSkill()F
    .locals 1

    .line 178
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->skill:F

    return v0
.end method

.method public getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;
    .locals 1

    .line 220
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->tactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    return-object v0
.end method

.method public getThreeSubs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 93
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v5, v6, :cond_0

    .line 94
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 101
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public getTraining()Lpl/mkrstudio/truefootball3/objects/Training;
    .locals 1

    .line 268
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    return-object v0
.end method

.method public isGenerateTeams()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Team;->generateTeams:Z

    return v0
.end method

.method public setBudget(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "budget"
        }
    .end annotation

    .line 248
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->budget:I

    return-void
.end method

.method public setCapacity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 256
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->capacity:I

    return-void
.end method

.method public setCountry(Lpl/mkrstudio/truefootball3/objects/Country;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->country:Lpl/mkrstudio/truefootball3/objects/Country;

    return-void
.end method

.method public setEditedName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editedName"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->editedName:Ljava/lang/String;

    return-void
.end method

.method public setEmblemFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emblemFileName"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->emblemFileName:Ljava/lang/String;

    return-void
.end method

.method public setGenerateTeams(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generateTeams"
        }
    .end annotation

    .line 264
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->generateTeams:Z

    return-void
.end method

.method public setLastPlace(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPlace"
        }
    .end annotation

    .line 232
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->lastPlace:B

    return-void
.end method

.method public setLeagueId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leagueId"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->leagueId:Ljava/lang/String;

    return-void
.end method

.method public setOriginalName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalName"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->originalName:Ljava/lang/String;

    return-void
.end method

.method public setOriginalRank(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalRank"
        }
    .end annotation

    .line 288
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->originalRank:I

    return-void
.end method

.method public setPlayers(Ljava/util/List;)V
    .locals 0
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

    .line 212
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->players:Ljava/util/List;

    return-void
.end method

.method public setRank(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rank"
        }
    .end annotation

    .line 280
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->rank:I

    return-void
.end method

.method public setSkill(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skill"
        }
    .end annotation

    .line 216
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->skill:F

    return-void
.end method

.method public setTactics(Lpl/mkrstudio/truefootball3/objects/Tactics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tactics"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->tactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    return-void
.end method

.method public setTraining(Lpl/mkrstudio/truefootball3/objects/Training;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "training"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Team;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    return-void
.end method
