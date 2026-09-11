.class public Lpl/mkrstudio/truefootball3/objects/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x552df7c9b5433c7fL


# instance fields
.field beginningOfNewJob:Z

.field calendar:Ljava/util/GregorianCalendar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->beginningOfNewJob:Z

    .line 24
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 26
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->beginningOfNewJob:Z

    .line 20
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    return-void
.end method

.method public static getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 210
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, p0, v1, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 p0, 0x2

    .line 215
    invoke-virtual {v2, p0}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    const/4 p0, 0x4

    .line 216
    invoke-virtual {v2, p0}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDateAfter(Ljava/util/Calendar;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "calendar",
            "date"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p1

    .line 240
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public areDatesEqual(Ljava/lang/String;Ljava/util/GregorianCalendar;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "gc"
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 245
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 248
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p2

    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method checkIfDateIsAvailable(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Z
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
            "date",
            "team1",
            "team2",
            "competitions",
            "friendlies"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, -0x2

    .line 93
    invoke-virtual {p1, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 97
    invoke-virtual {p1, v0, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 98
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 101
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 104
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 105
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

    .line 106
    :cond_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 112
    :cond_5
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getCurrentFriendlyMatches()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 113
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eq v0, p2, :cond_7

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eq v0, p2, :cond_7

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eq v0, p3, :cond_7

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-ne v0, p3, :cond_6

    .line 114
    :cond_7
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    return v2

    .line 118
    :cond_8
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getFriendlyOffers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 119
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p5

    if-eq p5, p2, :cond_a

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p5

    if-eq p5, p3, :cond_a

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p5

    if-eq p5, p2, :cond_a

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p5

    if-ne p5, p3, :cond_9

    .line 120
    :cond_a
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDate()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    return v2

    :cond_b
    return v5
.end method

.method public generateContract(II)Lpl/mkrstudio/truefootball3/objects/Contract;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseSkill",
            "positions"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 68
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>()V

    .line 69
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v2

    const/4 v3, 0x3

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 71
    invoke-virtual {v2, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v5, 0x5

    const/16 v6, 0xa

    .line 72
    invoke-virtual {v2, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v6, 0x2

    .line 73
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    if-nez v7, :cond_0

    .line 75
    invoke-virtual {v2, v6, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    :cond_0
    const/16 v7, 0xb

    .line 77
    invoke-virtual {v2, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 78
    :goto_0
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 79
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDateId(Ljava/util/GregorianCalendar;)I

    move-result v7

    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/Contract;->setEndDate(I)V

    .line 80
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v3, v7

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 81
    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    .line 82
    invoke-virtual {v2, v6, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 84
    invoke-virtual {v2, v6, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 85
    :goto_1
    invoke-virtual {v2, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 86
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractStartDateId(Ljava/util/GregorianCalendar;)I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setStartDate(I)V

    .line 87
    invoke-virtual {v1, p1, p2}, Lpl/mkrstudio/truefootball3/objects/Contract;->calculateSalary(II)I

    move-result p1

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setMonthSalary(I)V

    return-object v1
.end method

.method public getCalendar()Ljava/util/GregorianCalendar;
    .locals 1

    .line 271
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public getContractEndCalendar(I)Ljava/util/GregorianCalendar;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateId"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 v2, 0x2

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    const/4 v4, 0x4

    .line 147
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 148
    rem-int/lit8 v4, p1, 0x2

    const/4 v5, 0x5

    if-nez v4, :cond_0

    .line 149
    invoke-virtual {v0, v2, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 150
    div-int/2addr p1, v2

    add-int/2addr p1, v1

    invoke-virtual {v0, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 151
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v0, v5, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    :cond_0
    const/16 v4, 0xb

    .line 153
    invoke-virtual {v0, v2, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 154
    div-int/2addr p1, v2

    add-int/2addr p1, v1

    invoke-virtual {v0, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 155
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v0, v5, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_0
    return-object v0
.end method

.method public getContractEndDate(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateId"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndCalendar(I)Ljava/util/GregorianCalendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContractEndDateId(Ljava/util/GregorianCalendar;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gc"
        }
    .end annotation

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 166
    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getContractStartDate(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateId"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 v4, 0x2

    .line 173
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    const/4 v5, 0x4

    .line 174
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 175
    rem-int/lit8 v5, p1, 0x2

    const/4 v6, 0x5

    if-nez v5, :cond_0

    .line 176
    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 177
    div-int/2addr p1, v4

    add-int/2addr p1, v1

    invoke-virtual {v0, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 178
    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    .line 180
    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 181
    div-int/2addr p1, v4

    add-int/2addr p1, v1

    invoke-virtual {v0, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 182
    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 184
    :goto_0
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContractStartDateId(Ljava/util/GregorianCalendar;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gc"
        }
    .end annotation

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 189
    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getCurrentDateString()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/Integer;II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "day",
            "weekNumber",
            "yearNumber"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 p3, 0x2

    .line 225
    invoke-virtual {v0, p3}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    const/4 p3, 0x4

    .line 226
    invoke-virtual {v0, p3}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    const/4 p3, 0x3

    .line 227
    invoke-virtual {v0, p3, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 228
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 229
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gc"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    const-string v5, ".0"

    const-string v6, "."

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getDayAfterDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 234
    invoke-virtual {p1, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 235
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDaysToClosingTransferWindow()I
    .locals 3

    .line 38
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3e

    return v0

    .line 43
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public getDifferenceBetweenDates(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "departureDate",
            "returnDate"
        }
    .end annotation

    .line 256
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 258
    invoke-virtual {p1, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    add-int/2addr v0, v2

    .line 260
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    :goto_0
    return v0
.end method

.method public getNextAndNotCurrentTransferWindowDateString()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".07.01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".01.01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextTransferWindowDateString()Ljava/lang/String;
    .locals 3

    .line 59
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".07.01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".01.01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRandomEndDate(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p1

    .line 129
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 130
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    .line 132
    invoke-virtual {p1, v3, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0x1f

    .line 133
    invoke-virtual {p1, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1, v3, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0x1e

    .line 136
    invoke-virtual {p1, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 138
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/util/GregorianCalendar;->add(II)V

    return-object p1
.end method

.method public isBeginningOfNewJob()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->beginningOfNewJob:Z

    return v0
.end method

.method public isBeginningOfTransferWindow()Z
    .locals 3

    .line 47
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDaysToClosingTransferWindow()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTransferWindowOpened()Z
    .locals 3

    .line 34
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public nextDay()V
    .locals 3

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    return-void
.end method

.method public setBeginningOfNewJob(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginningOfNewJob"
        }
    .end annotation

    .line 283
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Time;->beginningOfNewJob:Z

    return-void
.end method

.method public setCalendar(Ljava/util/GregorianCalendar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Time;->calendar:Ljava/util/GregorianCalendar;

    return-void
.end method
