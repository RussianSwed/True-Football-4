.class public Lpl/mkrstudio/truefootball3/objects/Match;
.super Ljava/lang/Object;
.source "Match.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x63dc023c765865L


# instance fields
.field awayGoals:B

.field awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field awayTeamWonByPenalties:Z

.field awayTeamWonInExtraTime:Z

.field competition:Lpl/mkrstudio/truefootball3/objects/Competition;

.field date:Ljava/lang/String;

.field homeGoals:B

.field homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field homeTeamWonByPenalties:Z

.field homeTeamWonInExtraTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    .line 50
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competition;)V
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
            "date",
            "competition"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    .line 50
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    .line 62
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 63
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 64
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 65
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Match;->date:Ljava/lang/String;

    return-void
.end method

.method private calculateRating(Lpl/mkrstudio/truefootball3/objects/Player;BBLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)F
    .locals 6
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
            "player",
            "goalsScoredByTeam",
            "goalsLostByTeam",
            "goals",
            "assists",
            "yellowCards",
            "redCards"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            "BB",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)F"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 437
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/high16 v1, 0x40a00000    # 5.0f

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne v2, p1, :cond_0

    float-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    .line 439
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_0

    .line 441
    :cond_1
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne p5, p1, :cond_2

    float-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    .line 443
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float p5, v1

    move v1, p5

    goto :goto_1

    .line 445
    :cond_3
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz p5, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne p5, p1, :cond_4

    float-to-double p5, v1

    .line 447
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p5, v2

    double-to-float p5, p5

    move v1, p5

    goto :goto_2

    .line 449
    :cond_5
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_6
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Player;

    if-ne p5, p1, :cond_6

    float-to-double p5, v1

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 451
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p5, v4

    double-to-float p5, p5

    move v1, p5

    goto :goto_3

    :cond_7
    sub-int p1, p2, p3

    int-to-float p1, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    add-float/2addr v1, p1

    float-to-double p4, v1

    const-wide/high16 p6, 0x3fe0000000000000L    # 0.5

    .line 455
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p4, p6

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double p6, p1

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p6, p7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p6, p6, v0

    add-double/2addr p4, p6

    double-to-float p1, p4

    if-le p2, p3, :cond_8

    float-to-double p1, p1

    .line 458
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v2

    :goto_4
    double-to-float p1, p1

    goto :goto_5

    :cond_8
    if-ge p2, p3, :cond_9

    float-to-double p1, p1

    .line 460
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v2

    goto :goto_4

    :cond_9
    :goto_5
    float-to-double p2, p1

    cmpg-double p4, p2, v2

    if-gez p4, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_a
    float-to-double p2, p1

    const-wide/high16 p4, 0x4024000000000000L    # 10.0

    cmpl-double p6, p2, p4

    if-lez p6, :cond_b

    const/high16 p1, 0x41200000    # 10.0f

    :cond_b
    return p1
.end method

.method private getAggressionModifier(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aggression"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3fc00000    # 1.5f

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    return p1

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    const p1, -0x41b33333    # -0.2f

    return p1

    :cond_3
    const/4 v1, -0x2

    if-ne p1, v1, :cond_4

    const p1, -0x41333333    # -0.4f

    return p1

    :cond_4
    return v0
.end method


# virtual methods
.method public arePenalties()Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->isExtraTime()Z

    move-result v0

    return v0
.end method

.method public awayTeamAdvanced()Z
    .locals 8

    .line 120
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 125
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 126
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 127
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 128
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-ge v0, v2, :cond_5

    return v5

    .line 130
    :cond_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v3, v4, :cond_4

    .line 131
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v4

    sub-int/2addr v0, v5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v4, v6

    if-lt v3, v4, :cond_3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v4, v6

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-ge v0, v2, :cond_5

    :cond_3
    return v5

    .line 133
    :cond_4
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH_REPLAY:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v0, v2, :cond_5

    .line 134
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v2

    if-le v0, v2, :cond_5

    return v5

    :cond_5
    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return v1
.end method

.method calculateAggression(Lpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 772
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    .line 773
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 774
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_1

    .line 775
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v3, v4, :cond_0

    float-to-double v3, v1

    const-wide v5, 0x3fc3333333333333L    # 0.15

    .line 776
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    :goto_1
    double-to-float v1, v3

    goto :goto_2

    .line 777
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v3, v4, :cond_1

    float-to-double v3, v1

    const-wide v5, 0x3fb47ae147ae147bL    # 0.08

    .line 778
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public changeRankingPoints()V
    .locals 9

    .line 1083
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const v1, 0x3fe66666    # 1.8f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 1085
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v5, "SAM"

    const-string v6, "EUR"

    const/16 v7, 0xb

    const-string v8, "GROUP_PHASE"

    if-ne v3, v4, :cond_2

    .line 1087
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getCwType()Lpl/mkrstudio/truefootball3/enums/CupWeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/enums/CupWeekType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1088
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v3

    if-le v3, v7, :cond_0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1089
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_7

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AFR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    const/high16 v1, 0x40200000    # 2.5f

    goto/16 :goto_0

    .line 1092
    :cond_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v3, v4, :cond_6

    .line 1093
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EUR_FC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x3fb33333    # 1.4f

    .line 1095
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v4

    if-le v4, v7, :cond_3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 1100
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Week;->getCwType()Lpl/mkrstudio/truefootball3/enums/CupWeekType;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/enums/CupWeekType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1101
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_7

    :cond_5
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1108
    :cond_7
    :goto_0
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    iget-byte v3, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    const/16 v4, 0x190

    if-le v0, v3, :cond_9

    .line 1109
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 1110
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 1111
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    .line 1112
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    .line 1113
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v0

    if-ge v0, v4, :cond_8

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    .line 1114
    :cond_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v0

    if-ge v0, v4, :cond_c

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    goto/16 :goto_1

    :cond_9
    if-ge v0, v3, :cond_b

    .line 1116
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 1117
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 1118
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    .line 1119
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    .line 1120
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v0

    if-ge v0, v4, :cond_a

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    .line 1121
    :cond_a
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v0

    if-ge v0, v4, :cond_c

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    goto :goto_1

    .line 1123
    :cond_b
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 1124
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 1125
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    .line 1126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    :cond_c
    :goto_1
    return-void
.end method

.method public changeTrustAfterMatch(Lpl/mkrstudio/truefootball3/objects/UserData;)[I
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ud"
        }
    .end annotation

    .line 1135
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1136
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getConfidence()I

    move-result v1

    .line 1137
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v2

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v4

    goto :goto_0

    .line 1141
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v4

    :goto_0
    sub-float/2addr v3, v4

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_1

    new-array v4, v6, [B

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    aput-byte v5, v4, v8

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    aput-byte v5, v4, v7

    goto :goto_1

    :cond_1
    new-array v4, v6, [B

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    aput-byte v5, v4, v8

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    aput-byte v5, v4, v7

    :goto_1
    const/4 v5, 0x6

    new-array v9, v5, [D

    .line 1146
    fill-array-data v9, :array_0

    .line 1150
    aget-byte v10, v4, v8

    sub-int/2addr v10, v6

    aget-byte v11, v4, v7

    if-le v10, v11, :cond_2

    new-array v4, v5, [I

    .line 1151
    fill-array-data v4, :array_1

    new-array v10, v5, [I

    .line 1152
    fill-array-data v10, :array_2

    new-array v11, v5, [I

    .line 1153
    fill-array-data v11, :array_3

    goto :goto_2

    .line 1154
    :cond_2
    aget-byte v10, v4, v8

    aget-byte v11, v4, v7

    if-le v10, v11, :cond_3

    new-array v4, v5, [I

    .line 1155
    fill-array-data v4, :array_4

    new-array v10, v5, [I

    .line 1156
    fill-array-data v10, :array_5

    new-array v11, v5, [I

    .line 1157
    fill-array-data v11, :array_6

    goto :goto_2

    .line 1158
    :cond_3
    aget-byte v10, v4, v8

    aget-byte v11, v4, v7

    if-ne v10, v11, :cond_4

    new-array v4, v5, [I

    .line 1159
    fill-array-data v4, :array_7

    new-array v10, v5, [I

    .line 1160
    fill-array-data v10, :array_8

    new-array v11, v5, [I

    .line 1161
    fill-array-data v11, :array_9

    goto :goto_2

    .line 1162
    :cond_4
    aget-byte v10, v4, v8

    add-int/lit8 v10, v10, 0x3

    aget-byte v4, v4, v7

    if-le v10, v4, :cond_5

    new-array v4, v5, [I

    .line 1163
    fill-array-data v4, :array_a

    new-array v10, v5, [I

    .line 1164
    fill-array-data v10, :array_b

    new-array v11, v5, [I

    .line 1165
    fill-array-data v11, :array_c

    goto :goto_2

    :cond_5
    new-array v4, v5, [I

    .line 1167
    fill-array-data v4, :array_d

    new-array v10, v5, [I

    .line 1168
    fill-array-data v10, :array_e

    new-array v11, v5, [I

    .line 1169
    fill-array-data v11, :array_f

    :goto_2
    const/16 v12, 0x23

    const/16 v15, 0x41

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-gt v1, v15, :cond_7

    if-ge v1, v12, :cond_6

    goto :goto_3

    :cond_6
    move-wide/from16 v18, v16

    goto :goto_4

    :cond_7
    :goto_3
    const-wide v18, 0x3fe3333333333333L    # 0.6

    :goto_4
    const/16 v13, 0x19

    const-wide v22, 0x3fdccccccccccccdL    # 0.45

    const/16 v14, 0x4b

    if-gt v1, v14, :cond_8

    if-ge v1, v13, :cond_9

    :cond_8
    move-wide/from16 v18, v22

    :cond_9
    const/16 v6, 0xf

    const-wide v24, 0x3fd3333333333333L    # 0.3

    const/16 v7, 0x55

    if-gt v1, v7, :cond_a

    if-ge v1, v6, :cond_b

    :cond_a
    move-wide/from16 v18, v24

    :cond_b
    if-gt v2, v15, :cond_d

    if-ge v2, v12, :cond_c

    goto :goto_5

    :cond_c
    move-wide/from16 v20, v16

    goto :goto_6

    :cond_d
    :goto_5
    const-wide v20, 0x3fe3333333333333L    # 0.6

    :goto_6
    if-gt v2, v14, :cond_f

    if-ge v2, v13, :cond_e

    goto :goto_7

    :cond_e
    move-wide/from16 v22, v20

    :cond_f
    :goto_7
    if-gt v2, v7, :cond_11

    if-ge v2, v6, :cond_10

    goto :goto_8

    :cond_10
    move-wide/from16 v24, v22

    .line 1182
    :cond_11
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v6, v7, :cond_12

    const/4 v6, 0x1

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    :goto_9
    const-wide v12, 0x3fe999999999999aL    # 0.8

    if-eqz v6, :cond_15

    .line 1187
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Supporters;->isRivalryWith(Lpl/mkrstudio/truefootball3/objects/Team;)D

    move-result-wide v6

    cmpl-double v14, v6, v16

    if-eqz v14, :cond_13

    const-wide v14, 0x3ff6666666666666L    # 1.4

    mul-double v6, v6, v14

    :cond_13
    const/4 v14, 0x0

    :goto_a
    if-ge v14, v5, :cond_14

    .line 1190
    aget v15, v4, v14

    aget v16, v4, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    mul-int/lit8 v16, v16, 0x3

    div-int/lit8 v16, v16, 0xa

    sub-int v15, v15, v16

    aput v15, v4, v14

    .line 1191
    aget v15, v10, v14

    aget v16, v10, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    mul-int/lit8 v16, v16, 0x3

    div-int/lit8 v16, v16, 0xa

    sub-int v15, v15, v16

    aput v15, v10, v14

    .line 1192
    aget v15, v4, v14

    move-object/from16 v17, v9

    int-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    double-to-int v8, v8

    aput v8, v4, v14

    .line 1193
    aget v8, v4, v14

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v12

    double-to-int v8, v8

    aput v8, v4, v14

    .line 1194
    aget v8, v10, v14

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v12

    double-to-int v8, v8

    aput v8, v10, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v17

    const/4 v8, 0x0

    goto :goto_a

    :cond_14
    move-object/from16 v17, v9

    goto :goto_c

    :cond_15
    move-object/from16 v17, v9

    .line 1197
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Supporters;->isRivalryWith(Lpl/mkrstudio/truefootball3/objects/Team;)D

    move-result-wide v6

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v5, :cond_16

    .line 1199
    aget v9, v4, v8

    aget v14, v4, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3

    div-int/lit8 v14, v14, 0xa

    add-int/2addr v9, v14

    aput v9, v4, v8

    .line 1200
    aget v9, v10, v8

    aget v14, v10, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3

    div-int/lit8 v14, v14, 0xa

    add-int/2addr v9, v14

    aput v9, v10, v8

    .line 1201
    aget v9, v4, v8

    int-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v6

    double-to-int v9, v14

    aput v9, v4, v8

    .line 1202
    aget v9, v4, v8

    int-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    double-to-int v9, v14

    aput v9, v4, v8

    .line 1203
    aget v9, v10, v8

    int-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    double-to-int v9, v14

    aput v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1207
    :cond_16
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getLeague(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    .line 1208
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v7

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v7

    .line 1210
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v7, v8, :cond_17

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_17

    const/4 v6, 0x1

    goto :goto_d

    :cond_17
    const/4 v6, 0x0

    :goto_d
    const/4 v8, 0x0

    :goto_e
    const/4 v7, -0x1

    if-ge v8, v5, :cond_21

    float-to-double v12, v3

    .line 1213
    aget-wide v14, v17, v8

    cmpg-double v9, v12, v14

    if-gtz v9, :cond_20

    .line 1214
    aget v3, v11, v8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1215
    aget v3, v4, v8

    const/16 v5, 0x32

    if-lez v3, :cond_19

    if-le v1, v5, :cond_18

    .line 1217
    aget v1, v4, v8

    int-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v18

    double-to-int v1, v11

    aput v1, v4, v8

    .line 1218
    :cond_18
    aget v1, v4, v8

    add-int/2addr v1, v0

    const/4 v3, 0x0

    add-int/2addr v1, v3

    goto :goto_f

    :cond_19
    if-ge v1, v5, :cond_1a

    .line 1221
    aget v1, v4, v8

    int-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v18

    double-to-int v1, v11

    aput v1, v4, v8

    :cond_1a
    if-eqz v6, :cond_1b

    const/4 v1, -0x1

    goto :goto_f

    .line 1225
    :cond_1b
    aget v1, v4, v8

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    add-int/2addr v1, v3

    .line 1228
    :goto_f
    aget v3, v10, v8

    if-lez v3, :cond_1d

    if-le v2, v5, :cond_1c

    .line 1230
    aget v2, v10, v8

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v24

    double-to-int v2, v2

    aput v2, v10, v8

    .line 1231
    :cond_1c
    aget v2, v10, v8

    add-int/2addr v0, v2

    const/4 v2, 0x0

    add-int/2addr v0, v2

    :goto_10
    move v8, v1

    goto :goto_11

    :cond_1d
    if-ge v2, v5, :cond_1e

    .line 1234
    aget v2, v10, v8

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v24

    double-to-int v2, v2

    aput v2, v10, v8

    :cond_1e
    if-eqz v6, :cond_1f

    move v8, v1

    const/4 v0, -0x1

    goto :goto_11

    .line 1238
    :cond_1f
    aget v2, v10, v8

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    add-int/lit8 v8, v2, 0x0

    move v0, v8

    goto :goto_10

    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_21
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1245
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getDonationsForFans()B

    move-result v1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    const/4 v6, 0x1

    if-ne v1, v6, :cond_23

    if-lez v8, :cond_22

    int-to-double v1, v8

    .line 1246
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_12
    mul-double v1, v1, v4

    double-to-int v8, v1

    goto :goto_14

    :cond_22
    if-gez v8, :cond_25

    int-to-double v4, v8

    .line 1247
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_13

    .line 1248
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getDonationsForFans()B

    move-result v1

    if-ne v1, v7, :cond_25

    if-lez v8, :cond_24

    int-to-double v4, v8

    .line 1249
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    :goto_13
    mul-double v4, v4, v2

    double-to-int v8, v4

    goto :goto_14

    :cond_24
    if-gez v8, :cond_25

    int-to-double v1, v8

    .line 1250
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_12

    :cond_25
    :goto_14
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v8, v1, v0

    return-object v1

    nop

    :array_0
    .array-data 8
        -0x3ff0000000000000L    # -4.0
        -0x3ffc000000000000L    # -2.5
        -0x4010000000000000L    # -1.0
        0x3ff0000000000000L    # 1.0
        0x4004000000000000L    # 2.5
        0x4024000000000000L    # 10.0
    .end array-data

    :array_1
    .array-data 4
        0x12
        0xd
        0xa
        0x8
        0x5
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xc
        0xa
        0x8
        0x7
        0x5
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xd
        0xa
        0x8
        0x6
        0x5
        0x3
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x7
        0x6
        0x5
        0x4
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x5
        0x3
        0x2
        -0x2
        -0x3
        -0x5
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x2
        0x1
        -0x1
        -0x2
        -0x4
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_a
    .array-data 4
        -0x2
        -0x3
        -0x4
        -0x6
        -0xa
        -0xe
    .end array-data

    :array_b
    .array-data 4
        -0x1
        -0x2
        -0x3
        -0x5
        -0x6
        -0x9
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_d
    .array-data 4
        -0x4
        -0x6
        -0x8
        -0xa
        -0x11
        -0x16
    .end array-data

    :array_e
    .array-data 4
        -0x3
        -0x5
        -0x7
        -0x9
        -0xc
        -0x10
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
    .end array-data
.end method

.method public getAwayGoals()B
    .locals 1

    .line 1299
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    return v0
.end method

.method public getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 1267
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;
    .locals 1

    .line 1275
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1283
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDiff(Lpl/mkrstudio/truefootball3/objects/Team;)D
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getDiffInSingleMatch(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result p1

    :goto_0
    int-to-double v0, p1

    return-wide v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getWeek()Lpl/mkrstudio/truefootball3/objects/Week;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v1, v2, :cond_1

    .line 212
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getDiffInSingleMatch(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result p1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v0, v1, :cond_7

    .line 214
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getPreviousMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-ne p1, v1, :cond_4

    .line 216
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v1

    add-int/2addr p1, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    add-int/2addr v1, v4

    sub-int/2addr p1, v1

    int-to-double v4, p1

    .line 217
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v1

    if-le p1, v1, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v2

    goto :goto_1

    .line 218
    :cond_2
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    :cond_3
    :goto_1
    return-wide v4

    .line 221
    :cond_4
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v1

    add-int/2addr p1, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    add-int/2addr v1, v4

    sub-int/2addr p1, v1

    int-to-double v4, p1

    .line 222
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v1

    if-ge p1, v1, :cond_5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v2

    goto :goto_2

    .line 223
    :cond_5
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    if-le p1, v0, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    :cond_6
    :goto_2
    return-wide v4

    .line 227
    :cond_7
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getDiffInSingleMatch(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result p1

    goto :goto_0
.end method

.method public getDiffInSingleMatch(Lpl/mkrstudio/truefootball3/objects/Team;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne p1, v0, :cond_0

    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    :goto_0
    sub-int/2addr p1, v0

    return p1

    .line 203
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    goto :goto_0
.end method

.method public getHomeGoals()B
    .locals 1

    .line 1291
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    return v0
.end method

.method public getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 1259
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getMatchSkill(Lpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 471
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    add-float/2addr p1, v0

    return p1

    .line 474
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 476
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_1

    .line 477
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v3

    add-int/2addr v1, v3

    .line 478
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v1, v3

    .line 479
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, -0x6

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shape;->BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    if-ne v3, v4, :cond_3

    add-int/lit8 v1, v1, -0x3

    goto :goto_0

    .line 483
    :cond_3
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shape;->GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    if-ne v3, v4, :cond_4

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 485
    :cond_4
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 489
    :cond_5
    div-int/lit8 v1, v1, 0xb

    add-int/lit8 v1, v1, 0x64

    int-to-float p1, v1

    return p1
.end method

.method public getPossibilities(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZLpl/mkrstudio/truefootball3/objects/DressingRoom;Ljava/util/List;)[F
    .locals 34
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
            "homeTeam",
            "awayTeam",
            "print",
            "ending",
            "dressingRoom",
            "teamAnalyses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "ZZ",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoom;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;)[F"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    .line 494
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getMatchSkill(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v0

    .line 495
    invoke-virtual {v8, v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getMatchSkill(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    .line 497
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    .line 498
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    .line 500
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 501
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v5

    if-eqz v5, :cond_0

    sub-float/2addr v0, v6

    add-float/2addr v1, v6

    goto :goto_0

    .line 515
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 516
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v5

    if-eqz v5, :cond_2

    sub-float/2addr v1, v6

    add-float/2addr v0, v6

    goto :goto_1

    .line 530
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->isNeutralGround()Z

    move-result v4

    if-nez v4, :cond_4

    float-to-double v4, v0

    const-wide v6, 0x3ff08f5c28f5c28fL    # 1.035

    .line 531
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v0, v4

    float-to-double v4, v1

    const-wide v6, 0x3feee147ae147ae1L    # 0.965

    .line 532
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v1, v4

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v4

    if-gez v5, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_5
    cmpg-float v5, v1, v4

    if-gez v5, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    .line 540
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    .line 541
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v6

    if-nez v5, :cond_7

    .line 543
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-direct {v5}, Lpl/mkrstudio/truefootball3/objects/Training;-><init>()V

    :cond_7
    if-nez v6, :cond_8

    .line 545
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-direct {v6}, Lpl/mkrstudio/truefootball3/objects/Training;-><init>()V

    :cond_8
    move-object v12, v6

    .line 548
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, 0x5

    if-eqz v14, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 549
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v14

    sub-int/2addr v14, v15

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v15

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getMental()B

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v7, v14

    goto :goto_2

    .line 551
    :cond_9
    div-int/lit8 v7, v7, 0xb

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x3f647ae147ae147bL    # 0.0025

    int-to-float v6, v7

    float-to-double v6, v6

    .line 553
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v18

    add-double v6, v6, v16

    const-wide/high16 v16, 0x3fc0000000000000L    # 0.125

    sub-double v6, v6, v16

    double-to-float v6, v6

    mul-float v0, v0, v6

    .line 558
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 559
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v14

    sub-int/2addr v14, v15

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getMental()B

    move-result v16

    add-int v14, v14, v16

    add-int/2addr v7, v14

    goto :goto_3

    .line 561
    :cond_a
    div-int/lit8 v7, v7, 0xb

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x3f647ae147ae147bL    # 0.0025

    int-to-float v6, v7

    float-to-double v6, v6

    .line 563
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v18

    add-double v6, v6, v16

    const-wide/high16 v16, 0x3fc0000000000000L    # 0.125

    sub-double v6, v6, v16

    double-to-float v6, v6

    mul-float v1, v1, v6

    .line 570
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->getDressingRoomObservations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-wide v16, 0x3ff0cccccccccccdL    # 1.05

    const-wide v18, 0x3fee666666666666L    # 0.95

    if-eqz v14, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 571
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v13

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    invoke-virtual {v13, v15}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-wide v20, 0x3fef333333333333L    # 0.975

    const-wide v22, 0x3ff199999999999aL    # 1.1

    const-wide v24, 0x3fed99999999999aL    # 0.925

    const-wide v26, 0x3fed1eb851eb851fL    # 0.91

    const-wide v28, 0x3feccccccccccccdL    # 0.9

    if-nez v13, :cond_26

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v13

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    invoke-virtual {v13, v15}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto/16 :goto_d

    .line 617
    :cond_b
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v13

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    invoke-virtual {v13, v15}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 619
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 620
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v17

    move-object/from16 v30, v6

    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v13

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v13

    if-ne v6, v13, :cond_c

    const/4 v15, 0x1

    :cond_c
    move-object/from16 v13, v17

    move-object/from16 v6, v30

    goto :goto_5

    :cond_d
    move-object/from16 v30, v6

    if-eqz v15, :cond_12

    .line 625
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v6

    const/4 v13, 0x5

    if-ne v6, v13, :cond_e

    move-object v13, v12

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v28

    :goto_6
    double-to-float v4, v11

    goto :goto_7

    :cond_e
    move-object v13, v12

    .line 626
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v6

    const/4 v11, 0x4

    if-ne v6, v11, :cond_f

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v26

    goto :goto_6

    .line 627
    :cond_f
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v6

    const/4 v11, 0x3

    if-ne v6, v11, :cond_10

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v24

    goto :goto_6

    .line 628
    :cond_10
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_11

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v18

    goto :goto_6

    .line 629
    :cond_11
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_13

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v20

    goto :goto_6

    :cond_12
    move-object v13, v12

    .line 633
    :cond_13
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v11, 0x0

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 634
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v15

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v4

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v4

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v12

    if-ne v4, v12, :cond_14

    const/4 v11, 0x1

    :cond_14
    move/from16 v4, v16

    goto :goto_8

    :cond_15
    move/from16 v16, v4

    if-eqz v11, :cond_1a

    .line 639
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_16

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v28

    :goto_9
    double-to-float v7, v6

    goto :goto_a

    .line 640
    :cond_16
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_17

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v26

    goto :goto_9

    .line 641
    :cond_17
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_18

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v24

    goto :goto_9

    .line 642
    :cond_18
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_19

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v18

    goto :goto_9

    .line 643
    :cond_19
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v20

    goto :goto_9

    :cond_1a
    :goto_a
    move-object/from16 v31, v2

    move/from16 v4, v16

    goto/16 :goto_15

    :cond_1b
    move-object/from16 v30, v6

    move-object v13, v12

    .line 645
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v6

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->LEADER:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    invoke-virtual {v6, v11}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 646
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v9, :cond_20

    move v11, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 648
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_1e

    .line 649
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 650
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v15

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v9

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v12

    if-ne v9, v12, :cond_1d

    .line 651
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCaptain()Lpl/mkrstudio/truefootball3/enums/Captain;

    move-result-object v6

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Captain;->YES:Lpl/mkrstudio/truefootball3/enums/Captain;

    if-ne v6, v9, :cond_1c

    float-to-double v11, v11

    .line 652
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v22

    double-to-float v11, v11

    :cond_1c
    const/4 v6, 0x1

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, p1

    goto :goto_b

    :cond_1e
    if-nez v6, :cond_1f

    float-to-double v11, v11

    .line 658
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v28

    double-to-float v11, v11

    :cond_1f
    move-object/from16 v31, v2

    move v4, v11

    goto/16 :goto_15

    .line 659
    :cond_20
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, v10, :cond_25

    move v9, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 662
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_23

    .line 663
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 664
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v12

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v11

    if-ne v12, v11, :cond_22

    .line 665
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCaptain()Lpl/mkrstudio/truefootball3/enums/Captain;

    move-result-object v7

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Captain;->YES:Lpl/mkrstudio/truefootball3/enums/Captain;

    if-ne v7, v11, :cond_21

    float-to-double v11, v9

    .line 666
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v22

    double-to-float v9, v11

    :cond_21
    const/4 v7, 0x1

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_23
    if-nez v7, :cond_24

    float-to-double v6, v9

    .line 672
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v28

    double-to-float v6, v6

    move-object/from16 v31, v2

    move v7, v6

    goto/16 :goto_15

    :cond_24
    move-object/from16 v31, v2

    move v7, v9

    goto/16 :goto_15

    :cond_25
    move-object/from16 v31, v2

    goto/16 :goto_15

    :cond_26
    :goto_d
    move-object/from16 v30, v6

    move-object v13, v12

    .line 574
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 575
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v15

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v2

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v2

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v15

    if-ne v2, v15, :cond_27

    const/4 v9, 0x1

    .line 578
    :cond_27
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v2

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v12

    if-ne v2, v12, :cond_28

    const/4 v11, 0x1

    :cond_28
    move-object/from16 v2, v31

    goto :goto_e

    :cond_29
    move-object/from16 v31, v2

    if-eqz v9, :cond_33

    if-eqz v11, :cond_33

    .line 583
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_2a

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_2a

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v28

    :goto_f
    double-to-float v4, v11

    goto/16 :goto_11

    .line 584
    :cond_2a
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_2b

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_2b

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v26

    goto :goto_f

    .line 585
    :cond_2b
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_2c

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2c

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v24

    goto :goto_f

    .line 586
    :cond_2c
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_2d

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2d

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v18

    goto :goto_f

    .line 587
    :cond_2d
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_2e

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2e

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v20

    goto :goto_f

    .line 588
    :cond_2e
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_2f

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_2f

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v22

    goto :goto_f

    .line 589
    :cond_2f
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_30

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_30

    float-to-double v11, v4

    const-wide v32, 0x3ff170a3d70a3d71L    # 1.09

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    :goto_10
    mul-double v11, v11, v32

    goto/16 :goto_f

    .line 590
    :cond_30
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_31

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_31

    float-to-double v11, v4

    const-wide v32, 0x3ff1333333333333L    # 1.075

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_10

    .line 591
    :cond_31
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_32

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_32

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v16

    goto/16 :goto_f

    .line 592
    :cond_32
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_33

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_33

    float-to-double v11, v4

    const-wide v32, 0x3ff0666666666666L    # 1.025

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_10

    .line 597
    :cond_33
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v9, 0x0

    :cond_34
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 598
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v12

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v15

    if-ne v12, v15, :cond_35

    const/4 v6, 0x1

    .line 601
    :cond_35
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v12

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v11

    if-ne v12, v11, :cond_34

    const/4 v9, 0x1

    goto :goto_12

    :cond_36
    if-eqz v6, :cond_40

    if-eqz v9, :cond_40

    .line 606
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_37

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_37

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v28

    :goto_13
    double-to-float v7, v6

    goto/16 :goto_15

    .line 607
    :cond_37
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_38

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_38

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v26

    goto :goto_13

    .line 608
    :cond_38
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_39

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_39

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v24

    goto :goto_13

    .line 609
    :cond_39
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_3a

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_3a

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v18

    goto :goto_13

    .line 610
    :cond_3a
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_3b

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3b

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v20

    goto :goto_13

    .line 611
    :cond_3b
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_3c

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_3c

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v22

    goto :goto_13

    .line 612
    :cond_3c
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_3d

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3d

    float-to-double v6, v7

    const-wide v11, 0x3ff170a3d70a3d71L    # 1.09

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    :goto_14
    mul-double v6, v6, v11

    goto/16 :goto_13

    .line 613
    :cond_3d
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_3e

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3e

    float-to-double v6, v7

    const-wide v11, 0x3ff1333333333333L    # 1.075

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_14

    .line 614
    :cond_3e
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_3f

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_3f

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v16

    goto/16 :goto_13

    .line 615
    :cond_3f
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v6, :cond_40

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_40

    float-to-double v6, v7

    const-wide v11, 0x3ff0666666666666L    # 1.025

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_14

    :cond_40
    :goto_15
    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v12, v13

    move-object/from16 v6, v30

    move-object/from16 v2, v31

    const/4 v15, 0x5

    goto/16 :goto_4

    :cond_41
    move-object v13, v12

    float-to-double v2, v4

    const-wide/high16 v11, 0x3ff4000000000000L    # 1.25

    cmpl-double v6, v2, v11

    if-lez v6, :cond_42

    const/high16 v4, 0x3fa00000    # 1.25f

    :cond_42
    float-to-double v2, v7

    const-wide/high16 v11, 0x3ff4000000000000L    # 1.25

    cmpl-double v6, v2, v11

    if-lez v6, :cond_43

    const/high16 v7, 0x3fa00000    # 1.25f

    :cond_43
    float-to-double v2, v4

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    cmpg-double v6, v2, v11

    if-gez v6, :cond_44

    const/high16 v4, 0x3f400000    # 0.75f

    :cond_44
    float-to-double v2, v7

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    cmpg-double v6, v2, v11

    if-gez v6, :cond_45

    const/high16 v7, 0x3f400000    # 0.75f

    :cond_45
    mul-float v0, v0, v4

    mul-float v1, v1, v7

    .line 686
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    .line 687
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    .line 689
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v11, v0

    move v9, v1

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 690
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v1

    const-wide v14, 0x3fef5c28f5c28f5cL    # 0.98

    const-wide v20, 0x3ff020c49ba5e354L    # 1.008

    const-wide v22, 0x3fefbe76c8b43958L    # 0.992

    if-nez v1, :cond_51

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 691
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    .line 692
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v12

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v6

    if-ne v12, v6, :cond_49

    float-to-double v6, v11

    .line 693
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v11

    if-eqz v11, :cond_48

    move-wide/from16 v11, v20

    goto :goto_17

    :cond_48
    move-wide/from16 v11, v22

    :goto_17
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v11

    double-to-float v11, v6

    .line 695
    :cond_49
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    if-ne v6, v7, :cond_4b

    float-to-double v6, v11

    .line 696
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v11

    if-eqz v11, :cond_4a

    const-wide v11, 0x3ff051eb851eb852L    # 1.02

    goto :goto_18

    :cond_4a
    move-wide v11, v14

    :goto_18
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v11

    double-to-float v11, v6

    .line 698
    :cond_4b
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v7

    if-ne v6, v7, :cond_4d

    float-to-double v6, v11

    .line 699
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v11

    if-eqz v11, :cond_4c

    move-wide/from16 v11, v20

    goto :goto_19

    :cond_4c
    move-wide/from16 v11, v22

    :goto_19
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v11

    double-to-float v11, v6

    .line 701
    :cond_4d
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v7

    if-ne v6, v7, :cond_4f

    float-to-double v6, v11

    .line 702
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v11

    if-eqz v11, :cond_4e

    const-wide v11, 0x3ff051eb851eb852L    # 1.02

    goto :goto_1a

    :cond_4e
    move-wide v11, v14

    :goto_1a
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v11

    double-to-float v11, v6

    .line 704
    :cond_4f
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    float-to-double v6, v11

    .line 705
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v1

    if-eqz v1, :cond_50

    move-wide/from16 v11, v16

    goto :goto_1b

    :cond_50
    move-wide/from16 v11, v18

    :goto_1b
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v11

    double-to-float v1, v6

    move v11, v1

    goto/16 :goto_16

    .line 708
    :cond_51
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 709
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    .line 710
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v7

    if-ne v6, v7, :cond_54

    float-to-double v6, v9

    .line 711
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v9

    if-eqz v9, :cond_53

    move-wide/from16 v26, v20

    goto :goto_1d

    :cond_53
    move-wide/from16 v26, v22

    :goto_1d
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v26

    double-to-float v9, v6

    .line 713
    :cond_54
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v7

    if-ne v6, v7, :cond_56

    float-to-double v6, v9

    .line 714
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v9

    if-eqz v9, :cond_55

    const-wide v26, 0x3ff051eb851eb852L    # 1.02

    goto :goto_1e

    :cond_55
    move-wide/from16 v26, v14

    :goto_1e
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v26

    double-to-float v9, v6

    .line 716
    :cond_56
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v7

    if-ne v6, v7, :cond_58

    float-to-double v6, v9

    .line 717
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v9

    if-eqz v9, :cond_57

    move-wide/from16 v26, v20

    goto :goto_1f

    :cond_57
    move-wide/from16 v26, v22

    :goto_1f
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v26

    double-to-float v9, v6

    .line 719
    :cond_58
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v7

    if-ne v6, v7, :cond_5a

    float-to-double v6, v9

    .line 720
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v9

    if-eqz v9, :cond_59

    const-wide v26, 0x3ff051eb851eb852L    # 1.02

    goto :goto_20

    :cond_59
    move-wide/from16 v26, v14

    :goto_20
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v26

    double-to-float v9, v6

    .line 722
    :cond_5a
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    float-to-double v6, v9

    .line 723
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->isRecommended()Z

    move-result v1

    if-eqz v1, :cond_5b

    move-wide/from16 v26, v16

    goto :goto_21

    :cond_5b
    move-wide/from16 v26, v18

    :goto_21
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v26

    double-to-float v1, v6

    move v9, v1

    goto/16 :goto_1c

    .line 729
    :cond_5c
    iget-byte v0, v8, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    iget-byte v1, v8, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    if-le v0, v1, :cond_5d

    const/4 v12, 0x1

    goto :goto_22

    :cond_5d
    const/4 v12, 0x0

    :goto_22
    if-le v1, v0, :cond_5e

    const/4 v14, 0x1

    goto :goto_23

    :cond_5e
    const/4 v14, 0x0

    :goto_23
    const/16 v0, 0x10

    new-array v15, v0, [F

    .line 734
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getBallPossession()B

    move-result v7

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v3, v11

    move v4, v9

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForAction(ZZFFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;I)F

    move-result v0

    const v7, 0x38d1b717    # 1.0E-4f

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v6, 0x3da3d70a    # 0.08f

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    aput v0, v15, v1

    .line 736
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getBallPossession()B

    move-result v13

    move-object/from16 v0, p0

    move v1, v14

    move v2, v12

    move v3, v9

    move v4, v11

    const v10, 0x3da3d70a    # 0.08f

    move-object/from16 v6, p2

    const v10, 0x38d1b717    # 1.0E-4f

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForAction(ZZFFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;I)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3da3d70a    # 0.08f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x1

    aput v0, v15, v2

    move-object/from16 v6, p1

    .line 738
    invoke-virtual {v8, v12, v11, v9, v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForYellowCard(ZFFLpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x2

    aput v0, v15, v2

    move-object/from16 v12, p2

    const v13, 0x3da3d70a    # 0.08f

    .line 740
    invoke-virtual {v8, v14, v9, v11, v12}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForYellowCard(ZFFLpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x3

    aput v0, v15, v1

    .line 742
    invoke-virtual {v8, v11, v9, v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForRedCard(FFLpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aput v0, v15, v1

    .line 744
    invoke-virtual {v8, v9, v11, v12}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForRedCard(FFLpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aput v0, v15, v1

    const/4 v0, 0x6

    .line 746
    invoke-virtual {v8, v11, v9, v6, v12}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForPenalty(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v0

    const/4 v0, 0x7

    .line 748
    invoke-virtual {v8, v9, v11, v12, v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForPenalty(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v0

    const/16 v14, 0x8

    move-object/from16 v0, p0

    move v1, v11

    move v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    .line 750
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForCloseFreeKick(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v15, v14

    const/16 v14, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    .line 752
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForCloseFreeKick(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v15, v14

    const/16 v14, 0xa

    move-object/from16 v0, p0

    move v1, v11

    move v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 754
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForFarFreeKick(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v15, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    .line 756
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForFarFreeKick(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v15, v14

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 758
    aget v1, v15, v1

    move/from16 v2, p4

    invoke-virtual {v8, v1, v6, v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForCornerKick(FLpl/mkrstudio/truefootball3/objects/Team;Z)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v0

    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 760
    aget v1, v15, v1

    invoke-virtual {v8, v1, v12, v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForCornerKick(FLpl/mkrstudio/truefootball3/objects/Team;Z)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v0

    const/16 v0, 0xe

    .line 762
    invoke-virtual {v8, v12}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForInjury(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v0

    const/16 v0, 0xf

    .line 764
    invoke-virtual/range {p0 .. p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForInjury(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v0

    return-object v15
.end method

.method public getPossibilityForAction(ZZFFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;I)F
    .locals 7
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
            "leading1",
            "leading2",
            "skill1",
            "skill2",
            "team1",
            "team2",
            "possessionTraining"
        }
    .end annotation

    .line 1000
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    if-eq v0, v1, :cond_0

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->WHILE_LEADING:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-eq v0, v1, :cond_5

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->WHILE_LEADING:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    .line 1002
    :cond_1
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-eq v0, v1, :cond_4

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->WHILE_LEADING:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1004
    :cond_2
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-eq p1, v0, :cond_4

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->WHILE_LEADING:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    :goto_0
    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_2

    :cond_5
    :goto_1
    const/high16 p1, 0x3f000000    # 0.5f

    .line 1006
    :goto_2
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p2

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    const v1, 0x3fa66666    # 1.3f

    if-ne p2, v0, :cond_6

    const p2, 0x3fa66666    # 1.3f

    goto :goto_3

    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1008
    :goto_3
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v0

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    const v6, 0x3f933333    # 1.15f

    if-ne v0, v5, :cond_7

    const p2, 0x3f933333    # 1.15f

    .line 1010
    :cond_7
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v0

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Gameplay;->DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v0, v5, :cond_8

    const/high16 p2, 0x3f400000    # 0.75f

    .line 1012
    :cond_8
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p5

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p5, v0, :cond_9

    const/high16 p2, 0x3f000000    # 0.5f

    .line 1015
    :cond_9
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p5

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p5, v0, :cond_a

    const v3, 0x3fa66666    # 1.3f

    .line 1017
    :cond_a
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p5

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p5, v0, :cond_b

    goto :goto_4

    :cond_b
    move v6, v3

    .line 1019
    :goto_4
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p5

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Gameplay;->DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p5, v0, :cond_c

    goto :goto_5

    :cond_c
    move v4, v6

    .line 1021
    :goto_5
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p5

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p5

    sget-object p6, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p5, p6, :cond_d

    goto :goto_6

    :cond_d
    move v2, v4

    :goto_6
    sub-float p5, p3, p4

    const/high16 p6, 0x40c00000    # 6.0f

    add-float/2addr p4, p3

    .line 1025
    invoke-static {p6, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    mul-float p1, p1, p2

    mul-float p1, p1, v2

    float-to-double p1, p1

    const-wide v0, 0x3fa999999999999aL    # 0.05

    int-to-double p6, p7

    .line 1028
    invoke-static {p6, p7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p6, p6, v0

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    add-double/2addr p6, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p6

    double-to-float p1, p1

    const/4 p2, 0x0

    const p6, 0x3dcccccd    # 0.1f

    cmpl-float p2, p5, p2

    if-ltz p2, :cond_e

    :goto_7
    div-float/2addr p3, p4

    mul-float p3, p3, p6

    mul-float p3, p3, p1

    return p3

    :cond_e
    const/high16 p2, -0x3e380000    # -25.0f

    cmpl-float p2, p5, p2

    if-lez p2, :cond_f

    const/high16 p2, 0x40800000    # 4.0f

    :goto_8
    div-float/2addr p5, p2

    add-float/2addr p3, p5

    goto :goto_7

    :cond_f
    const/high16 p2, 0x40400000    # 3.0f

    goto :goto_8
.end method

.method public getPossibilityForCloseFreeKick(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)F
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "skill1",
            "skill2",
            "team1",
            "team2",
            "ending"
        }
    .end annotation

    .line 850
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 851
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 852
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, 0x3fa999999999999aL    # 0.05

    if-ge v4, v6, :cond_3

    .line 853
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v6

    if-nez v6, :cond_2

    .line 854
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v6, v9, :cond_2

    .line 855
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v6

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v6, v9, :cond_1

    float-to-double v5, v5

    const-wide v9, 0x3fc999999999999aL    # 0.2

    .line 856
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v9

    double-to-float v5, v5

    .line 857
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v6

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v6, v9, :cond_2

    float-to-double v5, v5

    .line 858
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v5, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 864
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 865
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_6

    .line 866
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v4, v6, :cond_6

    .line 867
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v4

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v4, v6, :cond_5

    float-to-double v9, v0

    const-wide v11, 0x3fc3333333333333L    # 0.15

    .line 868
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v11

    double-to-float v0, v9

    .line 869
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v4

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v4, v6, :cond_6

    float-to-double v9, v0

    .line 870
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v7

    double-to-float v0, v9

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    const/high16 v1, 0x40c00000    # 6.0f

    add-float v2, p1, p2

    .line 875
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    if-eqz p5, :cond_8

    const/high16 v3, 0x40400000    # 3.0f

    :cond_8
    div-float v1, p1, v1

    float-to-double v1, v1

    const-wide v6, 0x3f689374bc6a7efaL    # 0.003

    .line 881
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    mul-double v1, v1, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v0, v1

    return v0
.end method

.method public getPossibilityForCornerKick(FLpl/mkrstudio/truefootball3/objects/Team;Z)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "possibilityForAction",
            "team",
            "ending"
        }
    .end annotation

    .line 795
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const/16 v4, 0xb

    .line 796
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 797
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_2

    .line 798
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v4, v5, :cond_2

    .line 799
    :cond_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v4, v5, :cond_1

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    .line 800
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-float v3, v3

    .line 801
    :cond_1
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    if-ne v4, v5, :cond_2

    float-to-double v3, v3

    const-wide v5, 0x3fa999999999999aL    # 0.05

    .line 802
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    double-to-float v3, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    const/high16 v1, 0x40400000    # 3.0f

    :cond_4
    float-to-double p1, p1

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    .line 809
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v4

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-float p1, p1

    return p1
.end method

.method public getPossibilityForFarFreeKick(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)F
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "skill1",
            "skill2",
            "team1",
            "team2",
            "ending"
        }
    .end annotation

    .line 814
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 815
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 816
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, 0x3fa999999999999aL    # 0.05

    if-ge v4, v6, :cond_3

    .line 817
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v6

    if-nez v6, :cond_2

    .line 818
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v6, v9, :cond_2

    .line 819
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v6

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v6, v9, :cond_1

    float-to-double v5, v5

    const-wide v9, 0x3fc999999999999aL    # 0.2

    .line 820
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v9

    double-to-float v5, v5

    .line 821
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v6

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v6, v9, :cond_2

    float-to-double v5, v5

    .line 822
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v5, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 828
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 829
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_6

    .line 830
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v4, v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    aget-object v4, v4, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v4, v6, :cond_6

    .line 831
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v4

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v4, v6, :cond_5

    float-to-double v9, v0

    const-wide v11, 0x3fc3333333333333L    # 0.15

    .line 832
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v11

    double-to-float v0, v9

    .line 833
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v4

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v4, v6, :cond_6

    float-to-double v9, v0

    .line 834
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v7

    double-to-float v0, v9

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    const/high16 v1, 0x40c00000    # 6.0f

    add-float v2, p1, p2

    .line 839
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    if-eqz p5, :cond_8

    const/high16 v3, 0x40400000    # 3.0f

    :cond_8
    div-float v1, p1, v1

    float-to-double v1, v1

    const-wide v6, 0x3f689374bc6a7efaL    # 0.003

    .line 845
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double v1, v1, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v0, v1

    return v0
.end method

.method public getPossibilityForInjury(Lpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 788
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Match;->calculateAggression(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result p1

    const v0, 0x3a449ba6    # 7.5E-4f

    mul-float v0, v0, p1

    return v0
.end method

.method public getPossibilityForPenalty(FFLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "skill1",
            "skill2",
            "team1",
            "team2"
        }
    .end annotation

    .line 886
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 887
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 888
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, 0x3fa999999999999aL    # 0.05

    const-wide v9, 0x3fc3333333333333L    # 0.15

    if-ge v4, v6, :cond_3

    .line 889
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v6

    if-nez v6, :cond_2

    .line 890
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v11, :cond_0

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v11, :cond_0

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v6, v11, :cond_0

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v4

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v6, v11, :cond_2

    .line 891
    :cond_0
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v6

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v6, v11, :cond_1

    float-to-double v5, v5

    .line 892
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v9

    double-to-float v5, v5

    .line 893
    :cond_1
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v6

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v6, v9, :cond_2

    float-to-double v5, v5

    .line 894
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v5, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 900
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 901
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v0

    if-nez v0, :cond_6

    .line 902
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    aget-object v0, v0, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    aget-object v0, v0, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    aget-object v0, v0, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    aget-object v0, v0, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    aget-object v0, v0, v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v4, :cond_6

    .line 903
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v0, v4, :cond_5

    float-to-double v3, v3

    .line 904
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v9

    double-to-float v3, v3

    .line 905
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v0, v4, :cond_6

    float-to-double v3, v3

    .line 906
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v7

    double-to-float v0, v3

    move v3, v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 910
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getAggression()I

    move-result v0

    move-object v1, p0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAggressionModifier(I)F

    move-result v0

    add-float/2addr v3, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v2, p1, p2

    .line 912
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v0, p1, v0

    float-to-double v6, v0

    const-wide v8, 0x3f689374bc6a7efaL    # 0.003

    .line 914
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    double-to-float v0, v6

    return v0
.end method

.method public getPossibilityForPenaltyGoal(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taker",
            "goalkeeper"
        }
    .end annotation

    .line 1049
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x28

    const/16 v2, 0x3c

    const-wide v3, 0x3ff3333333333333L    # 1.2

    const/16 v5, 0x5a

    if-le v0, v5, :cond_0

    int-to-double v5, v5

    .line 1050
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    :goto_0
    double-to-int v5, v5

    goto/16 :goto_2

    .line 1051
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v6

    add-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    const/16 v6, 0x4b

    if-le v0, v6, :cond_1

    int-to-double v5, v5

    const-wide v7, 0x3ff1eb851eb851ecL    # 1.12

    .line 1052
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v5, v5, v7

    goto :goto_0

    .line 1053
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v6

    add-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    if-le v0, v2, :cond_2

    int-to-double v5, v5

    const-wide v7, 0x3ff11eb851eb851fL    # 1.07

    .line 1054
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 1055
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v6

    add-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_3

    goto :goto_2

    .line 1057
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v6

    add-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    const/16 v6, 0x19

    if-le v0, v6, :cond_4

    int-to-double v5, v5

    const-wide v7, 0x3fedc28f5c28f5c3L    # 0.93

    .line 1058
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 1059
    :cond_4
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    const/16 p1, 0xa

    if-le v0, p1, :cond_5

    int-to-double v5, v5

    const-wide v7, 0x3fea3d70a3d70a3dL    # 0.82

    .line 1060
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_5
    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    .line 1062
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 1063
    :goto_2
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result p1

    const/16 v0, 0x50

    if-le p1, v0, :cond_6

    int-to-double p1, v5

    const-wide v0, 0x3feb333333333333L    # 0.85

    .line 1064
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    mul-double p1, p1, v0

    :goto_4
    double-to-int p1, p1

    goto :goto_5

    .line 1065
    :cond_6
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result p1

    if-le p1, v2, :cond_7

    int-to-double p1, v5

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 1066
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 1067
    :cond_7
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result p1

    if-le p1, v1, :cond_8

    int-to-double p1, v5

    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 1068
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 1069
    :cond_8
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result p1

    const/16 p2, 0x14

    if-le p1, p2, :cond_9

    int-to-double p1, v5

    .line 1070
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v3

    goto :goto_4

    :cond_9
    int-to-double p1, v5

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    .line 1072
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :goto_5
    const/16 p2, 0x5f

    if-le p1, p2, :cond_a

    const/16 p1, 0x5f

    :cond_a
    return p1
.end method

.method public getPossibilityForRedCard(FFLpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "skill1",
            "skill2",
            "team"
        }
    .end annotation

    .line 928
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 929
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xb

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-wide v7, 0x3fa999999999999aL    # 0.05

    const-wide v9, 0x3fc3333333333333L    # 0.15

    if-ge v3, v5, :cond_2

    .line 930
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v5

    if-nez v5, :cond_1

    .line 931
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v5, v6, :cond_0

    float-to-double v4, v4

    .line 932
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v9

    double-to-float v4, v4

    .line 933
    :cond_0
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v5, v6, :cond_1

    float-to-double v4, v4

    .line 934
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v7

    double-to-float v4, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 939
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 940
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_4

    .line 941
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v3

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v3, v5, :cond_3

    float-to-double v2, v2

    .line 942
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v9

    double-to-float v2, v2

    .line 943
    :cond_3
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v3

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v3, v5, :cond_4

    float-to-double v2, v2

    .line 944
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v7

    double-to-float v2, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 948
    :cond_5
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getAggression()I

    move-result p3

    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAggressionModifier(I)F

    move-result p3

    add-float/2addr v2, p3

    const/high16 p3, 0x40c00000    # 6.0f

    add-float/2addr p1, p2

    .line 950
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v0, 0x3f589374bc6a7efaL    # 0.0015

    .line 952
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-float p1, p1

    return p1
.end method

.method public getPossibilityForYellowCard(ZFFLpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leading",
            "skill1",
            "skill2",
            "team"
        }
    .end annotation

    .line 957
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 958
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xb

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v9, 0x3fa999999999999aL    # 0.05

    if-ge v3, v5, :cond_2

    .line 959
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v5

    if-nez v5, :cond_1

    .line 960
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v5, v6, :cond_0

    float-to-double v4, v4

    .line 961
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v7

    double-to-float v4, v4

    .line 962
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    if-ne v5, v6, :cond_1

    float-to-double v4, v4

    .line 963
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v9

    double-to-float v4, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 968
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v3, v11, :cond_5

    .line 969
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v11

    if-nez v11, :cond_4

    .line 970
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v11

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v11, v12, :cond_3

    float-to-double v11, v5

    .line 971
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v7

    double-to-float v5, v11

    .line 972
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v11

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    if-ne v11, v12, :cond_4

    float-to-double v11, v5

    .line 973
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v9

    double-to-float v5, v11

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 976
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getAggression()I

    move-result v3

    move-object v7, p0

    invoke-direct {p0, v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAggressionModifier(I)F

    move-result v3

    add-float/2addr v5, v3

    .line 979
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 980
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_7

    .line 981
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v3

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-ne v3, v8, :cond_6

    float-to-double v2, v2

    .line 982
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v9

    double-to-float v2, v2

    .line 983
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v3

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->WHILE_LEADING:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    if-ne v3, v8, :cond_7

    if-eqz p1, :cond_7

    float-to-double v2, v2

    .line 984
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v9

    double-to-float v2, v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/high16 v0, 0x40c00000    # 6.0f

    add-float v1, p2, p3

    .line 988
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v0, p3, v0

    float-to-double v0, v0

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    .line 990
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v8

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getPreviousMatch()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 5

    .line 188
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 191
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 192
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v3, v4, :cond_1

    .line 194
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getWeek()Lpl/mkrstudio/truefootball3/objects/Week;
    .locals 4

    .line 176
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 180
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public homeTeamAdvanced()Z
    .locals 8

    .line 95
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 100
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 101
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 103
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-le v0, v2, :cond_5

    return v5

    .line 105
    :cond_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v3, v4, :cond_4

    .line 106
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v4

    sub-int/2addr v0, v5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v4, v6

    if-gt v3, v4, :cond_3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    add-int/2addr v4, v6

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-le v0, v2, :cond_5

    :cond_3
    return v5

    .line 109
    :cond_4
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH_REPLAY:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v0, v2, :cond_5

    .line 110
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-le v0, v2, :cond_5

    return v5

    :cond_5
    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return v1
.end method

.method public isAwayTeamWonByPenalties()Z
    .locals 1

    .line 1315
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeamWonByPenalties:Z

    return v0
.end method

.method public isAwayTeamWonInExtraTime()Z
    .locals 1

    .line 1331
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeamWonInExtraTime:Z

    return v0
.end method

.method public isExtraTime()Z
    .locals 6

    .line 144
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getWeek()Lpl/mkrstudio/truefootball3/objects/Week;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 148
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-ne v0, v2, :cond_4

    return v4

    .line 150
    :cond_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_SECOND_LEG:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-ne v0, v2, :cond_4

    .line 151
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getPreviousMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2021;

    if-nez v2, :cond_3

    .line 153
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2021;

    if-nez v2, :cond_3

    .line 154
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2021;

    if-nez v2, :cond_3

    .line 155
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/EuropeanChampionsCup2022;

    if-nez v2, :cond_3

    .line 156
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/EuropeanFederationCup2022;

    if-nez v2, :cond_3

    .line 157
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/EuropeanCommunityCup2022;

    if-nez v2, :cond_3

    .line 158
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanChampionsCup2021;

    if-nez v2, :cond_3

    .line 159
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    instance-of v2, v2, Lpl/mkrstudio/truefootball3/fixtures/SouthAmericanContinentalCup2021;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    add-int/2addr v3, v5

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-ne v0, v2, :cond_4

    return v4

    .line 160
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    add-int/2addr v3, v0

    if-ne v2, v3, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method public isHomeTeamWonByPenalties()Z
    .locals 1

    .line 1307
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeamWonByPenalties:Z

    return v0
.end method

.method public isHomeTeamWonInExtraTime()Z
    .locals 1

    .line 1323
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeamWonInExtraTime:Z

    return v0
.end method

.method public isNeutralGround()Z
    .locals 4

    .line 232
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 235
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 236
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->isNeutralGround()Z

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setAwayGoals(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "awayGoals"
        }
    .end annotation

    .line 1303
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

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

    .line 1271
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setAwayTeamWonByPenalties(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "awayTeamWonByPenalties"
        }
    .end annotation

    .line 1319
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeamWonByPenalties:Z

    return-void
.end method

.method public setAwayTeamWonInExtraTime(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "awayTeamWonInExtraTime"
        }
    .end annotation

    .line 1335
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeamWonInExtraTime:Z

    return-void
.end method

.method public setCompetition(Lpl/mkrstudio/truefootball3/objects/Competition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competition"
        }
    .end annotation

    .line 1279
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    return-void
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

    .line 1287
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->date:Ljava/lang/String;

    return-void
.end method

.method public setHomeGoals(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeGoals"
        }
    .end annotation

    .line 1295
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

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

    .line 1263
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setHomeTeamWonByPenalties(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeTeamWonByPenalties"
        }
    .end annotation

    .line 1311
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeamWonByPenalties:Z

    return-void
.end method

.method public setHomeTeamWonInExtraTime(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeTeamWonInExtraTime"
        }
    .end annotation

    .line 1327
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeamWonInExtraTime:Z

    return-void
.end method

.method public simulateMatch(Lpl/mkrstudio/truefootball3/objects/UserData;ZZ)V
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ud",
            "homeTeamToWin",
            "awayTeamToWin"
        }
    .end annotation

    move-object/from16 v8, p0

    invoke-static {v8}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->prepareMatchLineups(Lpl/mkrstudio/truefootball3/objects/Match;)V

    :try_start_ntsel
    .line 245
    iget-object v0, v8, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v9

    .line 246
    iget-object v0, v8, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getThreeSubs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v16

    invoke-virtual/range {v10 .. v16}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, v8, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v10

    .line 251
    iget-object v0, v8, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getThreeSubs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 253
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v17

    invoke-virtual/range {v11 .. v17}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 256
    iput-byte v11, v8, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    .line 257
    iput-byte v11, v8, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    .line 258
    iget-object v0, v8, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getMatchSkill(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v0

    .line 259
    iget-object v1, v8, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v8, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getMatchSkill(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    .line 261
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->isNeutralGround()Z

    move-result v2

    if-nez v2, :cond_2

    float-to-double v2, v0

    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    .line 262
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    float-to-double v1, v1

    const-wide v3, 0x3fee666666666666L    # 0.95

    .line 263
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 266
    :cond_2
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 267
    fill-array-data v3, :array_0

    const/4 v4, 0x7

    new-array v5, v4, [I

    .line 268
    fill-array-data v5, :array_1

    new-array v6, v4, [I

    .line 269
    fill-array-data v6, :array_2

    new-array v7, v4, [I

    .line 270
    fill-array-data v7, :array_3

    new-array v13, v4, [I

    .line 271
    fill-array-data v13, :array_4

    new-array v14, v4, [I

    .line 272
    fill-array-data v14, :array_5

    new-array v15, v4, [I

    .line 273
    fill-array-data v15, :array_6

    new-array v4, v2, [[I

    aput-object v5, v4, v11

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v6, 0x2

    aput-object v7, v4, v6

    const/4 v7, 0x3

    aput-object v13, v4, v7

    const/4 v13, 0x4

    aput-object v14, v4, v13

    const/4 v14, 0x5

    aput-object v15, v4, v14

    const/16 v15, 0x8

    new-array v13, v15, [I

    .line 277
    fill-array-data v13, :array_7

    new-array v7, v15, [I

    .line 278
    fill-array-data v7, :array_8

    new-array v6, v15, [I

    .line 279
    fill-array-data v6, :array_9

    new-array v5, v2, [I

    .line 282
    fill-array-data v5, :array_a

    new-array v11, v2, [I

    .line 283
    fill-array-data v11, :array_b

    new-array v14, v2, [I

    .line 284
    fill-array-data v14, :array_c

    new-array v2, v15, [I

    .line 287
    fill-array-data v2, :array_d

    move-object/from16 v23, v10

    new-array v10, v15, [I

    .line 288
    fill-array-data v10, :array_e

    new-array v15, v15, [I

    .line 289
    fill-array-data v15, :array_f

    move-object/from16 v24, v9

    const/4 v9, 0x5

    new-array v8, v9, [I

    .line 292
    fill-array-data v8, :array_10

    move-object/from16 v22, v4

    new-array v4, v9, [I

    .line 293
    fill-array-data v4, :array_11

    move-object/from16 v25, v12

    new-array v12, v9, [I

    .line 294
    fill-array-data v12, :array_12

    move-object/from16 v27, v3

    const/4 v9, 0x7

    new-array v3, v9, [[I

    const/16 v21, 0x0

    aput-object v13, v3, v21

    const/16 v20, 0x1

    aput-object v5, v3, v20

    const/16 v19, 0x2

    aput-object v2, v3, v19

    const/16 v18, 0x3

    aput-object v8, v3, v18

    const/4 v8, 0x4

    aput-object v2, v3, v8

    const/4 v2, 0x5

    aput-object v5, v3, v2

    const/4 v5, 0x6

    aput-object v13, v3, v5

    new-array v13, v9, [[I

    aput-object v7, v13, v21

    aput-object v11, v13, v20

    aput-object v10, v13, v19

    aput-object v4, v13, v18

    aput-object v15, v13, v8

    aput-object v14, v13, v2

    aput-object v6, v13, v5

    new-array v4, v9, [[I

    aput-object v6, v4, v21

    aput-object v14, v4, v20

    aput-object v15, v4, v19

    aput-object v12, v4, v18

    aput-object v10, v4, v8

    aput-object v11, v4, v2

    aput-object v7, v4, v5

    float-to-int v2, v0

    float-to-int v6, v1

    sub-int/2addr v2, v6

    .line 300
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v6, 0x0

    :goto_2
    const/16 v7, 0x64

    if-ge v6, v5, :cond_8

    .line 302
    aget v5, v27, v6

    if-le v2, v5, :cond_7

    const/16 v2, 0x32

    move-object/from16 v8, v25

    .line 303
    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    :goto_3
    if-ge v5, v10, :cond_5

    .line 306
    aget-object v11, v22, v6

    aget v11, v11, v5

    add-int/2addr v9, v11

    if-le v9, v2, :cond_6

    .line 308
    invoke-virtual {v8, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 310
    :goto_4
    aget-object v10, v3, v5

    array-length v10, v10

    if-ge v6, v10, :cond_5

    .line 311
    aget-object v10, v3, v5

    aget v10, v10, v6

    add-int/2addr v9, v10

    if-le v9, v2, :cond_4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 314
    aget-object v0, v13, v5

    aget v0, v0, v6

    int-to-byte v0, v0

    move-object/from16 v11, p0

    iput-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    .line 315
    aget-object v0, v4, v5

    aget v0, v0, v6

    int-to-byte v0, v0

    iput-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    goto :goto_5

    :cond_3
    move-object/from16 v11, p0

    .line 317
    aget-object v0, v4, v5

    aget v0, v0, v6

    int-to-byte v0, v0

    iput-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    .line 318
    aget-object v0, v13, v5

    aget v0, v0, v6

    int-to-byte v0, v0

    iput-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    goto :goto_5

    :cond_4
    move-object/from16 v11, p0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v11, p0

    goto :goto_5

    :cond_6
    move-object/from16 v11, p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x7

    move-object/from16 v11, p0

    move-object/from16 v8, v25

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x6

    goto :goto_2

    :cond_8
    move-object/from16 v11, p0

    move-object/from16 v8, v25

    :goto_5
    if-eqz p2, :cond_9

    const/4 v0, 0x3

    .line 332
    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    .line 333
    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    goto :goto_6

    :cond_9
    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eqz p3, :cond_a

    .line 335
    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    int-to-byte v0, v1

    iput-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    .line 336
    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    .line 339
    :cond_a
    :goto_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 341
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 344
    new-instance v0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    const/4 v1, 0x0

    .line 345
    :goto_7
    iget-byte v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    const/4 v3, 0x0

    if-ge v1, v2, :cond_f

    .line 346
    iget-object v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    .line 347
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v25

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v26, v2

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 348
    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    :goto_8
    if-eqz v3, :cond_e

    if-ne v3, v2, :cond_c

    goto :goto_9

    .line 353
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v25

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 354
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_d
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 351
    :cond_e
    :goto_9
    iget-object v3, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getAssistant(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    .line 360
    :goto_a
    iget-byte v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    if-ge v1, v2, :cond_14

    .line 361
    iget-object v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getGoalScorer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    .line 362
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v25

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v26, v2

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 363
    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_10
    move-object v4, v3

    :goto_b
    if-eqz v4, :cond_13

    if-ne v4, v2, :cond_11

    goto :goto_c

    .line 368
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v25

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 369
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_12
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 366
    :cond_13
    :goto_c
    iget-object v4, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getAssistant(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    goto :goto_b

    .line 374
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_d
    const/16 v3, 0x5a

    const/16 v4, 0x190

    const/4 v5, 0x6

    if-ge v2, v5, :cond_16

    .line 376
    invoke-virtual {v8, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_15

    .line 378
    iget-object v3, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    .line 379
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 380
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v5, :cond_18

    .line 384
    invoke-virtual {v8, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v14, 0x1

    add-int/2addr v6, v14

    if-ge v6, v3, :cond_17

    .line 386
    iget-object v6, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getRandomPlayer(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    .line 387
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17

    .line 388
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    const/4 v14, 0x1

    .line 391
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 392
    invoke-virtual {v8, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 394
    iget-object v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v25, v2

    move-object/from16 v26, v1

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 395
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    goto :goto_f

    :cond_1a
    const/16 v4, 0xa

    if-ge v2, v4, :cond_1b

    .line 397
    iget-object v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v25, v2

    move-object/from16 v26, v1

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 398
    iget-object v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x2

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    const/4 v2, 0x0

    const/4 v4, 0x4

    :goto_10
    if-ge v2, v4, :cond_19

    .line 400
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    const/4 v4, 0x4

    .line 402
    iget-object v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    sget-object v27, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v31

    move-object/from16 v25, v2

    move-object/from16 v26, v1

    invoke-virtual/range {v25 .. v31}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 403
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 407
    :cond_1c
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 408
    iget-object v6, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-byte v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    iget-byte v3, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v4, v9

    move-object v5, v10

    move-object v14, v6

    move-object v6, v12

    move-object/from16 p2, v15

    move-object v15, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/objects/Match;->calculateRating(Lpl/mkrstudio/truefootball3/objects/Player;BBLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)F

    move-result v0

    invoke-virtual {v14, v15, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->addRating(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    move-object/from16 v15, p2

    const/4 v14, 0x1

    goto :goto_11

    .line 410
    :cond_1d
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 411
    iget-object v7, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-byte v2, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    iget-byte v3, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v4, v9

    move-object v5, v10

    move-object v6, v12

    move-object/from16 p2, v9

    move-object v9, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/objects/Match;->calculateRating(Lpl/mkrstudio/truefootball3/objects/Player;BBLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)F

    move-result v0

    invoke-virtual {v9, v15, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->addRating(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    move-object/from16 v9, p2

    goto :goto_12

    .line 414
    :cond_1e
    iget-object v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v0, v1, :cond_1f

    iget-object v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v0, v1, :cond_20

    .line 415
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->changeRankingPoints()V

    .line 417
    :cond_20
    iget-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeGoals:B

    if-nez v0, :cond_21

    .line 418
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    move-object/from16 v0, v23

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 420
    :cond_21
    iget-byte v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayGoals:B

    if-nez v0, :cond_22

    .line 421
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/objects/Match;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    move-object/from16 v0, v24

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 424
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Match;->arePenalties()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 425
    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeamWonByPenalties:Z

    goto :goto_13

    :cond_23
    const/4 v0, 0x1

    .line 429
    iput-boolean v0, v11, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeamWonByPenalties:Z

    :cond_24
    :goto_13
    :try_end_ntsel
    .catch Ljava/lang/Throwable; {:try_start_ntsel .. :try_end_ntsel} :catch_ntsel

    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->restoreMatchLineups()V

    return-void

    :catch_ntsel
    move-exception v31

    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->restoreMatchLineups()V

    throw v31

    nop

    :array_0
    .array-data 4
        0x32
        0x28
        0x1e
        0x14
        0xa
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x1d
        0x7
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1d
        0xc
        0x2
        0x1
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x12
        0x15
        0x5
        0x2
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x2
        0xa
        0x19
        0x9
        0x4
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x4
        0x1a
        0xc
        0x8
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x4
        0xd
        0x10
        0xd
        0x4
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3b
        0x14
        0x7
        0x6
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2f
        0x1e
        0xe
        0x5
        0x3
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x20
        0x1b
        0x15
        0x8
        0x6
        0x4
        0x1
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x29
        0x23
        0x11
        0x6
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x0
        0x2
        0x3
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x0
        0x2
        0x3
        0x4
    .end array-data
.end method
