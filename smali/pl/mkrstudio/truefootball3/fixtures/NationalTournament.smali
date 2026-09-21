.class public Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;
.super Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
.source "NationalTournament.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private group0:Ljava/util/ArrayList;

.field private group1:Ljava/util/ArrayList;

.field private group2:Ljava/util/ArrayList;

.field private group3:Ljava/util/ArrayList;

.field private groupCount:I

.field private groupsFinished:Z

.field private knockoutOnly:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>()V

    .line 34
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->initGroups()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .registers 5

    .line 38
    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    .line 39
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->initGroups()V

    const/4 p2, 0x1

    .line 41
    invoke-direct {p0, p1, p4, p2}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->setup(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Z)V

    return-void
.end method

.method private addTopN(Ljava/util/List;ILjava/util/ArrayList;)V
    .registers 6

    .line 376
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->sortGroup(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_17

    .line 377
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 378
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method private advanceKnockout(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;)V
    .registers 24

    move-object v11, p0

    move/from16 v0, p1

    move-object/from16 v12, p2

    .line 299
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    if-eqz v1, :cond_b9

    .line 300
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TableType;->KO_ONE_MATCH:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-eq v2, v3, :cond_19

    goto/16 :goto_b9

    .line 303
    :cond_19
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_20

    return-void

    :cond_20
    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 306
    :goto_22
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 307
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 308
    invoke-static {v3}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->loserOf(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    .line 309
    invoke-static {v3}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->winnerOf(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-eqz v3, :cond_45

    const/16 v5, 0x14

    .line 311
    invoke-static {v3, v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    :cond_45
    if-eqz v4, :cond_61

    if-eqz v12, :cond_61

    .line 314
    invoke-interface {v12, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    iget-object v3, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    if-eqz v3, :cond_61

    iget-object v3, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 316
    iget-object v3, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_64
    if-nez v0, :cond_7a

    if-eqz v12, :cond_7a

    .line 320
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_7a

    .line 321
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    invoke-static {v1, v12, v0, v4, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordQualifiersAndApply(Lpl/mkrstudio/truefootball3/objects/Competition;Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_7e

    :cond_7a
    move-object/from16 v4, p3

    move-object/from16 v3, p4

    :goto_7e
    const/4 v14, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 324
    iget-object v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a6

    if-eqz v12, :cond_a6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    .line 325
    invoke-direct/range {v0 .. v10}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->pairKnockout(Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V

    :cond_a6
    if-eqz v12, :cond_b9

    .line 327
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v14, :cond_b9

    .line 328
    iget-object v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordChampion(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Team;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method private awardGroupMatchPoints(I)V
    .registers 6

    .line 182
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    if-eqz v0, :cond_5c

    if-ltz p1, :cond_5c

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_f

    goto :goto_5c

    .line 185
    :cond_f
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    if-eqz p1, :cond_5c

    .line 186
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_5c

    :cond_20
    const/4 v0, 0x0

    .line 189
    :goto_21
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 190
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz v1, :cond_59

    .line 191
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v2

    if-gez v2, :cond_3e

    goto :goto_59

    .line 194
    :cond_3e
    invoke-static {v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->winnerOf(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eqz v2, :cond_4a

    const/16 v1, 0xc

    .line 196
    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    goto :goto_59

    .line 198
    :cond_4a
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    .line 199
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-static {v1, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_5c
    :goto_5c
    return-void
.end method

.method private clearWeekMatches()V
    .registers 4

    .line 65
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 68
    :goto_6
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 69
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    if-eqz v1, :cond_25

    .line 70
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 71
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_28
    return-void
.end method

.method private dealGroups(Ljava/util/List;I)V
    .registers 7

    .line 97
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 101
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 103
    rem-int v2, v0, p2

    if-nez v2, :cond_29

    .line 105
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_29
    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 107
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group1:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_32
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    .line 109
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 111
    :cond_3b
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group3:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_43
    return-void
.end method

.method private finishGroups(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .registers 21

    move-object v0, p0

    move-object v2, p1

    .line 146
    iget v1, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-lt v1, v3, :cond_2c

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v4, v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->addTopN(Ljava/util/List;ILjava/util/ArrayList;)V

    .line 149
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group1:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v4, v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->addTopN(Ljava/util/List;ILjava/util/ArrayList;)V

    .line 150
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group2:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v4, v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->addTopN(Ljava/util/List;ILjava/util/ArrayList;)V

    .line 151
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group3:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v4, v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->addTopN(Ljava/util/List;ILjava/util/ArrayList;)V

    .line 152
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    const/4 v3, 0x0

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-static {v2, v1, v3, p2, v6}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordQualifiersAndApply(Lpl/mkrstudio/truefootball3/objects/Competition;Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto/16 :goto_99

    :cond_2c
    move-object v5, p2

    move-object/from16 v6, p3

    if-ne v1, v4, :cond_99

    .line 154
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->tableWinner(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    .line 155
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group1:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->tableWinner(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 156
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->tableSecond(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v11

    .line 157
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group1:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->tableSecond(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v12

    const/16 v4, 0x3c

    if-eqz v1, :cond_50

    .line 159
    invoke-static {v1, v4}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    :cond_50
    if-eqz v3, :cond_55

    .line 162
    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    .line 164
    :cond_55
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x3

    if-le v4, v7, :cond_8d

    if-eqz v1, :cond_8d

    if-eqz v3, :cond_8d

    if-eqz v2, :cond_8d

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 166
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    if-lez v4, :cond_8d

    if-lez v8, :cond_8d

    .line 168
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    move-object v2, p1

    move v3, v4

    move v4, v8

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 169
    invoke-virtual/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    :cond_8d
    const/16 v1, 0x19

    if-eqz v11, :cond_94

    .line 173
    invoke-static {v11, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    :cond_94
    if-eqz v12, :cond_99

    .line 176
    invoke-static {v12, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    :cond_99
    :goto_99
    return-void
.end method

.method private gdFor(Lpl/mkrstudio/truefootball3/objects/Team;)I
    .registers 4

    .line 440
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->recordFor(Lpl/mkrstudio/truefootball3/objects/Team;)[I

    move-result-object p1

    const/4 v0, 0x3

    .line 441
    aget v0, p1, v0

    const/4 v1, 0x4

    aget p1, p1, v1

    sub-int/2addr v0, p1

    return v0
.end method

.method private gfFor(Lpl/mkrstudio/truefootball3/objects/Team;)I
    .registers 3

    .line 445
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->recordFor(Lpl/mkrstudio/truefootball3/objects/Team;)[I

    move-result-object p1

    const/4 v0, 0x3

    aget p1, p1, v0

    return p1
.end method

.method private initGroups()V
    .registers 2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group1:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group2:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group3:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    .line 50
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->knockoutOnly:Z

    .line 51
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupsFinished:Z

    return-void
.end method

.method public static loserOf(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Team;
    .registers 3

    .line 354
    invoke-static {p0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->winnerOf(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v0, :cond_19

    if-nez p0, :cond_9

    goto :goto_19

    .line 358
    :cond_9
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 359
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    return-object p0

    .line 361
    :cond_14
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private pairKnockout(Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v1, p2

    if-eqz v11, :cond_51

    .line 281
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    if-eqz v2, :cond_51

    if-ltz v1, :cond_51

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_17

    goto :goto_51

    .line 284
    :cond_17
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 285
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v1, 0x2

    if-ge v13, v1, :cond_28

    return-void

    :cond_28
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_2a
    add-int/lit8 v3, v14, 0x1

    if-ge v3, v13, :cond_51

    if-eqz p10, :cond_38

    add-int/lit8 v1, v14, 0x2

    move-object/from16 v15, p3

    .line 291
    invoke-virtual {v12, v11, v3, v1, v15}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_4e

    :cond_38
    move-object/from16 v15, p3

    add-int/lit8 v4, v14, 0x2

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 293
    invoke-virtual/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    :goto_4e
    add-int/lit8 v14, v14, 0x2

    goto :goto_2a

    :cond_51
    :goto_51
    return-void
.end method

.method private pointsFor(Lpl/mkrstudio/truefootball3/objects/Team;)I
    .registers 4

    .line 433
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->recordFor(Lpl/mkrstudio/truefootball3/objects/Team;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 434
    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    .line 435
    aget p1, p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private recordFor(Lpl/mkrstudio/truefootball3/objects/Team;)[I
    .registers 16

    .line 450
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_9f

    if-nez p1, :cond_9

    goto/16 :goto_9f

    .line 453
    :cond_9
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupsFinished:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_16
    if-le v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v0

    :goto_1a
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_20
    if-ge v0, v2, :cond_9a

    .line 457
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_9a

    .line 458
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    if-eqz v8, :cond_97

    .line 459
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_3b

    goto :goto_97

    :cond_3b
    const/4 v9, 0x0

    .line 462
    :goto_3c
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_97

    .line 463
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz v10, :cond_94

    .line 464
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v11

    if-gez v11, :cond_59

    goto :goto_94

    .line 467
    :cond_59
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v11

    const/4 v12, 0x1

    if-ne v11, p1, :cond_62

    const/4 v11, 0x1

    goto :goto_63

    :cond_62
    const/4 v11, 0x0

    .line 468
    :goto_63
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v13

    if-ne v13, p1, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v12, 0x0

    :goto_6b
    if-nez v11, :cond_70

    if-nez v12, :cond_70

    goto :goto_94

    :cond_70
    if-eqz v11, :cond_77

    .line 472
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v12

    goto :goto_7b

    :cond_77
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v12

    :goto_7b
    if-eqz v11, :cond_82

    .line 473
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    goto :goto_86

    :cond_82
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v10

    :goto_86
    add-int/2addr v6, v12

    add-int/2addr v7, v10

    if-le v12, v10, :cond_8d

    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    :cond_8d
    if-ge v12, v10, :cond_92

    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    :cond_92
    add-int/lit8 v4, v4, 0x1

    :cond_94
    :goto_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_97
    :goto_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 485
    :cond_9a
    filled-new-array {v3, v4, v5, v6, v7}, [I

    move-result-object p1

    return-object p1

    .line 451
    :cond_9f
    :goto_9f
    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object p1

    return-object p1
.end method

.method static roundRobinPairs(II)[[I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge p0, v2, :cond_14

    .line 248
    new-array p0, v2, [I

    aput v1, p0, v0

    aput v1, p0, v1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0

    :cond_14
    if-ne p0, v2, :cond_30

    if-nez p1, :cond_21

    .line 252
    new-array p0, v0, [[I

    filled-new-array {v1, v0}, [I

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    .line 254
    :cond_21
    new-array p0, v2, [I

    aput v1, p0, v0

    aput v1, p0, v1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0

    :cond_30
    const/4 v3, 0x3

    if-ne p0, v3, :cond_63

    if-nez p1, :cond_3e

    .line 258
    new-array p0, v0, [[I

    filled-new-array {v1, v0}, [I

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    :cond_3e
    if-ne p1, v0, :cond_49

    .line 261
    new-array p0, v0, [[I

    filled-new-array {v1, v2}, [I

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    :cond_49
    if-ne p1, v2, :cond_54

    .line 264
    new-array p0, v0, [[I

    filled-new-array {v0, v2}, [I

    move-result-object p1

    aput-object p1, p0, v1

    return-object p0

    .line 266
    :cond_54
    new-array p0, v2, [I

    aput v1, p0, v0

    aput v1, p0, v1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0

    :cond_63
    if-nez p1, :cond_74

    .line 269
    new-array p0, v2, [[I

    filled-new-array {v1, v0}, [I

    move-result-object p1

    aput-object p1, p0, v1

    filled-new-array {v2, v3}, [I

    move-result-object p1

    aput-object p1, p0, v0

    return-object p0

    :cond_74
    if-ne p1, v0, :cond_85

    .line 272
    new-array p0, v2, [[I

    filled-new-array {v1, v2}, [I

    move-result-object p1

    aput-object p1, p0, v1

    filled-new-array {v0, v3}, [I

    move-result-object p1

    aput-object p1, p0, v0

    return-object p0

    :cond_85
    if-ne p1, v2, :cond_96

    .line 275
    new-array p0, v2, [[I

    filled-new-array {v1, v3}, [I

    move-result-object p1

    aput-object p1, p0, v1

    filled-new-array {v0, v2}, [I

    move-result-object p1

    aput-object p1, p0, v0

    return-object p0

    .line 277
    :cond_96
    new-array p0, v2, [I

    aput v1, p0, v0

    aput v1, p0, v1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method private scheduleGroupMatchday(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V
    .registers 24

    move-object v11, p0

    move v12, p1

    .line 205
    iget-object v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    if-eqz v0, :cond_4c

    if-ltz v12, :cond_4c

    iget-object v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v12, v0, :cond_11

    goto :goto_4c

    .line 208
    :cond_11
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleOneGroup(Ljava/util/List;ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Z)V

    .line 209
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group1:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v10}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleOneGroup(Ljava/util/List;ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Z)V

    .line 210
    iget v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4c

    .line 211
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group2:Ljava/util/ArrayList;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleOneGroup(Ljava/util/List;ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Z)V

    .line 212
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group3:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v10}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleOneGroup(Ljava/util/List;ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Z)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private scheduleOneGroup(Ljava/util/List;ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Z)V
    .registers 28

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v11, p3

    if-eqz v0, :cond_88

    .line 217
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_11

    goto/16 :goto_88

    .line 220
    :cond_11
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->roundRobinPairs(II)[[I

    move-result-object v12

    if-nez v12, :cond_1c

    return-void

    :cond_1c
    move-object/from16 v13, p0

    .line 224
    iget-object v2, v13, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Week;

    const/4 v15, 0x0

    const/4 v10, 0x0

    .line 225
    :goto_29
    array-length v1, v12

    if-ge v10, v1, :cond_87

    .line 226
    aget-object v1, v12, v10

    aget v2, v1, v15

    const/4 v3, 0x1

    .line 227
    aget v1, v1, v3

    if-ltz v2, :cond_82

    if-ltz v1, :cond_82

    .line 228
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_82

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_44

    goto :goto_82

    .line 231
    :cond_44
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 233
    invoke-interface {v11, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    .line 234
    invoke-interface {v11, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    if-lez v4, :cond_82

    if-gtz v5, :cond_61

    goto :goto_82

    :cond_61
    if-eqz p10, :cond_69

    move-object/from16 v9, p4

    .line 239
    invoke-virtual {v14, v11, v4, v5, v9}, Lpl/mkrstudio/truefootball3/objects/Week;->addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_82

    :cond_69
    move-object/from16 v9, p4

    move-object v1, v14

    move-object/from16 v2, p3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v16, v10

    move-object/from16 v10, p9

    .line 241
    invoke-virtual/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/objects/Week;->addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    goto :goto_84

    :cond_82
    :goto_82
    move/from16 v16, v10

    :goto_84
    add-int/lit8 v10, v16, 0x1

    goto :goto_29

    :cond_87
    return-void

    :cond_88
    :goto_88
    move-object/from16 v13, p0

    return-void
.end method

.method private setup(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Z)V
    .registers 16

    if-eqz p1, :cond_58

    .line 77
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_58

    .line 80
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2c

    const/4 v0, 0x4

    .line 82
    iput v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    .line 83
    invoke-direct {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->dealGroups(Ljava/util/List;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v11, p3

    .line 84
    invoke-direct/range {v1 .. v11}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleGroupMatchday(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V

    goto :goto_58

    :cond_2c
    const/4 v1, 0x6

    if-lt v0, v1, :cond_44

    const/4 v0, 0x2

    .line 86
    iput v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    .line 87
    invoke-direct {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->dealGroups(Ljava/util/List;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v11, p3

    .line 88
    invoke-direct/range {v1 .. v11}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleGroupMatchday(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V

    goto :goto_58

    :cond_44
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->knockoutOnly:Z

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v11, p3

    .line 92
    invoke-direct/range {v1 .. v11}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->pairKnockout(Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V

    :cond_58
    :goto_58
    return-void
.end method

.method private tableSecond(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;
    .registers 4

    .line 391
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->sortGroup(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    const/4 v0, 0x1

    .line 395
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    return-object p1
.end method

.method private tableWinner(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Team;
    .registers 3

    .line 383
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->sortGroup(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    const/4 v0, 0x0

    .line 387
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    return-object p1
.end method

.method public static winnerOf(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Team;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 336
    :cond_4
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v1

    .line 337
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    if-le v1, v2, :cond_13

    .line 339
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    return-object p0

    :cond_13
    if-le v2, v1, :cond_1a

    .line 342
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    return-object p0

    .line 344
    :cond_1a
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 345
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    return-object p0

    .line 347
    :cond_25
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 348
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    return-object p0

    :cond_30
    return-object v0
.end method

.method private winnerOfWeek(I)Lpl/mkrstudio/truefootball3/objects/Team;
    .registers 4

    .line 365
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    goto :goto_39

    .line 368
    :cond_e
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Week;

    if-eqz p1, :cond_39

    .line 369
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_39

    .line 372
    :cond_29
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->winnerOf(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    return-object p1

    :cond_39
    :goto_39
    return-object v1
.end method


# virtual methods
.method public getGroup0()Ljava/util/ArrayList;
    .registers 2

    .line 497
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->group0:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .line 489
    iget v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    return v0
.end method

.method public isKnockoutOnly()Z
    .registers 2

    .line 493
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->knockoutOnly:Z

    return v0
.end method

.method public rebuildFromTeams(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .registers 4

    .line 55
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->clearWeekMatches()V

    .line 60
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->initGroups()V

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, v0, p1, v1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->setup(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Z)V

    return-void
.end method

.method sortGroup(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 13

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 403
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v3, :cond_42

    .line 404
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 405
    invoke-direct {p0, v3}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->pointsFor(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->gdFor(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->gfFor(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v1

    aput-object v7, v10, v6

    aput-object v8, v10, v5

    aput-object v9, v10, v4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_42
    const/4 p1, 0x0

    .line 407
    :goto_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_a2

    add-int/lit8 v2, p1, 0x1

    move v3, v2

    .line 408
    :goto_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_a0

    .line 409
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 410
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 411
    aget-object v9, v8, v6

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v10, v7, v6

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v9, v10

    if-nez v9, :cond_82

    .line 413
    aget-object v9, v8, v5

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v10, v7, v5

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v9, v10

    :cond_82
    if-nez v9, :cond_95

    .line 416
    aget-object v9, v8, v4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v10, v7, v4

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v9, v10

    :cond_95
    if-lez v9, :cond_9d

    .line 419
    invoke-virtual {v0, p1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_a0
    move p1, v2

    goto :goto_43

    .line 424
    :cond_a2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 425
    :goto_a8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_bc

    .line 426
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_bc
    return-object p1
.end method

.method public update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .registers 23

    move-object v11, p0

    move v12, p1

    .line 117
    iget-object v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    if-eqz v0, :cond_80

    iget-object v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->weeks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v12, :cond_10

    goto/16 :goto_80

    .line 120
    :cond_10
    iget-boolean v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->knockoutOnly:Z

    if-eqz v0, :cond_18

    .line 121
    invoke-direct/range {p0 .. p8}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->advanceKnockout(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;)V

    return-void

    .line 124
    :cond_18
    iget v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupCount:I

    if-lez v0, :cond_69

    iget-boolean v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupsFinished:Z

    if-nez v0, :cond_69

    if-nez v12, :cond_37

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    .line 126
    invoke-direct/range {v0 .. v10}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleGroupMatchday(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V

    goto :goto_65

    :cond_37
    const/4 v0, 0x1

    if-ne v12, v0, :cond_4f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    .line 128
    invoke-direct/range {v0 .. v10}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->scheduleGroupMatchday(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Z)V

    goto :goto_65

    :cond_4f
    const/4 v1, 0x2

    if-ne v12, v1, :cond_65

    .line 130
    iput-boolean v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupsFinished:Z

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    .line 131
    invoke-direct/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->finishGroups(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 133
    :cond_65
    :goto_65
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->awardGroupMatchPoints(I)V

    return-void

    .line 136
    :cond_69
    iget-boolean v0, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->groupsFinished:Z

    if-eqz v0, :cond_80

    const/4 v0, 0x3

    if-ne v12, v0, :cond_80

    .line 137
    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->winnerOfWeek(I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 139
    iget-object v1, v11, Lpl/mkrstudio/truefootball3/fixtures/NationalTournament;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-static {v1, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordChampion(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Team;)V

    const/16 v1, 0x50

    .line 140
    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addRankingPoints(Ljava/lang/Object;I)V

    :cond_80
    :goto_80
    return-void
.end method
