.class public Lpl/mkrstudio/truefootball3/objects/AI;
.super Ljava/lang/Object;
.source "AI.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChanceForBuyingPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Competition;)I
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "team",
            "chosenTeam",
            "competition"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 93
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const/16 v10, 0x19

    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const/4 v15, 0x4

    const-wide/high16 v16, 0x401e000000000000L    # 7.5

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    if-eq v2, v3, :cond_8

    .line 94
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v20, v2, v18

    if-lez v20, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v15, v2, v16

    if-lez v15, :cond_2

    const/16 v10, 0x8

    goto/16 :goto_1

    .line 96
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v15, v2, v13

    if-lez v15, :cond_3

    goto/16 :goto_1

    .line 97
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v10, v2, v11

    if-lez v10, :cond_4

    const/16 v10, 0x28

    goto/16 :goto_1

    .line 98
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v10, v2, v8

    if-lez v10, :cond_5

    const/16 v10, 0x46

    goto/16 :goto_1

    .line 99
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v8, v2, v6

    if-lez v8, :cond_6

    const/16 v10, 0x64

    goto :goto_1

    .line 100
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_7

    const/16 v10, 0x82

    goto :goto_1

    :cond_7
    const/16 v10, 0x1f4

    goto :goto_1

    .line 103
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v20, v2, v18

    if-lez v20, :cond_9

    :goto_0
    const/4 v10, 0x4

    goto :goto_1

    .line 104
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v15, v2, v16

    if-lez v15, :cond_a

    const/4 v10, 0x6

    goto :goto_1

    .line 105
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v15, v2, v13

    if-lez v15, :cond_b

    const/16 v10, 0xf

    goto :goto_1

    .line 106
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v13, v2, v11

    if-lez v13, :cond_c

    goto :goto_1

    .line 107
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v10, v2, v8

    if-lez v10, :cond_d

    const/16 v10, 0x1e

    goto :goto_1

    .line 108
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v8, v2, v6

    if-lez v8, :cond_e

    const/16 v10, 0x32

    goto :goto_1

    .line 109
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_f

    const/16 v10, 0x4b

    goto :goto_1

    :cond_f
    const/16 v10, 0x12c

    .line 112
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    cmpl-double v5, v1, v3

    if-lez v5, :cond_10

    const/16 v10, 0x3e8

    :cond_10
    if-eqz p3, :cond_11

    .line 113
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    div-int/lit8 v10, v10, 0x2

    .line 114
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_12

    div-int/lit8 v10, v10, 0x2

    :cond_12
    return v10
.end method

.method private makeTransfer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "team",
            "chosenTeam",
            "transfers",
            "time"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 51
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v4, p1, :cond_1

    if-eq v4, p2, :cond_1

    .line 53
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x16

    if-le v5, v6, :cond_1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_1

    .line 54
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    .line 56
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 62
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 65
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    if-ne v5, v6, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    .line 66
    :goto_2
    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 70
    :cond_5
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 71
    invoke-virtual {p3, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->changedClubThisWindow(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 73
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v5

    invoke-virtual {v5, p4}, Lpl/mkrstudio/truefootball3/objects/Contract;->renew(Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 74
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v5

    invoke-virtual {v5, p1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 75
    invoke-virtual {v3, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 76
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-direct {v5}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>()V

    .line 79
    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 80
    invoke-virtual {v5, v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 81
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setFromLastSevenDays(Z)V

    .line 82
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransfersMadeThisWindow()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private makeTransfers(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Competitions;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "time",
            "chosenTeam",
            "transfers",
            "competitions"
        }
    .end annotation

    .line 27
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 28
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_1
    new-instance p5, Ljava/util/Random;

    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    .line 34
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 35
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 36
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v3, p3, :cond_4

    .line 38
    invoke-direct {p0, v3, p3, v0}, Lpl/mkrstudio/truefootball3/objects/AI;->getChanceForBuyingPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Competition;)I

    move-result v4

    .line 39
    invoke-virtual {p5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 40
    invoke-direct {p0, v3, p3, p4, p2}, Lpl/mkrstudio/truefootball3/objects/AI;->makeTransfer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "cType"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 120
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    const/16 v4, 0xb

    if-ge v1, v4, :cond_4

    .line 125
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 126
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v7

    if-ne v7, v2, :cond_1

    .line 127
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v7

    if-le v7, v5, :cond_1

    .line 128
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v6, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v5

    move-object v3, v6

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    int-to-byte v4, v1

    .line 134
    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x7

    if-ge v1, v4, :cond_8

    .line 139
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v3

    const/4 v6, 0x0

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 140
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v8

    if-ne v8, v2, :cond_5

    .line 141
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v8

    if-le v8, v6, :cond_5

    .line 142
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v6

    move-object v5, v7

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    add-int/lit8 v4, v1, 0xb

    int-to-byte v4, v4

    .line 148
    invoke-virtual {v5, v4}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Competitions;)V
    .locals 6
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
            "inbox",
            "world",
            "time",
            "chosenTeam",
            "transfers",
            "competitions"
        }
    .end annotation

    .line 16
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 17
    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/AI;->makeTransfers(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Competitions;)V

    .line 18
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p2

    const/4 p4, 0x6

    invoke-virtual {p2, p4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p2

    rem-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    .line 19
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransfersMadeThisWindow()Ljava/util/List;

    move-result-object p3

    invoke-static {p2, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLastTransfersArticle(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransfersMadeThisWindow()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransfersMadeThisWindow()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    :goto_0
    return-void
.end method
