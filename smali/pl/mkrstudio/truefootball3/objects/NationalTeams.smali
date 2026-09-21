.class public Lpl/mkrstudio/truefootball3/objects/NationalTeams;
.super Ljava/lang/Object;
.source "NationalTeams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/objects/NationalTeams$PlayerSkillComparator;,
        Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;,
        Lpl/mkrstudio/truefootball3/objects/NationalTeams$TeamSkillComparator;
    }
.end annotation


# static fields
.field public static final ID_EURO_FINALS:Ljava/lang/String; = "NTEUR"

.field public static final ID_EURO_QUALS:Ljava/lang/String; = "NTEUQ"

.field public static final ID_U21_FINALS:Ljava/lang/String; = "NTU2F"

.field public static final ID_U21_QUALS:Ljava/lang/String; = "NTU2Q"

.field public static final ID_WC_FINALS:Ljava/lang/String; = "NTWCF"

.field public static final ID_WC_QUALS:Ljava/lang/String; = "NTWCQ"

.field public static final TOKEN_ADD_TEAMS:Ljava/lang/String; = "national_teams"

.field private static lastCompetitions:Lpl/mkrstudio/truefootball3/objects/Competitions; = null

.field private static lastSelBackup:Ljava/util/IdentityHashMap; = null

.field private static lastWorld:Lpl/mkrstudio/truefootball3/objects/World; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEligibleFromPlayers(Ljava/util/List;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 285
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 286
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 287
    instance-of v2, v1, Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez v2, :cond_13

    goto :goto_2b

    .line 290
    :cond_13
    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 291
    invoke-static {v1, p1, p2}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isEligible(Lpl/mkrstudio/truefootball3/objects/Player;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_2b

    .line 294
    :cond_1c
    invoke-virtual {p4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_2b

    .line 297
    :cond_23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2e
    return-void
.end method

.method private static addEligibleFromTeams(Ljava/util/List;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 268
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 269
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 270
    instance-of v2, v1, Lpl/mkrstudio/truefootball3/objects/Team;

    if-nez v2, :cond_13

    goto :goto_21

    .line 273
    :cond_13
    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 274
    instance-of v2, v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v2, :cond_1a

    goto :goto_21

    .line 277
    :cond_1a
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addEligibleFromPlayers(Ljava/util/List;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_24
    return-void
.end method

.method public static addRankingPoints(Ljava/lang/Object;I)V
    .registers 3

    .line 582
    instance-of v0, p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v0, :cond_e

    .line 583
    check-cast p0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    .line 584
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getRankingPoints()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setRankingPoints(I)V

    :cond_e
    return-void
.end method

.method public static addTeams(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;)V
    .registers 9

    if-eqz p0, :cond_69

    if-nez p1, :cond_5

    goto :goto_69

    .line 324
    :cond_5
    sput-object p1, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    .line 325
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->ensure(Lpl/mkrstudio/truefootball3/objects/World;)V

    .line 326
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->idOf(Lpl/mkrstudio/truefootball3/objects/Competition;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isNationalId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    .line 330
    :cond_15
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1c

    return-void

    .line 334
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 335
    invoke-static {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isQualifierId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x10

    goto :goto_2a

    :cond_28
    const/16 v1, 0x8

    .line 336
    :goto_2a
    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->pickSource(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    const/4 v4, 0x0

    .line 338
    :goto_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_50

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v1, :cond_50

    .line 339
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 340
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 341
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 345
    :cond_50
    invoke-static {p0, v1, p1, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->pad(Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;)V

    .line 346
    :goto_53
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_69

    .line 347
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 348
    instance-of v1, v0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v1, :cond_66

    .line 349
    check-cast v0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->callUp(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_69
    :goto_69
    return-void
.end method

.method public static allIds()[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NTWCQ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NTEUQ"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NTU2Q"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NTWCF"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NTEUR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NTU2F"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static applyToFinals(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .registers 9

    if-eqz p0, :cond_86

    if-eqz p1, :cond_86

    if-eqz p2, :cond_86

    .line 499
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    goto/16 :goto_86

    .line 502
    :cond_f
    sput-object p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastCompetitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    .line 503
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_18

    return-void

    .line 507
    :cond_18
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 508
    instance-of v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;

    if-nez v0, :cond_21

    return-void

    .line 511
    :cond_21
    check-cast p0, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 512
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->finalsAlreadyStarted(Lpl/mkrstudio/truefootball3/objects/Competition;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    .line 515
    :cond_2a
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_31

    return-void

    .line 519
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 520
    :goto_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v3, :cond_56

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_56

    .line 521
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 522
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 523
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 526
    :cond_56
    sget-object p2, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    if-eqz p2, :cond_75

    .line 527
    invoke-static {v0, v4, p2, p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->pad(Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;)V

    .line 528
    :goto_5d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_75

    .line 529
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 530
    instance-of p2, p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz p2, :cond_72

    .line 531
    sget-object p2, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    invoke-static {p2, p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->callUp(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 535
    :cond_75
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object p1

    instance-of p1, p1, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;

    if-eqz p1, :cond_86

    .line 536
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;

    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->rebuildFromTeams(Lpl/mkrstudio/truefootball3/objects/Time;)V

    :cond_86
    :goto_86
    return-void
.end method

.method public static callUp(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V
    .registers 10

    if-eqz p1, :cond_9e

    if-nez p0, :cond_6

    goto/16 :goto_9e

    .line 204
    :cond_6
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 205
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 206
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setCountryCode(Ljava/lang/String;)V

    :cond_1d
    if-nez v0, :cond_20

    return-void

    .line 212
    :cond_20
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->isU21()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->collectEligible(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 213
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams$PlayerSkillComparator;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams$PlayerSkillComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getPlayers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_37

    return-void

    .line 218
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->countHealthy(Ljava/util/List;)I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-lt v1, v2, :cond_45

    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 222
    :goto_48
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x17

    if-ge v4, v6, :cond_77

    if-ge v5, v7, :cond_77

    .line 223
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez v6, :cond_5b

    goto :goto_74

    :cond_5b
    if-eqz v1, :cond_68

    .line 227
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v7

    if-eqz v7, :cond_68

    const/16 v7, 0x12

    if-ge v5, v7, :cond_68

    goto :goto_74

    .line 230
    :cond_68
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    goto :goto_74

    .line 233
    :cond_6f
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :goto_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_77
    if-ge v5, v2, :cond_97

    .line 237
    :goto_79
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_97

    if-ge v5, v7, :cond_97

    .line 238
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v1, :cond_94

    .line 239
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 246
    :cond_97
    :try_start_97
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->calculateSkill()F

    move-result p0

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setSkill(F)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_9e

    :catch_9e
    :cond_9e
    :goto_9e
    return-void
.end method

.method public static callUpAll(Lpl/mkrstudio/truefootball3/objects/World;Z)V
    .registers 4

    if-eqz p1, :cond_7

    .line 173
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeamsU21()Ljava/util/HashMap;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p1

    :goto_b
    if-nez p1, :cond_e

    return-void

    .line 177
    :cond_e
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 178
    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 180
    instance-of v1, v0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v1, :cond_16

    .line 181
    check-cast v0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    invoke-static {p0, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->callUp(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V

    goto :goto_16

    :cond_2a
    return-void
.end method

.method public static collectEligible(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 6

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    .line 256
    :try_start_b
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 v2, 0x0

    .line 259
    :goto_11
    invoke-static {v2, p1, p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addEligibleFromTeams(Ljava/util/List;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 260
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getFreeAgents()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addEligibleFromPlayers(Ljava/util/List;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static continentMatches(Lpl/mkrstudio/truefootball3/objects/NationalTeam;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    if-nez p1, :cond_6

    goto :goto_20

    .line 420
    :cond_6
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 421
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_20

    .line 424
    :cond_13
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p0

    .line 425
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_20
    :goto_20
    return v0
.end method

.method private static countHealthy(Ljava/util/List;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 304
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 305
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v2, :cond_18

    .line 306
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v2

    if-nez v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    return v1
.end method

.method public static createTeam(Lpl/mkrstudio/truefootball3/objects/Country;Z)Lpl/mkrstudio/truefootball3/objects/NationalTeam;
    .registers 15

    .line 123
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1b

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " U21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1c

    :cond_1b
    move-object v3, v0

    :goto_1c
    if-nez v0, :cond_21

    .line 125
    const-string v1, ""

    goto :goto_25

    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_25
    move-object v4, v1

    if-eqz p1, :cond_3d

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "U21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_3e

    :cond_3d
    move-object v10, v0

    .line 127
    :goto_3e
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v5, 0x0

    const v7, 0xc350

    const/4 v8, 0x0

    move-object v2, v1

    move-object v11, p0

    invoke-direct/range {v2 .. v12}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;-><init>(Ljava/lang/String;Ljava/lang/String;DIIBLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Country;Z)V

    .line 128
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setCountryCode(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setU21(Z)V

    const/16 v0, 0x190

    .line 132
    :try_start_55
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_60

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    add-int/2addr v0, p0

    goto :goto_61

    :catch_60
    nop

    :goto_61
    if-eqz p1, :cond_67

    mul-int/lit8 v0, v0, 0x3

    .line 136
    div-int/lit8 v0, v0, 0x4

    :cond_67
    if-gez v0, :cond_6a

    const/4 v0, 0x0

    .line 141
    :cond_6a
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setRankingPoints(I)V

    return-object v1
.end method

.method public static ensure(Lpl/mkrstudio/truefootball3/objects/World;)V
    .registers 12

    if-nez p0, :cond_3

    return-void

    .line 73
    :cond_3
    sput-object p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    .line 74
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeamsU21()Ljava/util/HashMap;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_14

    return-void

    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 80
    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_67

    .line 81
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Continent;

    if-nez v5, :cond_26

    goto :goto_64

    .line 85
    :cond_26
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2d

    goto :goto_64

    :cond_2d
    const/4 v7, 0x0

    .line 89
    :goto_2e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_64

    .line 90
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Country;

    if-eqz v8, :cond_61

    .line 91
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_43

    goto :goto_61

    .line 94
    :cond_43
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v9

    .line 95
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_54

    .line 96
    invoke-static {v8, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->createTeam(Lpl/mkrstudio/truefootball3/objects/Country;Z)Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_54
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_61

    .line 99
    invoke-static {v8, v6}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->createTeam(Lpl/mkrstudio/truefootball3/objects/Country;Z)Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    :goto_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_64
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 103
    :cond_67
    invoke-static {p0, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->callUpAll(Lpl/mkrstudio/truefootball3/objects/World;Z)V

    .line 104
    invoke-static {p0, v6}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->callUpAll(Lpl/mkrstudio/truefootball3/objects/World;Z)V

    .line 105
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->updateRankings(Lpl/mkrstudio/truefootball3/objects/World;)V

    return-void
.end method

.method public static ensureFromUserData(Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 113
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 115
    invoke-static {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->ensure(Lpl/mkrstudio/truefootball3/objects/World;)V

    .line 117
    :cond_c
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object p0

    sput-object p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastCompetitions:Lpl/mkrstudio/truefootball3/objects/Competitions;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

.method private static finalsAlreadyStarted(Lpl/mkrstudio/truefootball3/objects/Competition;)Z
    .registers 6

    const/4 v0, 0x0

    .line 542
    :try_start_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->weeks:Ljava/util/List;

    if-nez v1, :cond_10

    goto :goto_51

    .line 545
    :cond_10
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object p0

    iget-object p0, p0, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->weeks:Ljava/util/List;

    const/4 v1, 0x0

    .line 546
    :goto_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 547
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    if-eqz v2, :cond_4e

    .line 548
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2c

    goto :goto_4e

    :cond_2c
    const/4 v3, 0x0

    .line 551
    :goto_2d
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4e

    .line 552
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz v4, :cond_4b

    .line 553
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_51

    if-ltz v4, :cond_4b

    const/4 p0, 0x1

    return p0

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_51
    :cond_51
    :goto_51
    return v0
.end method

.method public static getLastWorld()Lpl/mkrstudio/truefootball3/objects/World;
    .registers 1

    .line 36
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    return-object v0
.end method

.method public static idOf(Lpl/mkrstudio/truefootball3/objects/Competition;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    .line 454
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 457
    :cond_9
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEligible(Lpl/mkrstudio/truefootball3/objects/Player;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    if-nez p1, :cond_6

    goto :goto_20

    .line 190
    :cond_6
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_20

    :cond_13
    if-eqz p2, :cond_1e

    .line 194
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result p0

    const/16 p1, 0x15

    if-le p0, p1, :cond_1e

    return v0

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v0
.end method

.method public static isFinalsId(Ljava/lang/String;)Z
    .registers 2

    .line 55
    const-string v0, "NTWCF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "NTEUR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "NTU2F"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static isGoalkeeper(Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 317
    :cond_4
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v1, v2, :cond_14

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p0, v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static isNationalId(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 47
    :cond_4
    const-string v1, "NT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static isQualifierId(Ljava/lang/String;)Z
    .registers 2

    .line 51
    const-string v0, "NTWCQ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "NTEUQ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "NTU2Q"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static isU21Id(Ljava/lang/String;)Z
    .registers 2

    .line 59
    const-string v0, "NTU2Q"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "NTU2F"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static missingNationalIds(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/ArrayList;
    .registers 5

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_c

    .line 161
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 163
    :goto_d
    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->allIds()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 164
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_27

    if-eqz p0, :cond_1f

    .line 165
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 166
    :cond_1f
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_27
    return-object v0
.end method

.method public static nationalStatCounts(Lpl/mkrstudio/truefootball3/objects/Player;)[I
    .registers 7

    if-nez p0, :cond_9

    const/4 p0, 0x6

    .line 737
    new-array p0, p0, [I

    fill-array-data p0, :array_26

    return-object p0

    .line 740
    :cond_9
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalApps()I

    move-result v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalGoals()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalAssists()I

    move-result v2

    .line 741
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalAppsU21()I

    move-result v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalGoalsU21()I

    move-result v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalAssistsU21()I

    move-result v5

    filled-new-array/range {v0 .. v5}, [I

    move-result-object p0

    return-object p0

    :array_26
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static pad(Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;)V
    .registers 8

    .line 430
    invoke-static {p3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isU21Id(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 431
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeamsU21()Ljava/util/HashMap;

    move-result-object p2

    goto :goto_f

    .line 433
    :cond_b
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p2

    :goto_f
    if-nez p2, :cond_12

    return-void

    .line 438
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 439
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;

    invoke-direct {p2}, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;-><init>()V

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p2, 0x0

    .line 440
    :goto_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_62

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_62

    .line 441
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 442
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 443
    const-string v2, "NTEUQ"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "NTEUR"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 444
    :cond_4c
    instance-of v2, v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v2, :cond_5c

    move-object v2, v1

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    const-string v3, "europe"

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->continentMatches(Lpl/mkrstudio/truefootball3/objects/NationalTeam;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_5f

    .line 448
    :cond_5c
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_62
    return-void
.end method

.method private static pickSource(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;)Ljava/util/List;
    .registers 7

    .line 355
    const-string v0, "NTWCF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_21

    .line 356
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getQualifiedWc()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 357
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_18

    return-object p1

    .line 360
    :cond_18
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 362
    :cond_21
    const-string v0, "NTEUR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "europe"

    if-eqz v0, :cond_41

    .line 363
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getQualifiedEuro()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_38

    return-object p1

    .line 367
    :cond_38
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 369
    :cond_41
    const-string v0, "NTU2F"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 370
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getQualifiedU21()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 371
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_56

    return-object p1

    .line 374
    :cond_56
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeamsU21()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 376
    :cond_5f
    const-string v0, "NTWCQ"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x10

    if-eqz v0, :cond_72

    .line 377
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v4, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 379
    :cond_72
    const-string v0, "NTEUQ"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 380
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v4, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 382
    :cond_83
    const-string v0, "NTU2Q"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 383
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeamsU21()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v4, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 385
    :cond_94
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static prepareMatchLineups(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .registers 3

    .line 613
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastSelBackup:Ljava/util/IdentityHashMap;

    if-nez p0, :cond_a

    return-void

    .line 617
    :cond_a
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    .line 618
    invoke-static {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->idOf(Lpl/mkrstudio/truefootball3/objects/Competition;)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isNationalId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 622
    :cond_19
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    if-eqz v0, :cond_43

    .line 623
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    instance-of v0, v0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v0, :cond_30

    .line 624
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->callUp(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V

    .line 626
    :cond_30
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    instance-of v0, v0, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v0, :cond_43

    .line 627
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->callUp(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V

    .line 630
    :cond_43
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastSelBackup:Ljava/util/IdentityHashMap;

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->prepareTeam(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/IdentityHashMap;)V

    .line 631
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    sget-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastSelBackup:Ljava/util/IdentityHashMap;

    invoke-static {p0, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->prepareTeam(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/IdentityHashMap;)V

    return-void
.end method

.method public static prepareTeam(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/IdentityHashMap;)V
    .registers 7

    if-eqz p0, :cond_b1

    if-nez p1, :cond_6

    goto/16 :goto_b1

    .line 643
    :cond_6
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b1

    .line 644
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_b1

    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 647
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 648
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez v2, :cond_25

    goto :goto_3a

    .line 652
    :cond_25
    invoke-virtual {p1, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 653
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    const/4 v3, -0x1

    .line 655
    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 657
    :cond_3d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 659
    :goto_48
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 660
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez v3, :cond_57

    goto :goto_64

    .line 664
    :cond_57
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 665
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 667
    :cond_61
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 670
    :cond_67
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 671
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 673
    :goto_70
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_91

    .line 674
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 675
    invoke-static {v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isGoalkeeper(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v2

    if-gez v2, :cond_8e

    int-to-byte p1, v0

    .line 676
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    const/4 p1, 0x1

    goto :goto_92

    :cond_8e
    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    :cond_91
    const/4 p1, 0x0

    .line 681
    :goto_92
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b1

    const/16 v1, 0xb

    if-ge p1, v1, :cond_b1

    .line 682
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 683
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v2

    if-gez v2, :cond_ae

    int-to-byte v2, p1

    .line 684
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    add-int/lit8 p1, p1, 0x1

    :cond_ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    :cond_b1
    :goto_b1
    return-void
.end method

.method public static queueNationalIds(Ljava/util/List;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 149
    :cond_3
    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->allIds()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 151
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 152
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    return-void
.end method

.method private static rankMap(Ljava/util/HashMap;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 600
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 601
    new-instance p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    .line 602
    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_34

    .line 603
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 604
    instance-of v2, v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v2, :cond_31

    .line 605
    check-cast v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    .line 606
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getRankingPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setPreviousPosition(I)V

    add-int/lit8 v2, p0, 0x1

    .line 607
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->setRankingPosition(I)V

    :cond_31
    add-int/lit8 p0, p0, 0x1

    goto :goto_15

    :cond_34
    return-void
.end method

.method public static rankingRows(Lpl/mkrstudio/truefootball3/objects/World;)Ljava/util/ArrayList;
    .registers 4

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 750
    :cond_8
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->ensure(Lpl/mkrstudio/truefootball3/objects/World;)V

    .line 751
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 752
    new-instance p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    .line 753
    :goto_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_31

    .line 754
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    :cond_31
    return-object v0
.end method

.method public static recordChampion(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .registers 4

    if-eqz p1, :cond_45

    .line 564
    instance-of v0, p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-nez v0, :cond_7

    goto :goto_45

    .line 567
    :cond_7
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    .line 568
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->idOf(Lpl/mkrstudio/truefootball3/objects/Competition;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_14

    .line 571
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYear()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-nez v0, :cond_19

    .line 573
    const-string v0, "NT"

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " champion"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 574
    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->addHistory(Ljava/lang/String;)V

    const/16 p0, 0x78

    .line 575
    invoke-static {p1, p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    .line 576
    sget-object p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    if-eqz p0, :cond_45

    .line 577
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->updateRankings(Lpl/mkrstudio/truefootball3/objects/World;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public static recordNationalStat(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;I)V
    .registers 5

    if-eqz p0, :cond_60

    if-eqz p1, :cond_60

    if-nez p3, :cond_7

    goto :goto_60

    .line 709
    :cond_7
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->idOf(Lpl/mkrstudio/truefootball3/objects/Competition;)Ljava/lang/String;

    move-result-object p0

    .line 710
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isNationalId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 713
    :cond_12
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isU21Id(Ljava/lang/String;)Z

    move-result p0

    if-nez p2, :cond_2c

    if-eqz p0, :cond_23

    .line 716
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalAppsU21()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationalAppsU21(I)V

    goto :goto_60

    .line 718
    :cond_23
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalApps()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationalApps(I)V

    goto :goto_60

    .line 720
    :cond_2c
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq p2, v0, :cond_4d

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, v0, :cond_35

    goto :goto_4d

    .line 726
    :cond_35
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, v0, :cond_60

    if-eqz p0, :cond_44

    .line 728
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalAssistsU21()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationalAssistsU21(I)V

    goto :goto_60

    .line 730
    :cond_44
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalAssists()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationalAssists(I)V

    goto :goto_60

    :cond_4d
    :goto_4d
    if-eqz p0, :cond_58

    .line 722
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalGoalsU21()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationalGoalsU21(I)V

    goto :goto_60

    .line 724
    :cond_58
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationalGoals()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationalGoals(I)V

    :cond_60
    :goto_60
    return-void
.end method

.method public static recordQualifiersAndApply(Lpl/mkrstudio/truefootball3/objects/Competition;Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .registers 10

    if-eqz p0, :cond_79

    if-nez p1, :cond_6

    goto/16 :goto_79

    .line 464
    :cond_6
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->idOf(Lpl/mkrstudio/truefootball3/objects/Competition;)Ljava/lang/String;

    move-result-object p0

    .line 465
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->isQualifierId(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11

    return-void

    .line 468
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_19

    return-void

    .line 471
    :cond_19
    sget-object p2, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    if-nez p2, :cond_1e

    return-void

    .line 475
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    .line 476
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v1, :cond_3b

    .line 478
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 481
    :cond_3b
    const-string p1, "NTWCQ"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 482
    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->setQualifiedWc(Ljava/util/ArrayList;)V

    .line 483
    const-string p0, "NTWCF"

    goto :goto_5c

    .line 484
    :cond_49
    const-string p1, "NTEUQ"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 485
    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->setQualifiedEuro(Ljava/util/ArrayList;)V

    .line 486
    const-string p0, "NTEUR"

    goto :goto_5c

    .line 488
    :cond_57
    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->setQualifiedU21(Ljava/util/ArrayList;)V

    .line 489
    const-string p0, "NTU2F"

    :goto_5c
    if-eqz p3, :cond_5f

    goto :goto_61

    .line 491
    :cond_5f
    sget-object p3, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastCompetitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    :goto_61
    invoke-static {p3, p0, v0, p4}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->applyToFinals(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 492
    :goto_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_76

    .line 493
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x28

    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 495
    :cond_76
    invoke-static {p2}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->updateRankings(Lpl/mkrstudio/truefootball3/objects/World;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public static restoreLineups(Ljava/util/IdentityHashMap;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 694
    :cond_3
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 695
    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 696
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 697
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 698
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 700
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    goto :goto_b

    :cond_2f
    return-void
.end method

.method public static restoreMatchLineups()V
    .registers 1

    .line 635
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastSelBackup:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->restoreLineups(Ljava/util/IdentityHashMap;)V

    const/4 v0, 0x0

    .line 636
    sput-object v0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastSelBackup:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static setLastWorld(Lpl/mkrstudio/truefootball3/objects/World;)V
    .registers 1

    .line 40
    sput-object p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->lastWorld:Lpl/mkrstudio/truefootball3/objects/World;

    return-void
.end method

.method public static topN(Ljava/util/HashMap;ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 393
    :cond_8
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 394
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 395
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 396
    instance-of v2, v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-nez v2, :cond_1f

    goto :goto_10

    .line 399
    :cond_1f
    check-cast v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz p2, :cond_2a

    .line 400
    invoke-static {v1, p2}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->continentMatches(Lpl/mkrstudio/truefootball3/objects/NationalTeam;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_10

    .line 403
    :cond_2a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 405
    :cond_2e
    new-instance p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, p1, :cond_4f

    .line 407
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_42
    if-ge p2, p1, :cond_4e

    .line 409
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_42

    :cond_4e
    return-object p0

    :cond_4f
    return-object v0
.end method

.method public static updateRankings(Lpl/mkrstudio/truefootball3/objects/World;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 592
    :cond_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->rankMap(Ljava/util/HashMap;)V

    .line 593
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeamsU21()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->rankMap(Ljava/util/HashMap;)V

    return-void
.end method
