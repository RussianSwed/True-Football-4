.class public Lpl/mkrstudio/truefootball3/objects/MatchFixing;
.super Ljava/lang/Object;
.source "MatchFixing.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1fde33c96217d781L


# instance fields
.field currentFixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/MatchFix;",
            ">;"
        }
    .end annotation
.end field

.field numberOfMatchesFixed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->currentFixes:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->numberOfMatchesFixed:I

    return-void
.end method

.method private checkIfGameOver(Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ud"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public afterFix(Lpl/mkrstudio/truefootball3/objects/MatchFix;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "matchFix",
            "chosenTeam",
            "inbox",
            "time",
            "finances"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->isUserToWin()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 62
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    .line 63
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    if-le v0, v3, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    if-ge v0, v3, :cond_3

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-ne v0, p2, :cond_2

    .line 70
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    if-ge v0, v3, :cond_3

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    .line 74
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    if-le v0, v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 78
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->isUserToWin()Z

    move-result p4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getFee()J

    move-result-wide v0

    if-eqz p4, :cond_4

    neg-long v0, v0

    :cond_4
    const-string p4, "matchFixing"

    invoke-direct {p2, p3, v0, v1, p4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p5, p2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->getFee()J

    move-result-wide v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchFix;->isUserToWin()Z

    move-result p5

    xor-int/2addr p5, v2

    invoke-static {p4, v0, v1, p2, p5}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildMatchFixingFailedMessage(Ljava/lang/String;JLpl/mkrstudio/truefootball3/objects/Team;Z)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p2

    invoke-virtual {p3, p2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 82
    :goto_2
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->currentFixes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateFee(Lpl/mkrstudio/truefootball3/objects/Match;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x5

    return-wide v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x19

    return-wide v0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x32

    return-wide v0

    .line 48
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x64

    return-wide v0

    .line 50
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v0, v1, :cond_4

    const-wide/16 v0, 0x4b

    return-wide v0

    .line 52
    :cond_4
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x96

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fixMatch(Lpl/mkrstudio/truefootball3/objects/Match;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "match",
            "userToWin"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->currentFixes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/MatchFix;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->calculateFee(Lpl/mkrstudio/truefootball3/objects/Match;)J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lpl/mkrstudio/truefootball3/objects/MatchFix;-><init>(Lpl/mkrstudio/truefootball3/objects/Match;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentFixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/MatchFix;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->currentFixes:Ljava/util/List;

    return-object v0
.end method

.method public getNumberOfMatchesFixed()I
    .locals 1

    .line 96
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->numberOfMatchesFixed:I

    return v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ud"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->checkIfGameOver(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    return-void
.end method

.method public setCurrentFixes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentFixes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/MatchFix;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->currentFixes:Ljava/util/List;

    return-void
.end method

.method public setNumberOfMatchesFixed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberOfMatchesFixed"
        }
    .end annotation

    .line 100
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchFixing;->numberOfMatchesFixed:I

    return-void
.end method
