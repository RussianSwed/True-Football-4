.class public Lpl/mkrstudio/truefootball3/objects/World;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6a8fd7835e3dfc4eL


# instance fields
.field continents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Continent;",
            ">;"
        }
    .end annotation
.end field

.field editedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

.field freeAgents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field nationalTeams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->freeAgents:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->nationalTeams:Ljava/util/HashMap;

    return-void
.end method

.method private updateAmericanTeamGroup(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "competitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1823
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "USA_1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    .line 1824
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "USA_PLAYOFF1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v1, p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1825
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2, p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1827
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1828
    invoke-interface {v0, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1829
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1830
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1832
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1834
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CAN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1835
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1837
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1838
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1841
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1842
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v2

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Team;->setLastPlace(B)V

    goto :goto_2

    .line 1845
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1846
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1847
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1848
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1850
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1851
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object v0
.end method

.method private updateCanadianTeamGroup(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "competitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1858
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "CAN_CUP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p2

    .line 1860
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1861
    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Team;->setLastPlace(B)V

    goto :goto_0

    .line 1864
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1866
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1867
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1869
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1870
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method private updateGreekTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 3
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
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1911
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "GRE_1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    .line 1912
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "GRE_PLAYOFF1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    .line 1913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1914
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x5

    :goto_0
    const/16 v2, 0x10

    if-ge p1, v2, :cond_0

    .line 1917
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private updateKoreanTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 3
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
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1893
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "KOR_1A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    .line 1894
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "KOR_1B"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    .line 1895
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1896
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateRomanianSecondTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "competitions",
            "ab"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1876
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROM_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    .line 1877
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v1

    .line 1878
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "B"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    .line 1879
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1881
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1883
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1884
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/16 p1, 0xc

    :goto_2
    const/16 v1, 0xe

    if-ge p1, v1, :cond_2

    .line 1887
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-object p2
.end method

.method private updateRomanianTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 3
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
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1902
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ROM_1A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    .line 1903
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "ROM_1B"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    .line 1904
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1905
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAllKnownPlayers(Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/lang/String;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transfers",
            "position",
            "playerName",
            "playerClub",
            "chosenTeam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Transfers;",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 1973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 1975
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v1

    .line 1976
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v2, p5, :cond_0

    .line 1977
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1978
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1979
    invoke-virtual {p0, p2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->positionMatches(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p3, v3}, Lpl/mkrstudio/truefootball3/objects/World;->nameMatches(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1980
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1984
    :cond_3
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1985
    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/World;->freeAgents:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1986
    invoke-virtual {p0, p2, p5}, Lpl/mkrstudio/truefootball3/objects/World;->positionMatches(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p3, p5}, Lpl/mkrstudio/truefootball3/objects/World;->nameMatches(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, p5}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1987
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1992
    :cond_5
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/World$3;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/objects/World$3;-><init>(Lpl/mkrstudio/truefootball3/objects/World;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getContinentByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Continent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 402
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContinentById(I)Lpl/mkrstudio/truefootball3/objects/Continent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 410
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContinents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Continent;",
            ">;"
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    return-object v0
.end method

.method getCountriesByZone(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoneCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 380
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 381
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 426
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEastAsianTeams(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asianRanking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;
    .locals 1

    .line 2200
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->editedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

    return-object v0
.end method

.method public getFreeAgentTeam(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chosenTeam"
        }
    .end annotation

    .line 1950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1951
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v1

    .line 1952
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 1953
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq p1, v4, :cond_1

    .line 1954
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v5

    float-to-double v5, v5

    float-to-double v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v11, v7, v9

    cmpg-double v13, v5, v11

    if-gez v13, :cond_1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v9

    cmpg-double v9, v7, v5

    if-gtz v9, :cond_1

    .line 1955
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1958
    :cond_2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 1959
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1960
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFreeAgents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 2018
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->freeAgents:Ljava/util/List;

    return-object v0
.end method

.method public getKnownTeams(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playersHaveToExist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 362
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 363
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v3

    .line 364
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 365
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_3

    .line 366
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 367
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez p1, :cond_2

    .line 369
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getNumberOfTeamsInGroupPhaseForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userCountry",
            "c"
        }
    .end annotation

    .line 2179
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v0, v1, :cond_0

    .line 2180
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "north_america"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2185
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2186
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    .line 2189
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p1, 0x8

    return p1

    .line 2192
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PHI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method public getPlayableCountries()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 391
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 392
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getPlayableLeagues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSortedTeamsForCountry(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;IILpl/mkrstudio/truefootball3/objects/EditedData;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)Ljava/util/List;
    .locals 24
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
            "code",
            "competitions",
            "context",
            "howMany",
            "championsCupTeams",
            "ed",
            "dbh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Landroid/content/Context;",
            "II",
            "Lpl/mkrstudio/truefootball3/objects/EditedData;",
            "Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 468
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CAN"

    .line 470
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "8.0"

    const-string v12, "6.0"

    const-string v13, "IND"

    const-string v14, "7.0"

    const-string v15, "11.0"

    const-string v2, "10.0"

    const-string v3, "9.0"

    move-object/from16 v16, v9

    if-nez v10, :cond_26

    const-string v10, "USA"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_12

    :cond_0
    const-string v10, "SMR"

    .line 484
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v9, "_1"

    move-object/from16 v17, v15

    const-string v15, "_1B"

    move-object/from16 v18, v2

    const-string v2, "_1A"

    if-eqz v10, :cond_4

    .line 485
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 486
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "SMR_1A"

    .line 487
    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v19, v3

    const-string v3, "SMR_1B"

    .line 488
    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v4, :cond_1

    .line 490
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v20, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 491
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    move-object/from16 v20, v11

    :goto_0
    if-nez v3, :cond_2

    .line 494
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 497
    :cond_2
    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v19, v3

    move-object/from16 v20, v11

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move/from16 v3, p4

    move-object v11, v14

    move-object/from16 v10, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    :goto_2
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto/16 :goto_17

    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v20, v11

    .line 505
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 507
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 509
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v3, v20

    .line 511
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v4, v19

    .line 513
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v11, p5

    goto/16 :goto_6

    :cond_6
    move-object/from16 v4, v19

    goto :goto_3

    :cond_7
    move-object/from16 v4, v19

    move-object/from16 v3, v20

    .line 516
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 518
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 520
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    const/4 v6, 0x0

    .line 521
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    move/from16 v11, p5

    invoke-interface {v5, v11, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 522
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move/from16 v11, p5

    :goto_4
    const/4 v6, 0x0

    .line 524
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_9

    .line 525
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 528
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 531
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v20, v3

    move-object v6, v4

    move-object v11, v14

    move-object/from16 v10, v17

    move-object/from16 v4, v18

    move/from16 v3, p4

    goto/16 :goto_2

    :cond_a
    move/from16 v11, p5

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    :goto_6
    const-string v10, "TUN"

    .line 536
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "3.0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    move-object/from16 v10, v18

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v11, v17

    if-nez v16, :cond_d

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    goto :goto_7

    :cond_b
    move-object/from16 v20, v3

    goto/16 :goto_9

    :cond_c
    move-object/from16 v11, v17

    move-object/from16 v10, v18

    .line 537
    :cond_d
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_e

    goto :goto_8

    .line 548
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v20, v3

    move-object v6, v4

    move-object v4, v10

    move-object v10, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object v11, v14

    goto/16 :goto_16

    .line 538
    :cond_f
    :goto_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v3

    .line 539
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v6, v3, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v17, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 540
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v12

    invoke-virtual {v6, v12, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 541
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move/from16 v3, p4

    move-object v6, v4

    move-object v4, v10

    move-object v10, v11

    move-object/from16 v18, v13

    move-object v11, v14

    goto/16 :goto_17

    :cond_10
    move-object/from16 v20, v3

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    :goto_9
    move-object/from16 v17, v12

    const-string v3, "TGA"

    .line 551
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v12, "_1C"

    if-eqz v3, :cond_17

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 552
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_16

    .line 553
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v13

    const-string v13, "TGA_1A"

    .line 554
    invoke-virtual {v0, v13}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v19, v14

    const-string v14, "TGA_1B"

    .line 555
    invoke-virtual {v0, v14}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v21, v11

    const-string v11, "TGA_1C"

    .line 556
    invoke-virtual {v0, v11}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v22, v10

    const-string v10, "TGA_1D"

    .line 557
    invoke-virtual {v0, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-nez v13, :cond_12

    .line 559
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v13

    invoke-virtual {v6, v13, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v23, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/util/List;

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_a

    :cond_12
    move-object/from16 v23, v4

    :goto_a
    if-nez v14, :cond_13

    .line 563
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    :cond_13
    if-nez v11, :cond_14

    .line 567
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/util/List;

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    :cond_14
    if-nez v10, :cond_15

    .line 571
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_1D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 574
    :cond_15
    invoke-interface {v3, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 575
    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    invoke-interface {v3, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 577
    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_16
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_b
    move/from16 v3, p4

    move-object/from16 v11, v19

    move-object/from16 v10, v21

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    goto/16 :goto_17

    :cond_17
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    const-string v3, "PNG"

    .line 584
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v3, v23

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v4, v22

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    move-object/from16 v10, v21

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    goto :goto_c

    :cond_18
    move-object/from16 v10, v21

    goto :goto_c

    :cond_19
    move-object/from16 v10, v21

    move-object/from16 v4, v22

    .line 585
    :goto_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1a

    goto :goto_d

    .line 594
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e

    .line 586
    :cond_1b
    :goto_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual {v6, v11, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual {v6, v11, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual {v6, v11, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v0, v9, v11}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 590
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual {v6, v11, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v9, v5}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_e
    move-object v6, v3

    move-object/from16 v11, v19

    goto/16 :goto_16

    :cond_1c
    move-object/from16 v10, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    :cond_1d
    const-string v11, "VEN"

    .line 597
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 598
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1e

    goto :goto_f

    .line 613
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e

    .line 599
    :cond_1f
    :goto_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 600
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual {v6, v11, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 601
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v13

    invoke-virtual {v6, v13, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 602
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v14

    invoke-virtual {v6, v14, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 603
    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 604
    invoke-interface {v9, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v11}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v13}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e

    :cond_20
    const-string v11, "NGA"

    .line 617
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    move-object/from16 v11, v19

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_22

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_21

    goto :goto_10

    .line 627
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_15

    .line 619
    :cond_22
    :goto_10
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 620
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v12

    invoke-virtual {v6, v12, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v12

    invoke-virtual {v6, v12, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 622
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v12

    invoke-virtual {v6, v12, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-virtual {v0, v9, v12}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 623
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v12

    invoke-virtual {v6, v12, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v9, v5}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_15

    :cond_23
    move-object/from16 v11, v19

    .line 631
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_25

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v12

    invoke-virtual {v6, v12, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    .line 635
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 637
    :goto_11
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    goto/16 :goto_15

    :cond_26
    :goto_12
    move-object v4, v2

    move-object/from16 v20, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object v11, v14

    move-object v10, v15

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_1W"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v12, "_1E"

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_13

    .line 477
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_14

    .line 472
    :cond_28
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v13

    invoke-virtual {v6, v13, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-virtual {v0, v2, v13}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v13

    invoke-virtual {v6, v13, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2, v5}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_14
    move-object/from16 v2, v16

    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x3

    move-object v6, v3

    move/from16 v3, p4

    if-le v3, v5, :cond_2a

    const-string v5, "CAN_OTHER"

    move-object/from16 v9, p3

    .line 481
    invoke-virtual {v0, v2, v5, v9}, Lpl/mkrstudio/truefootball3/objects/World;->initTeamGroup(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 482
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    :cond_29
    :goto_15
    move-object v6, v3

    :goto_16
    move/from16 v3, p4

    .line 690
    :cond_2a
    :goto_17
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/World$1;

    invoke-direct {v2, v0}, Lpl/mkrstudio/truefootball3/objects/World$1;-><init>(Lpl/mkrstudio/truefootball3/objects/World;)V

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v3, :cond_2b

    .line 711
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2b
    move-object/from16 v5, v18

    .line 714
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object/from16 v5, v17

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    move-object/from16 v5, v20

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    :cond_2c
    move/from16 v4, p5

    if-eqz v4, :cond_31

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CUP"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPreviousOrCurrentCompetition(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 721
    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_19
    const/4 v8, 0x1

    if-ge v9, v3, :cond_2f

    .line 725
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_2d

    if-ge v9, v4, :cond_2d

    const/4 v5, 0x1

    .line 727
    :cond_2d
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_2e

    if-lt v9, v4, :cond_2e

    const/4 v6, 0x1

    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_2f
    if-nez v5, :cond_30

    if-nez v6, :cond_30

    sub-int/2addr v3, v8

    .line 732
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_30
    if-eqz v6, :cond_31

    .line 735
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 736
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    :goto_1a
    return-object v2
.end method

.method public getTeamByName(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 353
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 434
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWestAsianTeams(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asianRanking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;)",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getZoneById(ILjava/util/List;)Lpl/mkrstudio/truefootball3/objects/Zone;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "zones"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Zone;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Zone;"
        }
    .end annotation

    .line 417
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Zone;

    .line 418
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Zone;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initTeamGroup(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countryCode",
            "league",
            "context"
        }
    .end annotation

    .line 453
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 454
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p3}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 456
    :try_start_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 460
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 461
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/EditedData;

    const-string v2, "edited_data"

    invoke-direct {v1, v0, v2, p3}, Lpl/mkrstudio/truefootball3/objects/EditedData;-><init>(Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v1

    .line 462
    :goto_1
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/EditedData;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    .line 463
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    :cond_1
    return-void
.end method

.method nameMatches(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "player"
        }
    .end annotation

    const-string v0, ""

    if-eq p1, v0, :cond_1

    .line 1969
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Transfers;Landroid/content/Context;)V
    .locals 13
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
            "time",
            "youth",
            "inbox",
            "chosenTeam",
            "clubStaff",
            "transfers",
            "context"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    .line 35
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/World;->updatePlayers(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "06.30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v12, "12.31"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v5, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/objects/World;->updateAllPlayers(ZLpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Transfers;Landroid/content/Context;)V

    .line 40
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    move-object/from16 v1, p3

    .line 41
    invoke-virtual {p0, v9, p1, v1, v10}, Lpl/mkrstudio/truefootball3/objects/World;->updatePeople(Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Landroid/content/Context;)V

    .line 43
    :cond_2
    invoke-virtual {p0, v9, v10}, Lpl/mkrstudio/truefootball3/objects/World;->updateDailyPeople(Lpl/mkrstudio/truefootball3/objects/ClubStaff;Landroid/content/Context;)V

    return-void
.end method

.method public order(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1922
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1923
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1924
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 1925
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1926
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    add-double/2addr v3, v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1929
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1932
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/World$2;

    invoke-direct {v2, p0, v0, v1}, Lpl/mkrstudio/truefootball3/objects/World$2;-><init>(Lpl/mkrstudio/truefootball3/objects/World;Ljava/util/List;[D)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method positionMatches(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "player"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1965
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method putTeamGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "newOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 442
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContinents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Continent;",
            ">;)V"
        }
    .end annotation

    .line 2014
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/World;->continents:Ljava/util/List;

    return-void
.end method

.method public setEditedData(Lpl/mkrstudio/truefootball3/objects/EditedData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editedData"
        }
    .end annotation

    .line 2204
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/World;->editedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

    return-void
.end method

.method public setFreeAgents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "freeAgents"
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

    .line 2022
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/World;->freeAgents:Ljava/util/List;

    return-void
.end method

.method public updateAllPlayers(ZLpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Transfers;Landroid/content/Context;)V
    .locals 21
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
            "newYear",
            "youth",
            "chosenTeam",
            "inbox",
            "time",
            "transfers",
            "context"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 169
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 171
    new-instance v6, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    move-object/from16 v7, p7

    invoke-direct {v6, v7}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    move-object/from16 v10, p0

    .line 175
    invoke-virtual {v10, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v11

    .line 176
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 177
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v18

    const/16 v16, 0x1

    add-int/lit8 v10, v18, 0x1

    int-to-byte v10, v10

    invoke-virtual {v7, v10}, Lpl/mkrstudio/truefootball3/objects/Player;->setAge(B)V

    .line 183
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v10

    move-object/from16 v18, v12

    const/16 v12, 0x24

    if-le v10, v12, :cond_4

    const/4 v10, 0x2

    .line 184
    invoke-virtual {v7, v10}, Lpl/mkrstudio/truefootball3/objects/Player;->worsen(I)V

    const/4 v10, 0x3

    .line 185
    invoke-virtual {v5, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    if-eqz v12, :cond_0

    .line 186
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v10

    const/16 v12, 0x2c

    if-ne v10, v12, :cond_4

    :cond_0
    if-ne v13, v1, :cond_2

    .line 188
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v12

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v12, v0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildEndOfCareerMessage(Ljava/lang/String;ILjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 189
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Transfers;->removeOffers(Lpl/mkrstudio/truefootball3/objects/Player;)V

    goto :goto_2

    .line 194
    :cond_2
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v6, v3, v0, v10, v12}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateOnePlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/Position;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    .line 196
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :goto_2
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object/from16 v18, v12

    .line 208
    :cond_4
    :goto_3
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 210
    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getEndDate()I

    move-result v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Lpl/mkrstudio/truefootball3/objects/Time;->areDatesEqual(Ljava/lang/String;Ljava/util/GregorianCalendar;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne v13, v1, :cond_5

    .line 212
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractExpiredMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 214
    :cond_5
    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Transfers;->removeOffers(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 216
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    if-ne v13, v1, :cond_7

    .line 220
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_7
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Contract;->renew(Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 226
    :cond_8
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Lpl/mkrstudio/truefootball3/objects/Time;->areDatesEqual(Ljava/lang/String;Ljava/util/GregorianCalendar;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-ne v13, v1, :cond_d

    .line 229
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractExpiredMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 230
    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Transfers;->removeOffers(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 231
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v12, v1, :cond_9

    .line 236
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v19

    const/high16 v20, 0x41200000    # 10.0f

    mul-float v19, v19, v20

    move-object/from16 v20, v6

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v6

    int-to-float v6, v6

    sub-float v19, v19, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v19, 0x41100000    # 9.0f

    cmpg-float v6, v6, v19

    if-gez v6, :cond_a

    .line 237
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v20, v6

    :cond_a
    :goto_5
    move-object/from16 v6, v20

    goto :goto_4

    :cond_b
    move-object/from16 v20, v6

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 241
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v6

    invoke-virtual {v6, v3}, Lpl/mkrstudio/truefootball3/objects/Contract;->renew(Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 243
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v6

    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 244
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 245
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_c
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    move-object/from16 v20, v6

    .line 254
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Contract;->renew(Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_6

    :cond_e
    move-object/from16 v20, v6

    :cond_f
    :goto_6
    if-eq v13, v1, :cond_10

    .line 259
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->improveOrWorsen()V

    :cond_10
    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p7

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    goto/16 :goto_1

    :cond_11
    move-object/from16 v20, v6

    move-object/from16 v18, v12

    .line 263
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 264
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 266
    :cond_12
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 267
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 269
    :cond_13
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 270
    invoke-virtual {v4, v6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->returnPlayerFromLoan(Lpl/mkrstudio/truefootball3/objects/Player;)V

    goto :goto_9

    :cond_14
    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p7

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 276
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/World;->getFreeAgents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz p1, :cond_19

    .line 280
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v7

    const/4 v9, 0x1

    add-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Player;->setAge(B)V

    .line 281
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v7

    const/16 v9, 0x24

    if-le v7, v9, :cond_18

    const/4 v7, 0x2

    .line 282
    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Player;->worsen(I)V

    const/4 v10, 0x3

    .line 283
    invoke-virtual {v5, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    if-eqz v11, :cond_17

    .line 284
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_16

    .line 285
    :cond_17
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    const/4 v7, 0x2

    goto :goto_b

    :cond_19
    const/4 v7, 0x2

    const/16 v9, 0x24

    :goto_b
    const/4 v10, 0x3

    goto :goto_a

    :cond_1a
    const/4 v7, 0x2

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 292
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/World;->getFreeAgents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 295
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->getYouthTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 298
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 299
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 302
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    .line 303
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v12

    if-eqz v12, :cond_1d

    .line 304
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v12

    invoke-virtual {v3, v12}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lpl/mkrstudio/truefootball3/objects/Time;->areDatesEqual(Ljava/lang/String;Ljava/util/GregorianCalendar;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 307
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    if-eqz p1, :cond_21

    .line 312
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {v11, v12}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setAge(B)V

    .line 314
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v12

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result v13

    if-ge v12, v13, :cond_21

    .line 315
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p2

    .line 316
    invoke-virtual {v12, v5}, Lpl/mkrstudio/truefootball3/objects/Youth;->getNextYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object v13

    if-nez v13, :cond_1f

    .line 318
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result v13

    const/16 v14, 0xf

    if-le v13, v14, :cond_20

    .line 319
    invoke-virtual {v12, v11, v1, v3}, Lpl/mkrstudio/truefootball3/objects/Youth;->getPlayerExtended(Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v13

    .line 320
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getSkill()B

    move-result v14

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v15

    if-eqz v15, :cond_1e

    const/4 v15, 0x2

    goto :goto_e

    :cond_1e
    const/4 v15, 0x1

    :goto_e
    invoke-virtual {v3, v14, v15}, Lpl/mkrstudio/truefootball3/objects/Time;->generateContract(II)Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v14

    invoke-virtual {v13, v14}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 323
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v14

    invoke-virtual {v14, v13, v1, v3, v2}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->possiblyCreateIsolation(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 324
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildYouthPlayerMovedMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v13

    invoke-virtual {v2, v13}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_f

    .line 327
    :cond_1f
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v11, v13}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 331
    :cond_20
    :goto_f
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v11

    invoke-virtual {v12, v13, v11, v3, v1}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v11

    .line 332
    invoke-virtual {v11, v5}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 333
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_21
    move-object/from16 v12, p2

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_22
    move-object/from16 v12, p2

    const/4 v14, 0x1

    .line 337
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 338
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    .line 340
    :cond_23
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 341
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 345
    :cond_24
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 346
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_25
    return-void
.end method

.method public updateDailyPeople(Lpl/mkrstudio/truefootball3/objects/ClubStaff;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clubStaff",
            "context"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 48
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getAllEmployees()Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const/16 v4, 0x63

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Employee;

    const/16 v6, 0x14

    .line 50
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_0

    .line 52
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v5

    .line 53
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v6

    add-int/2addr v6, v3

    int-to-byte v3, v6

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->setExperience(B)V

    .line 54
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v3

    if-le v3, v4, :cond_1

    .line 55
    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/Employee;->setExperience(B)V

    .line 56
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v3

    if-ge v3, v5, :cond_0

    .line 57
    invoke-virtual {v2, v5}, Lpl/mkrstudio/truefootball3/objects/Employee;->setExperience(B)V

    goto :goto_0

    .line 61
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Employee;

    const/16 v7, 0xf

    .line 63
    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    if-nez v7, :cond_5

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sub-int/2addr v7, v5

    .line 66
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v8

    add-int/2addr v8, v7

    int-to-byte v7, v8

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Employee;->setExperience(B)V

    .line 67
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v7

    if-le v7, v4, :cond_4

    .line 68
    invoke-virtual {v6, v4}, Lpl/mkrstudio/truefootball3/objects/Employee;->setExperience(B)V

    .line 69
    :cond_4
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v7

    if-ge v7, v5, :cond_3

    .line 70
    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/objects/Employee;->setExperience(B)V

    goto :goto_1

    :cond_5
    if-ne v7, v5, :cond_3

    .line 72
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 77
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;

    invoke-direct {v2, p2}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v5, v1}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateOnePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method public updatePeople(Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clubStaff",
            "time",
            "inbox",
            "context"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getAllEmployees()Ljava/util/List;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x41

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 89
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->setAge(B)V

    .line 90
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result v6

    if-le v6, v5, :cond_0

    .line 91
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 93
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildEmployeeEndOfCareerMessage(Lpl/mkrstudio/truefootball3/objects/Employee;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v3

    invoke-virtual {p3, v3}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 99
    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->terminateContractWithEmployee(Lpl/mkrstudio/truefootball3/objects/Employee;)V

    goto :goto_1

    .line 102
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 105
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->setAge(B)V

    .line 106
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result v2

    if-le v2, v5, :cond_3

    .line 107
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 109
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 114
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 115
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;

    invoke-direct {v0, p4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object p3

    invoke-virtual {v0, v1, v2, v3, p3}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateOnePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object p3

    .line 118
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method public updatePlayers(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Landroid/content/Context;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "inbox",
            "chosenTeam",
            "clubStaff",
            "context"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 123
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    move-object/from16 v11, p0

    .line 124
    invoke-virtual {v11, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v0

    .line 125
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 127
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez v6, :cond_0

    .line 129
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    invoke-direct {v0, v9}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    .line 130
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v14, v1, v2}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateOnePlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/Position;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    goto/16 :goto_3

    .line 132
    :cond_0
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1e

    .line 133
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->recover(I)V

    .line 134
    :cond_1
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Injury;->getDaysLeft()I

    move-result v0

    if-gez v0, :cond_2

    .line 136
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Injury;->setDaysLeft(I)V

    .line 137
    :cond_2
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->heal()V

    .line 138
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildReturnFromInjuryMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_3
    move-object/from16 v5, p3

    if-ne v14, v5, :cond_5

    .line 144
    move-object/from16 v16, v6

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 145
    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->updateShape()V

    .line 146
    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->isInjured()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v3, 0x1

    .line 147
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPhysiotherapistLevel()B

    move-result v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getMedicalLevel()B

    move-result v17

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, v17

    move-object v11, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->possiblyInjure(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;ZBBLjava/util/Random;)V

    goto :goto_2

    :cond_4
    move-object v11, v6

    .line 148
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v0

    invoke-virtual {v0, v8, v7, v11, v10}, Lpl/mkrstudio/truefootball3/objects/Psychic;->nextDay(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Ljava/util/Random;)V

    .line 150
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v0

    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndCalendar(I)Ljava/util/GregorianCalendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0x1e

    .line 152
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 153
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->areDatesEqual(Ljava/lang/String;Ljava/util/GregorianCalendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    move-object/from16 v11, p0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v11, p0

    goto/16 :goto_0

    .line 162
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 163
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v9}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractExpirationReminderMessage(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_8
    return-void
.end method

.method public updateTeamGroup(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "competitions"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "OTHER"

    .line 752
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 753
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "USA_1E"

    .line 754
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "BUL_1A"

    const-string v5, "FIN_1A"

    const-string v6, "ROM_2B"

    const-string v7, "ROM_2A"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v3, :cond_0

    const-string v3, "USA_1W"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "USA_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 755
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "USA_PLAYOFF1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 756
    invoke-direct/range {p0 .. p2}, Lpl/mkrstudio/truefootball3/objects/World;->updateAmericanTeamGroup(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    :cond_1
    const-string v3, "CAN_1E"

    .line 757
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CAN_1W"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CAN_CUP"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 758
    invoke-direct/range {p0 .. p2}, Lpl/mkrstudio/truefootball3/objects/World;->updateCanadianTeamGroup(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    .line 759
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "A"

    .line 760
    invoke-direct {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->updateRomanianSecondTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    .line 761
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "B"

    .line 762
    invoke-direct {v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->updateRomanianSecondTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    :cond_5
    const-string v3, "ROM_1"

    .line 763
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ROM_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 764
    invoke-direct {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->updateRomanianTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    :cond_6
    const-string v3, "POL_1"

    .line 765
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "POL_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "POL_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 766
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "POL_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 767
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "POL_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 768
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 769
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v3, "AUT_1"

    .line 772
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "AUT_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 773
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "AUT_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 774
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "AUT_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 775
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 776
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const-string v3, "ARM_1"

    .line 779
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ARM_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 780
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ARM_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 781
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ARM_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 782
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ARM_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 783
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 784
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string v3, "CYP_1"

    .line 787
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CYP_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 788
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CYP_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 789
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CYP_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 790
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "CYP_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 791
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 792
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const-string v3, "ISR_1"

    .line 795
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISR_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 796
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISR_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 797
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISR_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 798
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ISR_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 799
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 800
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const-string v3, "ISR_2"

    .line 803
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISR_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 804
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISR_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 805
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISR_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 806
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ISR_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 807
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 808
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const-string v3, "VIE_1"

    .line 811
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "VIE_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 812
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "VIE_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 813
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "VIE_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 814
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "VIE_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 815
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VIE_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 816
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 817
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    const-string v3, "GIB_1"

    .line 820
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GIB_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 821
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GIB_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 822
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GIB_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 823
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "GIB_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 824
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 825
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const-string v3, "LIB_1"

    .line 828
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LIB_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 829
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LIB_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 830
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LIB_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 831
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "LIB_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 832
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 833
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    const-string v3, "FIN_1"

    .line 836
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "FIN_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 837
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 838
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 839
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 840
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "FIN_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 841
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 842
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    const-string v3, "SCO_1"

    .line 845
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SCO_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SCO_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 846
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SCO_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 847
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SCO_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 848
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 849
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    const-string v3, "NIR_1"

    .line 852
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NIR_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NIR_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 853
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NIR_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 854
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "NIR_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 855
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 856
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    const-string v3, "NIR_2"

    .line 859
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NIR_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NIR_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 860
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NIR_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 861
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "NIR_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 862
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 863
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    const-string v3, "FIN_1"

    .line 866
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "FIN_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 867
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 868
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "FIN_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 869
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 870
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_14
    const-string v3, "FIN_2"

    .line 873
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "FIN_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "FIN_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "FIN_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 874
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "FIN_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 875
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "FIN_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 876
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 877
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    const-string v3, "BEL_2"

    .line 880
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BEL_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BEL_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 881
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BEL_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 882
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "BEL_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 883
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 884
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_16
    const-string v3, "SRB_2"

    .line 887
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SRB_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SRB_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 888
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SRB_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 889
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SRB_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 890
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 891
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_17
    const-string v3, "CZE_1"

    .line 894
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CZE_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CZE_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CZE_PLAYOFF1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 895
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "CZE_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 896
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "CZE_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 897
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "CZE_1B"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    .line 899
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 900
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 902
    :cond_18
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 903
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_19
    const-string v3, "BUL_1"

    .line 906
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BUL_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BUL_1C"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 907
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 908
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "BUL_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 909
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "BUL_1C"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    .line 911
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 912
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 914
    :cond_1a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 915
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    const-string v3, "ROM_2"

    .line 918
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ROM_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ROM_2C"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 919
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 920
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 921
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "ROM_2C"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    :goto_15
    const/4 v13, 0x7

    if-ge v12, v13, :cond_5c

    .line 924
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_1c
    const-string v3, "WAL_1"

    .line 928
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "WAL_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 929
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "WAL_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 930
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "WAL_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 931
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "WAL_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 932
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 933
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_1d
    const-string v3, "SVK_1"

    .line 936
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SVK_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 937
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SVK_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 938
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SVK_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 939
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SVK_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 940
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 941
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1e
    const-string v3, "UKR_1"

    .line 944
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "UKR_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 945
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "UKR_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 946
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "UKR_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 947
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "UKR_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 948
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 949
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1f
    const-string v3, "AND_1"

    .line 952
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "AND_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 953
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "AND_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 954
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "AND_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 955
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "AND_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 956
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_19
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 957
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_20
    const-string v3, "SRB_1"

    .line 960
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SRB_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 961
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SRB_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 962
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SRB_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 963
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SRB_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 964
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 965
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_21
    const-string v3, "GRE_1"

    .line 968
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GRE_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 969
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GRE_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 970
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GRE_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 971
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "GRE_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 972
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 973
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_22
    const-string v3, "HKG_1"

    .line 976
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "HKG_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 977
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "HKG_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 978
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "HKG_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 979
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "HKG_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 980
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 981
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_23
    const-string v3, "MLT_1"

    .line 984
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "MLT_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 985
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "MLT_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 986
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "MLT_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 987
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "MLT_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 988
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 989
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_24
    const-string v3, "LTU_1"

    .line 992
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 993
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 994
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 995
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 996
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "LTU_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x6

    .line 997
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x7

    .line 998
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_34

    :cond_25
    const-string v3, "LTU_2"

    .line 1000
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1001
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1002
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1003
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "LTU_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1004
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "LTU_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1005
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1006
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_26
    const-string v3, "SVN_2"

    .line 1009
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SVN_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1010
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SVN_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1011
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SVN_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1012
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SVN_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1013
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1014
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_27
    const-string v3, "ISL_1"

    .line 1017
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISL_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1018
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISL_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISL_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1019
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "ISL_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1020
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ISL_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1021
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1022
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_28
    const-string v3, "KUW_1"

    .line 1025
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "KUW_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 1026
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "KUW_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 1027
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "KUW_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1028
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "KUW_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1029
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1030
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_29
    const-string v3, "TJK_1"

    .line 1033
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TJK_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1034
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TJK_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1035
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TJK_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1036
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TJK_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1037
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "TJK_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1038
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_22
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1039
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_2a
    const-string v3, "DEN_1"

    .line 1042
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 1043
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 1044
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1045
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "DEN_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1046
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1047
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2b
    const-string v3, "DEN_2"

    .line 1050
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_2"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1051
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1052
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_2A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1053
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "DEN_2B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1054
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1055
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_2c
    const-string v3, "DEN_3"

    .line 1058
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_3"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1059
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_3A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1060
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "DEN_3A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1061
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "DEN_3B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1062
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_25
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1063
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_2d
    const-string v3, "BUL_1"

    .line 1066
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BUL_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 1067
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 1068
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1069
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "BUL_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1070
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_26
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1071
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_2e
    const-string v3, "BIH_1"

    .line 1074
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BIH_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1075
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BIH_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1076
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "BIH_1A"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1077
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "BIH_1B"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1078
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_27
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1079
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_2f
    const-string v3, "KOR_1"

    .line 1082
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "KOR_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1083
    invoke-direct {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->updateKoreanTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    :cond_30
    const-string v3, "GRE_1"

    .line 1084
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GRE_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "GRE_PLAYOFF1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 1085
    invoke-direct {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->updateGreekTeamGroup(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    :cond_31
    const-string v3, "SMR_1"

    .line 1086
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SMR_PLAYOFF1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SMR_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1087
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SMR_PLAYOFF1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1088
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SMR_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1089
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_32
    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1090
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_32

    .line 1091
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_33
    const-string v3, "SMR_1"

    .line 1094
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SMR_PLAYOFF1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SMR_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_37

    .line 1095
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "SMR_PLAYOFF1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1096
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SMR_1A"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1097
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "SMR_1B"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    .line 1098
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_34
    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1099
    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_34

    .line 1100
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1103
    :cond_35
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_36
    :goto_2a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1104
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_36

    .line 1105
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_37
    const-string v3, "TUN_1"

    .line 1108
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TUN_1C"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "TUN_1C"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1112
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_38
    :goto_2b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1113
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_38

    .line 1114
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_39
    const-string v3, "TGA_1"

    .line 1122
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TGA_1E"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 1123
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TGA_1E"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 1124
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "TGA_1E"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1125
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "TGA_1A"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1126
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "TGA_1B"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    .line 1127
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "TGA_1C"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v12, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v12

    .line 1128
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "TGA_1D"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v13, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v13

    .line 1129
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v14

    const-string v15, "TGA_1E"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v14, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v14

    .line 1130
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3a
    :goto_2c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1131
    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3a

    .line 1132
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1135
    :cond_3b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3c
    :goto_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1136
    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3c

    .line 1137
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1140
    :cond_3d
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3e
    :goto_2e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1141
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3e

    .line 1142
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1145
    :cond_3f
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_40
    :goto_2f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1146
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_40

    .line 1147
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1150
    :cond_41
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_42
    :goto_30
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1151
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_42

    .line 1152
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_43
    const-string v3, "NGA_1"

    .line 1155
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NGA_1C"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "NGA_1C"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 1156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "NGA_1C"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1158
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_44
    :goto_31
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1159
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_44

    .line 1160
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1163
    :cond_45
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 1164
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    const-string v10, "MEX_1"

    .line 1165
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "MEX_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_46

    .line 1166
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "MEX_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1167
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "MEX_PLAYOFF1"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1168
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "MEX_PLAYOFF2"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v12, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1169
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "MEX_PLAYOFF2"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v13, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1170
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1171
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1172
    invoke-interface {v3, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1173
    invoke-interface {v3, v9, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1174
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1175
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1176
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1177
    invoke-interface {v3, v9, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_46
    const-string v10, "BLZ_1"

    .line 1178
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "BLZ_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_47

    .line 1179
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "BLZ_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1180
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "BLZ_PLAYOFF1"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1181
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "BLZ_PLAYOFF2"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v12, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1182
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "BLZ_PLAYOFF2"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v13, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1183
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1184
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1185
    invoke-interface {v3, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1186
    invoke-interface {v3, v9, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1187
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1188
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1189
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1190
    invoke-interface {v3, v9, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_47
    const-string v10, "IND_1"

    .line 1191
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "IND_PLAYOFF1"

    if-eqz v10, :cond_48

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_48

    .line 1192
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_48

    .line 1193
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1194
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1195
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1196
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1197
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1198
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_48
    const-string v10, "IND_1B"

    .line 1199
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_49

    .line 1200
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_49

    .line 1201
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1202
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1203
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1204
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1205
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1206
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_49
    const-string v10, "NCA_1"

    .line 1207
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "NCA_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_4a

    .line 1208
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "NCA_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1209
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "NCA_PLAYOFF1"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1210
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "NCA_PLAYOFF2"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v12, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1211
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "NCA_PLAYOFF2"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v13, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1212
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1213
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1214
    invoke-interface {v3, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1215
    invoke-interface {v3, v9, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1216
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1217
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1218
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1219
    invoke-interface {v3, v9, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_4a
    const-string v10, "MEX_2"

    .line 1220
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "MEX_PLAYOFF4"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_4b

    .line 1221
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "MEX_PLAYOFF3"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1222
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "MEX_PLAYOFF3"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1223
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "MEX_PLAYOFF4"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v12, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1224
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v13

    const-string v14, "MEX_PLAYOFF4"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v13, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1225
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1226
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1227
    invoke-interface {v3, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1228
    invoke-interface {v3, v9, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1229
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1230
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1231
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1232
    invoke-interface {v3, v9, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_4b
    const-string v10, "CHI_1"

    .line 1233
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "CHI_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4c

    .line 1234
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "CHI_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_4c

    .line 1235
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "CHI_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1236
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "CHI_1_2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1237
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1238
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1239
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1240
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_4c
    const-string v10, "PAR_1"

    .line 1241
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "PAR_1_2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_4d

    .line 1242
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "PAR_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1243
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "PAR_1_2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1244
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1246
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1247
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_4d
    const-string v10, "URU_1"

    .line 1248
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "URU_1_2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_4e

    .line 1249
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "URU_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1250
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "URU_1_2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1251
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1252
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1253
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1254
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_4e
    const-string v10, "ECU_1"

    .line 1255
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ECU_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4f

    .line 1256
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ECU_1_2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_4f

    .line 1257
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ECU_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1258
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "ECU_1_2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1259
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1260
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1261
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1262
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_4f
    const-string v10, "CRC_1"

    .line 1263
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "CRC_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_50

    .line 1264
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "CRC_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1265
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "CRC_PLAYOFF2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1266
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1267
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1268
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1269
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_50
    const-string v10, "GUA_1"

    .line 1270
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "GUA_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_51

    .line 1271
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "GUA_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1272
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "GUA_PLAYOFF2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1273
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1274
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1275
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1276
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_51
    const-string v10, "HON_1"

    .line 1277
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "HON_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_52

    .line 1278
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "HON_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1279
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "HON_PLAYOFF2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1280
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1281
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1282
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1283
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_52
    const-string v10, "PAN_1"

    .line 1284
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "PAN_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_53

    .line 1285
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "PAN_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1286
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "PAN_PLAYOFF2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1287
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1288
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1289
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1290
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_53
    const-string v10, "VEN_1"

    .line 1291
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_54

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_1_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_54

    .line 1292
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_54

    .line 1293
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1294
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "VEN_PLAYOFF2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1295
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1296
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1297
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1298
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_54
    const-string v10, "VEN_1"

    .line 1299
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_57

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_1A"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_57

    .line 1300
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_1C"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_57

    .line 1301
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "VEN_1"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    .line 1302
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_1A"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    .line 1303
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "VEN_1B"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    .line 1304
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "VEN_1C"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v12, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    :goto_32
    const/4 v14, 0x4

    if-ge v13, v14, :cond_55

    .line 1309
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_32

    :cond_55
    const/16 v11, 0xc

    .line 1312
    :goto_33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_56

    .line 1313
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_56
    move-object v3, v10

    goto/16 :goto_34

    :cond_57
    const-string v10, "VEN_1"

    .line 1316
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_1D"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_58

    .line 1317
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "VEN_1D"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_58

    .line 1318
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v10, "VEN_1D"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_34

    :cond_58
    const-string v10, "SLV_1"

    .line 1319
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SLV_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_59

    .line 1320
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "SLV_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1321
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "SLV_PLAYOFF2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1322
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1323
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1324
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1325
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_34

    :cond_59
    const-string v10, "COL_1"

    .line 1326
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "COL_PLAYOFF2"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_5a

    .line 1327
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "COL_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1328
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "COL_PLAYOFF2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1330
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1331
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1332
    invoke-interface {v3, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1333
    invoke-interface {v3, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_34

    :cond_5a
    const-string v10, "NZL_1"

    .line 1334
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "NZL_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v10

    if-eqz v10, :cond_5c

    .line 1335
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "NZL_PLAYOFF1"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1337
    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1338
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_34

    .line 1342
    :cond_5b
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->order(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1344
    :cond_5c
    :goto_34
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10d

    .line 1345
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x4

    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1346
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x4

    invoke-virtual {v1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x4

    const/4 v13, 0x5

    .line 1347
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v8

    const/4 v13, 0x4

    const/4 v14, 0x5

    .line 1348
    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sub-int/2addr v13, v8

    .line 1349
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1350
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1351
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_10d

    invoke-virtual {v0, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_10d

    .line 1353
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_35
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1357
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    .line 1358
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    const/4 v9, 0x0

    goto :goto_35

    .line 1361
    :cond_5e
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_36
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_109

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1362
    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_107

    .line 1364
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_5f

    .line 1365
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5f

    const/4 v15, 0x0

    goto :goto_37

    :cond_5f
    const/4 v15, 0x1

    :goto_37
    const-string v8, "GRE_2A"

    .line 1369
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    const-string v2, "GRE_2B"

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v15, 0x0

    :cond_60
    const-string v2, "GRE_2B"

    .line 1372
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "GRE_2A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v15, 0x0

    :cond_61
    const-string v2, "WAL_2A"

    .line 1375
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "WAL_2B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 v15, 0x0

    :cond_62
    const-string v2, "WAL_2B"

    .line 1378
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "WAL_2A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v15, 0x0

    :cond_63
    const-string v2, "NIR_2A"

    .line 1381
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "NIR_2B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v15, 0x0

    :cond_64
    const-string v2, "NIR_2B"

    .line 1384
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "NIR_2A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v15, 0x0

    :cond_65
    const-string v2, "FIN_2A"

    .line 1387
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "FIN_2B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v15, 0x0

    :cond_66
    const-string v2, "FIN_2B"

    .line 1390
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "FIN_2A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v15, 0x0

    .line 1393
    :cond_67
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "FIN_1B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v15, 0x0

    :cond_68
    const-string v2, "FIN_1B"

    .line 1396
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v15, 0x0

    :cond_69
    const-string v2, "BEL_2A"

    .line 1399
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "BEL_2B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v15, 0x0

    :cond_6a
    const-string v2, "BEL_2B"

    .line 1402
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "BEL_2A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v15, 0x0

    :cond_6b
    const-string v2, "SRB_2A"

    .line 1405
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "SRB_2B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v15, 0x0

    :cond_6c
    const-string v2, "SRB_2B"

    .line 1408
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "SRB_2A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const/4 v15, 0x0

    :cond_6d
    const-string v2, "CZE_1A"

    .line 1411
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "CZE_1B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v15, 0x0

    :cond_6e
    const-string v2, "CZE_1B"

    .line 1414
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "CZE_1A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const/4 v15, 0x0

    :cond_6f
    const-string v2, "TJK_1A"

    .line 1417
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "TJK_1B"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v15, 0x0

    :cond_70
    const-string v2, "TJK_1B"

    .line 1420
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "TJK_1A"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    const/4 v15, 0x0

    :cond_71
    const-string v2, "MDA_2A"

    .line 1423
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v17, v5

    const-string v5, "MDA_2B"

    if-eqz v8, :cond_72

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    const/4 v15, 0x0

    .line 1426
    :cond_72
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    const/4 v15, 0x0

    :cond_73
    const-string v8, "MDA_3A"

    .line 1429
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v19, v9

    const-string v9, "MDA_3B"

    if-eqz v18, :cond_74

    move-object/from16 v18, v11

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_75

    const/4 v15, 0x0

    goto :goto_38

    :cond_74
    move-object/from16 v18, v11

    .line 1432
    :cond_75
    :goto_38
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_76

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_76

    const/4 v15, 0x0

    .line 1435
    :cond_76
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    const/4 v15, 0x0

    .line 1438
    :cond_77
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    const/4 v15, 0x0

    .line 1441
    :cond_78
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_79

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    move/from16 v20, v15

    const-string v15, "MDA_2C"

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    const/4 v15, 0x0

    goto :goto_39

    :cond_79
    move/from16 v20, v15

    :cond_7a
    move/from16 v15, v20

    .line 1444
    :goto_39
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    const/4 v15, 0x0

    .line 1447
    :cond_7b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    const/4 v15, 0x0

    .line 1450
    :cond_7c
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    move/from16 v20, v15

    const-string v15, "MDA_2C"

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    const/4 v15, 0x0

    goto :goto_3a

    :cond_7d
    move/from16 v20, v15

    :cond_7e
    move/from16 v15, v20

    .line 1459
    :goto_3a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7f

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7f

    const/4 v15, 0x0

    .line 1462
    :cond_7f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    const/4 v15, 0x0

    :cond_80
    const-string v11, "SVK_2A"

    .line 1466
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    move/from16 v20, v15

    const-string v15, "SVK_2B"

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    const/4 v15, 0x0

    goto :goto_3b

    :cond_81
    move/from16 v20, v15

    :cond_82
    move/from16 v15, v20

    :goto_3b
    const-string v11, "SVK_2B"

    .line 1469
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    move/from16 v20, v15

    const-string v15, "SVK_2A"

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_84

    const/4 v15, 0x0

    goto :goto_3c

    :cond_83
    move/from16 v20, v15

    :cond_84
    move/from16 v15, v20

    :goto_3c
    const-string v11, "IDN_2"

    .line 1472
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    move/from16 v20, v15

    const-string v15, "IDN_2B"

    move-object/from16 v21, v3

    const-string v3, "IDN_2A"

    const-string v0, "IDN_2C"

    if-eqz v11, :cond_92

    .line 1473
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_8a

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v22, v10

    const/4 v10, 0x7

    if-eq v11, v10, :cond_8b

    .line 1474
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    :cond_85
    const/16 v20, 0x0

    .line 1477
    :cond_86
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_87

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    :cond_87
    const/16 v20, 0x0

    .line 1480
    :cond_88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_89

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    :cond_89
    :goto_3d
    const/16 v20, 0x0

    goto/16 :goto_3e

    :cond_8a
    move-object/from16 v22, v10

    .line 1483
    :cond_8b
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_93

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_93

    .line 1484
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 1485
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8c

    .line 1486
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8c

    .line 1487
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "IDN_2D"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8d

    :cond_8c
    const/16 v20, 0x0

    .line 1490
    :cond_8d
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 1491
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8e

    .line 1492
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8e

    .line 1493
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "IDN_2D"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    :cond_8e
    const/16 v20, 0x0

    .line 1496
    :cond_8f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    .line 1497
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_90

    .line 1498
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_90

    .line 1499
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "IDN_2D"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    :cond_90
    const/16 v20, 0x0

    :cond_91
    const-string v10, "IDN_2D"

    .line 1502
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 1503
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_89

    .line 1504
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_89

    .line 1505
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    goto/16 :goto_3d

    :cond_92
    move-object/from16 v22, v10

    .line 1510
    :cond_93
    :goto_3e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    const/16 v20, 0x0

    .line 1513
    :cond_94
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    const/16 v20, 0x0

    .line 1516
    :cond_95
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_96

    const/16 v20, 0x0

    .line 1519
    :cond_96
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x6

    if-ne v3, v10, :cond_97

    const/16 v20, 0x0

    .line 1522
    :cond_97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    const/16 v20, 0x0

    :cond_98
    const-string v0, "IDN_2D"

    .line 1525
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const/16 v20, 0x0

    :cond_99
    const-string v0, "IDN_2E"

    .line 1528
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/16 v20, 0x0

    :cond_9a
    const-string v0, "IDN_2F"

    .line 1531
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const/16 v20, 0x0

    :cond_9b
    const-string v0, "MDA_2C"

    .line 1534
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const/16 v20, 0x0

    :cond_9c
    const-string v0, "MKD_2A"

    .line 1537
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "MKD_2B"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const/16 v20, 0x0

    :cond_9d
    const-string v0, "MKD_2B"

    .line 1540
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "MKD_2A"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const/16 v20, 0x0

    :cond_9e
    const-string v0, "BRA_3A"

    .line 1543
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "BRA_3B"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const/16 v20, 0x0

    :cond_9f
    const-string v0, "BRA_3B"

    .line 1546
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "BRA_3A"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const/16 v20, 0x0

    .line 1549
    :cond_a0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const/16 v20, 0x0

    .line 1552
    :cond_a1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const/16 v20, 0x0

    .line 1555
    :cond_a2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/16 v20, 0x0

    .line 1558
    :cond_a3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const/16 v20, 0x0

    :cond_a4
    const-string v0, "BIH_2B"

    .line 1561
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "BIH_2A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/16 v20, 0x0

    :cond_a5
    const-string v0, "BIH_2A"

    .line 1564
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "BIH_2B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const/16 v20, 0x0

    :cond_a6
    const-string v0, "ARG_2B"

    .line 1567
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ARG_2A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/16 v20, 0x0

    :cond_a7
    const-string v0, "ARG_2A"

    .line 1570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ARG_2B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const/16 v20, 0x0

    :cond_a8
    const-string v0, "CYP_2B"

    .line 1573
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "CYP_2A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v20, 0x0

    :cond_a9
    const-string v0, "CYP_2A"

    .line 1576
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "CYP_2B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const/16 v20, 0x0

    :cond_aa
    const-string v0, "KGZ_2B"

    .line 1579
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "KGZ_2A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const/16 v20, 0x0

    :cond_ab
    const-string v0, "KGZ_2A"

    .line 1582
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "KGZ_2B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const/16 v20, 0x0

    :cond_ac
    const-string v0, "UKR_2B"

    .line 1585
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_2A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const/16 v20, 0x0

    :cond_ad
    const-string v0, "UKR_2A"

    .line 1588
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_2B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const/16 v20, 0x0

    :cond_ae
    const-string v0, "ITA_3A"

    .line 1591
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ITA_3B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ITA_3C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    :cond_af
    const/16 v20, 0x0

    :cond_b0
    const-string v0, "ITA_3B"

    .line 1594
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ITA_3A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ITA_3C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    :cond_b1
    const/16 v20, 0x0

    :cond_b2
    const-string v0, "ITA_3C"

    .line 1597
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ITA_3A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ITA_3B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_b3
    const/16 v20, 0x0

    .line 1600
    :cond_b4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "BUL_1B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "BUL_1C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    :cond_b5
    const/16 v20, 0x0

    :cond_b6
    const-string v0, "BUL_1B"

    .line 1603
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "BUL_1C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    :cond_b7
    const/16 v20, 0x0

    :cond_b8
    const-string v0, "BUL_1C"

    .line 1606
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "BUL_1B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    :cond_b9
    const/16 v20, 0x0

    .line 1609
    :cond_ba
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ROM_2C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    :cond_bb
    const/16 v20, 0x0

    .line 1612
    :cond_bc
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ROM_2C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    :cond_bd
    const/16 v20, 0x0

    :cond_be
    const-string v0, "ROM_2C"

    .line 1615
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    :cond_bf
    const/16 v20, 0x0

    :cond_c0
    const-string v0, "CRO_3"

    .line 1618
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1619
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "CRO_3E"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "CRO_3C"

    const-string v5, "CRO_3B"

    const-string v8, "CRO_3A"

    if-nez v0, :cond_c6

    .line 1620
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    :cond_c1
    const/16 v20, 0x0

    .line 1623
    :cond_c2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    :cond_c3
    const/16 v20, 0x0

    .line 1626
    :cond_c4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    :cond_c5
    :goto_3f
    const/16 v20, 0x0

    goto/16 :goto_40

    .line 1630
    :cond_c6
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 1631
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 1632
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 1633
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v9, "CRO_3D"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 1634
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    :cond_c7
    const/16 v20, 0x0

    .line 1637
    :cond_c8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1638
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 1639
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 1640
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v9, "CRO_3D"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 1641
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_c9
    const/16 v20, 0x0

    .line 1644
    :cond_ca
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1645
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1646
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1647
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v9, "CRO_3D"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1648
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_cb
    const/16 v20, 0x0

    :cond_cc
    const-string v0, "CRO_3D"

    .line 1651
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1652
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 1653
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 1654
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 1655
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    :cond_cd
    const/16 v20, 0x0

    .line 1658
    :cond_ce
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1659
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1660
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1661
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1662
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "CRO_3D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    goto/16 :goto_3f

    :cond_cf
    :goto_40
    const-string v0, "HUN_3"

    .line 1668
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1669
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "HUN_3D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "HUN_3C"

    const-string v3, "HUN_3B"

    const-string v5, "HUN_3A"

    if-eqz v0, :cond_d6

    .line 1670
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1671
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 1672
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 1673
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "HUN_3D"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    :cond_d0
    const/16 v20, 0x0

    .line 1676
    :cond_d1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1677
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 1678
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 1679
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "HUN_3D"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    :cond_d2
    const/16 v20, 0x0

    .line 1682
    :cond_d3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1683
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1684
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1685
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "HUN_3D"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    :cond_d4
    const/16 v20, 0x0

    :cond_d5
    const-string v0, "HUN_3D"

    .line 1688
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1689
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    .line 1690
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    .line 1691
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    goto/16 :goto_41

    .line 1695
    :cond_d6
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    :cond_d7
    const/16 v20, 0x0

    .line 1698
    :cond_d8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    :cond_d9
    const/16 v20, 0x0

    .line 1701
    :cond_da
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    :cond_db
    :goto_41
    const/16 v20, 0x0

    :cond_dc
    const-string v0, "UKR_3A"

    .line 1709
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_3B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_3C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    :cond_dd
    const/16 v20, 0x0

    :cond_de
    const-string v0, "UKR_3B"

    .line 1712
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_3A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_3C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    :cond_df
    const/16 v20, 0x0

    :cond_e0
    const-string v0, "UKR_3C"

    .line 1715
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_3A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "UKR_3B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    :cond_e1
    const/16 v20, 0x0

    :cond_e2
    const-string v0, "VEN_1A"

    .line 1719
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "VEN_1B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "VEN_1C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    :cond_e3
    const/16 v20, 0x0

    :cond_e4
    const-string v0, "VEN_1B"

    .line 1722
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "VEN_1A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "VEN_1C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    :cond_e5
    const/16 v20, 0x0

    :cond_e6
    const-string v0, "VEN_1C"

    .line 1725
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "VEN_1A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "VEN_1B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    :cond_e7
    const/16 v20, 0x0

    :cond_e8
    const-string v0, "ESP_3A"

    .line 1729
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ESP_3C"

    if-eqz v0, :cond_e9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3B"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e9

    const/16 v20, 0x0

    :cond_e9
    const-string v0, "ESP_3B"

    .line 1732
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3A"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_ea

    const/16 v20, 0x0

    :cond_ea
    const-string v0, "ESP_3A"

    .line 1735
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ec

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3B"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3D"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    :cond_eb
    const/16 v20, 0x0

    :cond_ec
    const-string v0, "ESP_3B"

    .line 1738
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ee

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3A"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3D"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    :cond_ed
    const/16 v20, 0x0

    .line 1741
    :cond_ee
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f0

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3A"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3B"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3D"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    :cond_ef
    const/16 v20, 0x0

    :cond_f0
    const-string v0, "ESP_3D"

    .line 1744
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3A"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ESP_3B"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    :cond_f1
    const/16 v20, 0x0

    :cond_f2
    const-string v0, "POL_4A"

    .line 1748
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    :cond_f3
    const/16 v20, 0x0

    :cond_f4
    const-string v0, "POL_4B"

    .line 1751
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    :cond_f5
    const/16 v20, 0x0

    :cond_f6
    const-string v0, "POL_4C"

    .line 1754
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    :cond_f7
    const/16 v20, 0x0

    :cond_f8
    const-string v0, "POL_4D"

    .line 1757
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "POL_4C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    :cond_f9
    const/16 v20, 0x0

    :cond_fa
    const-string v0, "FRA_4A"

    .line 1761
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    :cond_fb
    const/16 v20, 0x0

    :cond_fc
    const-string v0, "FRA_4B"

    .line 1764
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    :cond_fd
    const/16 v20, 0x0

    :cond_fe
    const-string v0, "FRA_4C"

    .line 1767
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4D"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    :cond_ff
    const/16 v20, 0x0

    :cond_100
    const-string v0, "FRA_4D"

    .line 1770
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "FRA_4C"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    :cond_101
    const/16 v20, 0x0

    :cond_102
    const-string v0, "TUN_1B"

    .line 1774
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "TUN_1A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    const/16 v20, 0x0

    :cond_103
    const-string v0, "TUN_1A"

    .line 1777
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "TUN_1B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    const/16 v20, 0x0

    :cond_104
    const-string v0, "NGA_1B"

    .line 1781
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "NGA_1A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    const/16 v20, 0x0

    :cond_105
    const-string v0, "NGA_1A"

    .line 1784
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "NGA_1B"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const/16 v20, 0x0

    :cond_106
    if-eqz v20, :cond_108

    .line 1788
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_107
    move-object/from16 v21, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    :cond_108
    :goto_42
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, v17

    move-object/from16 v11, v18

    move-object/from16 v9, v19

    move-object/from16 v3, v21

    move-object/from16 v10, v22

    goto/16 :goto_36

    :cond_109
    move-object/from16 v21, v3

    move-object/from16 v22, v10

    .line 1794
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    .line 1795
    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_10a
    move-object/from16 v3, p0

    move-object/from16 v4, v22

    .line 1797
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1798
    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1801
    :cond_10b
    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/World;->order(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1802
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1803
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Team;->setLastPlace(B)V

    goto :goto_45

    .line 1806
    :cond_10c
    invoke-virtual {v3, v4, v0}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_46

    :cond_10d
    move-object/from16 v21, v3

    move-object v3, v0

    :goto_46
    const-string v0, "CAN_1E"

    .line 1810
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    const-string v0, "CAN_1W"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    const-string v0, "USA_1E"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    const-string v0, "USA_1W"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 1811
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v10, v21

    .line 1812
    invoke-interface {v10, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/Team;->setLastPlace(B)V

    goto :goto_47

    :cond_10e
    move-object/from16 v10, v21

    .line 1815
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1816
    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/objects/Team;->setLeagueId(Ljava/lang/String;)V

    goto :goto_48

    .line 1818
    :cond_10f
    invoke-virtual {v3, v1, v10}, Lpl/mkrstudio/truefootball3/objects/World;->putTeamGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_49

    :cond_110
    move-object v3, v0

    :goto_49
    return-void
.end method

.method public updateTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competitions;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "country",
            "competitions"
        }
    .end annotation

    .line 447
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    invoke-virtual {p0, v0, p2}, Lpl/mkrstudio/truefootball3/objects/World;->updateTeamGroup(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getNationalTeams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->nationalTeams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->nationalTeams:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World;->nationalTeams:Ljava/util/HashMap;

    return-object v0
.end method
