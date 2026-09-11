.class public Lpl/mkrstudio/truefootball3/objects/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x534e1fbd247c3aaaL


# instance fields
.field beginDate:Ljava/lang/String;

.field code:Ljava/lang/String;

.field competitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field continent:Lpl/mkrstudio/truefootball3/objects/Continent;

.field continentalRankPoints:I

.field faces:Lpl/mkrstudio/truefootball3/enums/Faces;

.field originalContinentalRankPoints:I

.field playableLeagues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field skill:F

.field teamGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;>;"
        }
    .end annotation
.end field

.field zone:Lpl/mkrstudio/truefootball3/objects/Zone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Continent;Lpl/mkrstudio/truefootball3/objects/Zone;Ljava/lang/String;ILpl/mkrstudio/truefootball3/enums/Faces;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "continent",
            "zone",
            "beginDate",
            "originalContinentalRankPoints",
            "faces"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->playableLeagues:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->competitions:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->code:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Country;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 35
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Country;->zone:Lpl/mkrstudio/truefootball3/objects/Zone;

    .line 36
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Country;->beginDate:Ljava/lang/String;

    .line 37
    iput p5, p0, Lpl/mkrstudio/truefootball3/objects/Country;->originalContinentalRankPoints:I

    .line 38
    iput p5, p0, Lpl/mkrstudio/truefootball3/objects/Country;->continentalRankPoints:I

    .line 39
    iput-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Country;->faces:Lpl/mkrstudio/truefootball3/enums/Faces;

    return-void
.end method


# virtual methods
.method public getAllFirstDivisionTeams()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllTeams()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 46
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getBeginDate()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->beginDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCompetitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->competitions:Ljava/util/List;

    return-object v0
.end method

.method public getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;
    .locals 1

    .line 128
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    return-object v0
.end method

.method public getContinentalRankPoints()I
    .locals 1

    .line 112
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->continentalRankPoints:I

    return v0
.end method

.method public getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;
    .locals 1

    .line 84
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->faces:Lpl/mkrstudio/truefootball3/enums/Faces;

    return-object v0
.end method

.method public getOriginalContinentalRankPoints()I
    .locals 1

    .line 152
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->originalContinentalRankPoints:I

    return v0
.end method

.method public getPlayableLeagues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->playableLeagues:Ljava/util/List;

    return-object v0
.end method

.method public getSkill()F
    .locals 1

    .line 144
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->skill:F

    return v0
.end method

.method public getTeamGroups()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    return-object v0
.end method

.method public getZone()Lpl/mkrstudio/truefootball3/objects/Zone;
    .locals 1

    .line 104
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->zone:Lpl/mkrstudio/truefootball3/objects/Zone;

    return-object v0
.end method

.method public hasTeam()Z
    .locals 3

    .line 63
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setBeginDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginDate"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->beginDate:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->code:Ljava/lang/String;

    return-void
.end method

.method public setCompetitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->competitions:Ljava/util/List;

    return-void
.end method

.method public setContinent(Lpl/mkrstudio/truefootball3/objects/Continent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continent"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    return-void
.end method

.method public setContinentalRankPoints(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continentalRankPoints"
        }
    .end annotation

    .line 116
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->continentalRankPoints:I

    return-void
.end method

.method public setFaces(Lpl/mkrstudio/truefootball3/enums/Faces;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faces"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->faces:Lpl/mkrstudio/truefootball3/enums/Faces;

    return-void
.end method

.method public setOriginalContinentalRankPoints(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalContinentalRankPoints"
        }
    .end annotation

    .line 156
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->originalContinentalRankPoints:I

    return-void
.end method

.method public setPlayableLeagues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playableLeagues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->playableLeagues:Ljava/util/List;

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

    .line 148
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->skill:F

    return-void
.end method

.method public setTeamGroups(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamGroups"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;>;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->teamGroups:Ljava/util/Map;

    return-void
.end method

.method public setZone(Lpl/mkrstudio/truefootball3/objects/Zone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zone"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Country;->zone:Lpl/mkrstudio/truefootball3/objects/Zone;

    return-void
.end method
