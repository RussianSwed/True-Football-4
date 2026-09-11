.class public Lpl/mkrstudio/truefootball3/objects/Jobs;
.super Ljava/lang/Object;
.source "Jobs.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xf1e863a8e377924L


# instance fields
.field jobOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/JobOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    return-void
.end method

.method private checkForJobOffers(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Chairman;Lpl/mkrstudio/truefootball3/objects/Competitions;)Z
    .locals 13
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
            "time",
            "chosenTeam",
            "world",
            "chairman",
            "competitions"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    .line 62
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 67
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v0

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v0

    const/16 v1, 0x55

    if-lt v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    .line 71
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v1

    const/16 v2, 0x4b

    if-lt v1, v2, :cond_a

    .line 72
    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 76
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v0

    int-to-byte v1, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object/from16 v3, p3

    move-object v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Jobs;->filterTeams(BLjava/util/List;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v0

    int-to-byte v1, v0

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object/from16 v3, p3

    move-object v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Jobs;->filterTeams(BLjava/util/List;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    .line 80
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 83
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lpl/mkrstudio/truefootball3/objects/JobOffer;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;B)V

    .line 84
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildNewJobOfferMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/JobOffer;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 87
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-lez v0, :cond_9

    .line 89
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v3, p3

    if-eq v1, v3, :cond_5

    .line 91
    invoke-direct {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Jobs;->existsOffer(Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    if-ne v4, v5, :cond_6

    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_6
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getPlayableLeagues()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".07.01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".01.01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 93
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpg-double v12, v4, v8

    if-gtz v12, :cond_5

    .line 94
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/JobOffer;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;B)V

    .line 95
    iget-object v1, v6, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildNewJobOfferMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/JobOffer;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_9
    return v11

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private checkOffers(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    .line 49
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getDaysToExpire()B

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->setDaysToExpire(B)V

    .line 50
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getDaysToExpire()B

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    .line 57
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private existsOffer(Lpl/mkrstudio/truefootball3/objects/Team;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offeredTeam"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    .line 112
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private filterTeams(BLjava/util/List;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "confidence",
            "knownTeams",
            "chosenTeam",
            "time",
            "competitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 123
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v6, v7, :cond_1

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v6, v7, :cond_0

    .line 124
    :cond_1
    invoke-virtual {v5, p5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 125
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_CC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_EC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_FC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WORLD_C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    const/16 v1, 0x5f

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    if-le p1, v1, :cond_6

    float-to-double v0, v0

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v5

    :goto_2
    double-to-float v0, v0

    goto :goto_4

    :cond_6
    const/16 v1, 0x57

    if-le p1, v1, :cond_7

    float-to-double v0, v0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    add-double/2addr v0, v7

    goto :goto_2

    :cond_7
    const/16 v1, 0x50

    if-le p1, v1, :cond_8

    float-to-double v0, v0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_8
    :goto_4
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 p1, 0x1

    if-le v2, p1, :cond_9

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    :goto_5
    double-to-float v0, v0

    goto :goto_6

    :cond_9
    if-lez v2, :cond_a

    float-to-double v0, v0

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v5

    goto :goto_5

    :cond_a
    if-lez v3, :cond_b

    float-to-double v0, v0

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v7

    goto :goto_5

    :cond_b
    :goto_6
    if-lez v4, :cond_c

    float-to-double v0, v0

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v7

    double-to-float v0, v0

    .line 144
    :cond_c
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    add-float/2addr v0, p1

    float-to-double v1, v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_d

    const/high16 v0, 0x41200000    # 10.0f

    .line 149
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v1, p3, :cond_e

    .line 151
    invoke-direct {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Jobs;->existsOffer(Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    if-ne v2, v3, :cond_f

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_f
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getPlayableLeagues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_10

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".07.01"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".01.01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 153
    :cond_11
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_e

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v4, v2, v7

    if-gtz v4, :cond_e

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_12
    return-object p1
.end method


# virtual methods
.method public getJobOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/JobOffer;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    return-object v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Chairman;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;)Z
    .locals 8
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
            "time",
            "chairman",
            "chosenTeam",
            "world",
            "competitions"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    .line 26
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getDaysToExpire()B

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    invoke-virtual {v2, v7}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->setDaysToExpire(B)V

    .line 27
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getDaysToExpire()B

    move-result v7

    if-nez v7, :cond_1

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-ne v6, v3, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-le v3, v4, :cond_0

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    .line 34
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildJobOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-lt v0, v4, :cond_5

    .line 41
    :cond_4
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-ge v0, v4, :cond_6

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-object v6, p6

    .line 42
    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Jobs;->checkForJobOffers(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Chairman;Lpl/mkrstudio/truefootball3/objects/Competitions;)Z

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public setJobOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jobOffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/JobOffer;",
            ">;)V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Jobs;->jobOffers:Ljava/util/List;

    return-void
.end method
