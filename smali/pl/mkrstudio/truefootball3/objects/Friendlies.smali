.class public Lpl/mkrstudio/truefootball3/objects/Friendlies;
.super Ljava/lang/Object;
.source "Friendlies.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x23fdfbf5557e636cL


# instance fields
.field currentFriendlyMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;"
        }
    .end annotation
.end field

.field friendlyOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->currentFriendlyMatches:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    return-void
.end method

.method private answerFriendlyOffers(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inbox",
            "time",
            "chosenTeam",
            "finances"
        }
    .end annotation

    move-object v6, p0

    .line 114
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 116
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    move-object/from16 v10, p3

    if-ne v0, v10, :cond_2

    .line 117
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDaysToResponse()B

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v9, v0}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->setDaysToResponse(B)V

    .line 118
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDaysToResponse()B

    move-result v0

    if-nez v0, :cond_2

    .line 119
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->check()Z

    move-result v0

    .line 120
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildFriendlyOfferMessage(ZLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v11

    if-ne v0, v1, :cond_1

    .line 122
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Match;-><init>()V

    .line 123
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->isHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 125
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 128
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 130
    :goto_1
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setDate(Ljava/lang/String;)V

    .line 131
    iget-object v1, v6, Lpl/mkrstudio/truefootball3/objects/Friendlies;->currentFriendlyMatches:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->isTripAbroad(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v4

    .line 134
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->isTripToOtherContinent(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v5

    .line 136
    new-instance v12, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->isHome()Z

    move-result v3

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateFee(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZZ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-string v2, "friendlyFees"

    invoke-direct {v12, v13, v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_2

    :cond_1
    move-object/from16 v0, p4

    :goto_2
    move-object v1, p1

    .line 138
    invoke-virtual {p1, v11}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 139
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move-object v1, p1

    move-object/from16 v0, p4

    goto/16 :goto_0

    .line 142
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 143
    iget-object v2, v6, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-void
.end method

.method private checkFriendlyOffers()V
    .locals 4

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 59
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDaysToExpire()B

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->setDaysToExpire(B)V

    .line 60
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDaysToExpire()B

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 65
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getChanceForFriendlyOffer(Lpl/mkrstudio/truefootball3/objects/Team;F)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "chosenTeamSkill"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/16 p1, 0x14

    return p1

    .line 108
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_1

    const/16 p1, 0x28

    return p1

    :cond_1
    const p1, 0x186a0

    return p1
.end method

.method private receiveFriendlyOffers(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 17
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
            "world",
            "competitions",
            "inbox",
            "time",
            "chosenTeam",
            "context"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p5

    .line 70
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const/4 v8, 0x5

    .line 71
    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 72
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v10

    .line 75
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 76
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v14, v15, :cond_1

    .line 78
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 79
    invoke-direct {v6, v14, v10}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getChanceForFriendlyOffer(Lpl/mkrstudio/truefootball3/objects/Team;F)I

    move-result v0

    .line 80
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v5, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    .line 82
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    .line 86
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    const/16 v5, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    .line 94
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 96
    invoke-virtual {v7}, Ljava/util/Random;->nextBoolean()Z

    move-result v13

    .line 97
    new-instance v11, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    if-eq v0, v1, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p5

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateFee(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZZ)I

    move-result v12

    move-object v7, v11

    move-object v10, v14

    move-object v0, v11

    move-object/from16 v11, p5

    move-object/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;-><init>(BBLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;IZLjava/lang/String;)V

    .line 98
    iget-object v2, v6, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p6

    invoke-static {v0, v1, v15, v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildFriendlyOfferAwaitingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public acceptOffer(Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendlyOffer"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Match;-><init>()V

    .line 45
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->isHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 47
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 50
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 52
    :goto_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Match;->setDate(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->currentFriendlyMatches:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateFee(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZZ)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "home",
            "abroad",
            "otherContinent"
        }
    .end annotation

    const/16 v0, 0x32

    const/16 v1, 0x1f4

    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    if-eqz p3, :cond_2

    .line 189
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result p3

    float-to-double v6, p3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result p3

    float-to-double v8, p3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v4

    cmpl-double p3, v6, v8

    if-ltz p3, :cond_0

    .line 190
    invoke-virtual {p0, p4, p5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateTripCost(ZZ)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    .line 191
    :cond_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    cmpl-double p1, p2, v4

    if-ltz p1, :cond_1

    .line 192
    invoke-virtual {p0, p4, p5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateTripCost(ZZ)I

    move-result p1

    add-int/lit16 p1, p1, 0xfa

    return p1

    .line 194
    :cond_1
    invoke-virtual {p0, p4, p5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateTripCost(ZZ)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_2
    if-nez p3, :cond_5

    .line 198
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p3

    float-to-double p3, p3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p5

    float-to-double v6, p5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    cmpl-double p5, p3, v6

    if-ltz p5, :cond_3

    return v1

    .line 200
    :cond_3
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p3

    float-to-double p3, p3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p5

    float-to-double v4, p5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    cmpl-double p5, p3, v4

    if-ltz p5, :cond_4

    const/16 p1, 0xc8

    return p1

    .line 202
    :cond_4
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    float-to-double p4, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p4, v1

    cmpl-double p1, p2, p4

    if-ltz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public calculateTripCost(ZZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "abroad",
            "otherContinent"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 p1, 0x1f4

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    if-eqz p2, :cond_1

    const/16 p1, 0x7d0

    :cond_1
    const/16 p2, 0xfa

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x19

    .line 217
    div-int/lit16 p2, p2, 0x3e8

    return p2
.end method

.method checkIfDateIsAvailable(Lpl/mkrstudio/truefootball3/objects/Time;Ljava/lang/String;Ljava/util/List;Ljava/util/GregorianCalendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "date",
            "dates",
            "calendar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/GregorianCalendar;",
            ")V"
        }
    .end annotation

    .line 177
    invoke-static {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p2

    const/4 p4, 0x5

    const/4 v0, -0x2

    .line 178
    invoke-virtual {p2, p4, v0}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p2, p4, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 181
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;
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
            "competitions",
            "team1",
            "team2",
            "time",
            "days"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {p4, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p5, :cond_0

    const/4 v4, 0x1

    .line 153
    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 154
    invoke-virtual {p4, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 157
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object p5

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 160
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 161
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, p2, :cond_4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, p2, :cond_4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, p3, :cond_4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p3, :cond_3

    .line 162
    :cond_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p4, v3, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->checkIfDateIsAvailable(Lpl/mkrstudio/truefootball3/objects/Time;Ljava/lang/String;Ljava/util/List;Ljava/util/GregorianCalendar;)V

    goto :goto_1

    .line 166
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->currentFriendlyMatches:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 167
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eq v2, p2, :cond_7

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eq v2, p2, :cond_7

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eq v2, p3, :cond_7

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-ne v2, p3, :cond_6

    .line 168
    :cond_7
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p4, p5, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->checkIfDateIsAvailable(Lpl/mkrstudio/truefootball3/objects/Time;Ljava/lang/String;Ljava/util/List;Ljava/util/GregorianCalendar;)V

    goto :goto_2

    .line 170
    :cond_8
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 171
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->checkIfDateIsAvailable(Lpl/mkrstudio/truefootball3/objects/Time;Ljava/lang/String;Ljava/util/List;Ljava/util/GregorianCalendar;)V

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method public getCurrentFriendlyMatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->currentFriendlyMatches:Ljava/util/List;

    return-object v0
.end method

.method public getFriendlyOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    return-object v0
.end method

.method public isTripAbroad(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team1",
            "team2"
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTripToOtherContinent(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team1",
            "team2"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)V
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
            "world",
            "competitions",
            "inbox",
            "time",
            "chosenTeam",
            "finances",
            "context"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 27
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDaysToExpire()B

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->setDaysToExpire(B)V

    .line 28
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDaysToExpire()B

    move-result v3

    if-nez v3, :cond_0

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildFriendlyOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {p3, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 34
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_2
    invoke-direct {p0, p3, p4, p5, p6}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->answerFriendlyOffers(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Finances;)V

    .line 38
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result p6

    if-eqz p6, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 39
    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->receiveFriendlyOffers(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public setCurrentFriendlyMatches(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentFriendlyMatches"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;)V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->currentFriendlyMatches:Ljava/util/List;

    return-void
.end method

.method public setFriendlyOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendlyOffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;",
            ">;)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Friendlies;->friendlyOffers:Ljava/util/List;

    return-void
.end method
