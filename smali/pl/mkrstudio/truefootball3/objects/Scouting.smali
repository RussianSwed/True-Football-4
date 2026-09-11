.class public Lpl/mkrstudio/truefootball3/objects/Scouting;
.super Ljava/lang/Object;
.source "Scouting.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7e18e938370e4962L


# instance fields
.field scouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scouts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scouting;->scouts:Ljava/util/List;

    return-void
.end method

.method private checkScoutAssignments(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "chosenTeam",
            "inbox"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scouting;->scouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 47
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 49
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v4, p2, :cond_2

    .line 52
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 53
    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/Scout;->makePossibleRecommendation(Lpl/mkrstudio/truefootball3/objects/Player;)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->setDaysLeft(I)V

    .line 58
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result v2

    if-nez v2, :cond_5

    .line 59
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getPastAssignments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getPastAssignments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getPastAssignments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Scout;->setCurrentAssignment(Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;)V

    goto/16 :goto_0

    .line 62
    :cond_5
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildScoutsContinuesSearchingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Scout;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private checkScoutReports(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "chosenTeam",
            "inbox"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scouting;->scouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentReports()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 31
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getDaysLeft()B

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->setDaysLeft(B)V

    .line 32
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getDaysLeft()B

    move-result v5

    if-nez v5, :cond_1

    .line 33
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v4, p2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildScoutReportMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Scout;Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v5

    invoke-virtual {p3, v5}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 34
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getPastReports()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 40
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentReports()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getFreeScouts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Scouting;->scouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 80
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMonthlyCost()J
    .locals 5

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scouting;->scouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 72
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getScouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scouting;->scouts:Ljava/util/List;

    return-object v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "chosenTeam",
            "inbox"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Scouting;->checkScoutAssignments(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Scouting;->checkScoutReports(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    return-void
.end method

.method public setScouts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scouts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scouting;->scouts:Ljava/util/List;

    return-void
.end method
