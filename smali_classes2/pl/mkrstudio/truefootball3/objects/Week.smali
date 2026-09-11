.class public Lpl/mkrstudio/truefootball3/objects/Week;
.super Ljava/lang/Object;
.source "Week.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4b4d00f61e5e2633L


# instance fields
.field competition:Lpl/mkrstudio/truefootball3/objects/Competition;

.field cwType:Lpl/mkrstudio/truefootball3/enums/CupWeekType;

.field matches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;"
        }
    .end annotation
.end field

.field neutralGround:Z

.field tableType:Lpl/mkrstudio/truefootball3/enums/TableType;

.field type:Lpl/mkrstudio/truefootball3/objects/WeekType;

.field weekNumber:I

.field weekOfYear:I

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/WeekType;Lpl/mkrstudio/truefootball3/enums/CupWeekType;Lpl/mkrstudio/truefootball3/enums/TableType;IIILpl/mkrstudio/truefootball3/objects/Competition;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "type",
            "cwType",
            "tableType",
            "weekNumber",
            "weekOfYear",
            "year",
            "competition",
            "neutral"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    .line 24
    iput-object p7, p0, Lpl/mkrstudio/truefootball3/objects/Week;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 25
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->type:Lpl/mkrstudio/truefootball3/objects/WeekType;

    .line 26
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Week;->cwType:Lpl/mkrstudio/truefootball3/enums/CupWeekType;

    .line 27
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Week;->tableType:Lpl/mkrstudio/truefootball3/enums/TableType;

    .line 28
    iput p4, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekNumber:I

    .line 29
    iput p5, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    .line 30
    iput p6, p0, Lpl/mkrstudio/truefootball3/objects/Week;->year:I

    .line 31
    iput-boolean p8, p0, Lpl/mkrstudio/truefootball3/objects/Week;->neutralGround:Z

    return-void
.end method


# virtual methods
.method public addCupMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 15
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
            "teams",
            "team1",
            "team2",
            "competitions",
            "time",
            "friendlies",
            "chosenTeam",
            "training",
            "inbox"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;II",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Lpl/mkrstudio/truefootball3/objects/Friendlies;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Training;",
            "Lpl/mkrstudio/truefootball3/objects/Inbox;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 38
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    if-nez v2, :cond_0

    const/4 v2, 0x7

    .line 42
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-le v2, v3, :cond_2

    .line 46
    iget v2, v0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    :cond_2
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    move-object v6, v2

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    add-int/lit8 v2, p3, -0x1

    if-ltz v2, :cond_4

    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    :cond_4
    move-object v7, v3

    .line 57
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget v2, v0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getYear()I

    move-result v3

    move-object/from16 v9, p5

    invoke-virtual {v9, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getDate(Ljava/lang/Integer;II)Ljava/lang/String;

    move-result-object v5

    .line 59
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/Match;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/Week;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-direct {v2, v6, v7, v5, v3}, Lpl/mkrstudio/truefootball3/objects/Match;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competition;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Week;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p4

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v4 .. v14}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getRidOfMatchesCollidingThisDate(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    return-void
.end method

.method public addMatch(Ljava/util/List;IILpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "teams",
            "team1",
            "team2",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;II",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 67
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x7

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x7

    :cond_1
    if-le v0, v1, :cond_2

    .line 73
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    :cond_2
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-ltz p2, :cond_3

    .line 79
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_4

    .line 81
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 83
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    new-instance p3, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getType()Lpl/mkrstudio/truefootball3/objects/WeekType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/WeekType;->getDays()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Week;->getYear()I

    move-result v3

    invoke-virtual {p4, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getDate(Ljava/lang/Integer;II)Ljava/lang/String;

    move-result-object p4

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->competition:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-direct {p3, p2, v0, p4, v1}, Lpl/mkrstudio/truefootball3/objects/Match;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competition;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCwType()Lpl/mkrstudio/truefootball3/enums/CupWeekType;
    .locals 1

    .line 145
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->cwType:Lpl/mkrstudio/truefootball3/enums/CupWeekType;

    return-object v0
.end method

.method public getMatches()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;
    .locals 1

    .line 129
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->tableType:Lpl/mkrstudio/truefootball3/enums/TableType;

    return-object v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/objects/WeekType;
    .locals 1

    .line 89
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->type:Lpl/mkrstudio/truefootball3/objects/WeekType;

    return-object v0
.end method

.method public getWeekNumber()I
    .locals 1

    .line 105
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekNumber:I

    return v0
.end method

.method public getWeekOfYear()I
    .locals 1

    .line 113
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 121
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->year:I

    return v0
.end method

.method public isNeutralGround()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Week;->neutralGround:Z

    return v0
.end method

.method public setCwType(Lpl/mkrstudio/truefootball3/enums/CupWeekType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cwType"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->cwType:Lpl/mkrstudio/truefootball3/enums/CupWeekType;

    return-void
.end method

.method public setMatches(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matches"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->matches:Ljava/util/ArrayList;

    return-void
.end method

.method public setNeutralGround(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "neutralGround"
        }
    .end annotation

    .line 141
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->neutralGround:Z

    return-void
.end method

.method public setTableType(Lpl/mkrstudio/truefootball3/enums/TableType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tableType"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->tableType:Lpl/mkrstudio/truefootball3/enums/TableType;

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/objects/WeekType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->type:Lpl/mkrstudio/truefootball3/objects/WeekType;

    return-void
.end method

.method public setWeekNumber(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weekNumber"
        }
    .end annotation

    .line 109
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekNumber:I

    return-void
.end method

.method public setWeekOfYear(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weekOfYear"
        }
    .end annotation

    .line 117
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->weekOfYear:I

    return-void
.end method

.method public setYear(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "year"
        }
    .end annotation

    .line 125
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Week;->year:I

    return-void
.end method
