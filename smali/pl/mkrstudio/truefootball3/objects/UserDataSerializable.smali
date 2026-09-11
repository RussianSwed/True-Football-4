.class public Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;
.super Ljava/lang/Object;
.source "UserDataSerializable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2c57efa638625887L


# instance fields
.field ai:Lpl/mkrstudio/truefootball3/objects/AI;

.field chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

.field chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

.field competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

.field currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

.field currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

.field dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

.field extras:Ljava/util/List;

.field finances:Lpl/mkrstudio/truefootball3/objects/Finances;

.field friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

.field gameOver:Z

.field gameVersion:Ljava/lang/String;

.field inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

.field jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

.field matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

.field media:Lpl/mkrstudio/truefootball3/objects/Media;

.field pastHistories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            ">;"
        }
    .end annotation
.end field

.field sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

.field stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

.field supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

.field teamAnalyses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;"
        }
    .end annotation
.end field

.field time:Lpl/mkrstudio/truefootball3/objects/Time;

.field training:Lpl/mkrstudio/truefootball3/objects/Training;

.field transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

.field trophies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Trophy;",
            ">;"
        }
    .end annotation
.end field

.field useEditedData:Z

.field world:Lpl/mkrstudio/truefootball3/objects/World;

.field youth:Lpl/mkrstudio/truefootball3/objects/Youth;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->pastHistories:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->trophies:Ljava/util/List;

    .line 42
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->teamAnalyses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public copyData(Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ud"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 50
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    .line 51
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->isGameOver()Z

    move-result v0

    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->gameOver:Z

    .line 52
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    .line 53
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->world:Lpl/mkrstudio/truefootball3/objects/World;

    .line 54
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    .line 55
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    .line 56
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    .line 57
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

    .line 58
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    .line 59
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    .line 60
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    .line 61
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    .line 62
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    .line 63
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    .line 64
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getPastHistories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->pastHistories:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTrophies()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->trophies:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    .line 67
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getMatchFixing()Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    .line 68
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    .line 69
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getMedia()Lpl/mkrstudio/truefootball3/objects/Media;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    .line 70
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

    .line 71
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    .line 72
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getAi()Lpl/mkrstudio/truefootball3/objects/AI;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->ai:Lpl/mkrstudio/truefootball3/objects/AI;

    .line 73
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->isUseEditedData()Z

    move-result v0

    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->useEditedData:Z

    .line 74
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getExtras()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->extras:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->gameVersion:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    .line 77
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTeamAnalyses()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->teamAnalyses:Ljava/util/List;

    return-void
.end method

.method public getAi()Lpl/mkrstudio/truefootball3/objects/AI;
    .locals 1

    .line 267
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->ai:Lpl/mkrstudio/truefootball3/objects/AI;

    return-object v0
.end method

.method public getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;
    .locals 1

    .line 251
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

    return-object v0
.end method

.method public getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 83
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;
    .locals 1

    .line 259
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    return-object v0
.end method

.method public getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;
    .locals 1

    .line 219
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    return-object v0
.end method

.method public getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;
    .locals 1

    .line 195
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    return-object v0
.end method

.method public getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;
    .locals 1

    .line 91
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    return-object v0
.end method

.method public getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;
    .locals 1

    .line 299
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    return-object v0
.end method

.method public getExtras()Ljava/util/List;
    .locals 1

    .line 291
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->extras:Ljava/util/List;

    return-object v0
.end method

.method public getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;
    .locals 1

    .line 179
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    return-object v0
.end method

.method public getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;
    .locals 1

    .line 155
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;
    .locals 1

    .line 163
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    return-object v0
.end method

.method public getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;
    .locals 1

    .line 147
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

    return-object v0
.end method

.method public getMatchFixing()Lpl/mkrstudio/truefootball3/objects/MatchFixing;
    .locals 1

    .line 227
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    return-object v0
.end method

.method public getMedia()Lpl/mkrstudio/truefootball3/objects/Media;
    .locals 1

    .line 243
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    return-object v0
.end method

.method public getPastHistories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->pastHistories:Ljava/util/List;

    return-object v0
.end method

.method public getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;
    .locals 1

    .line 131
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    return-object v0
.end method

.method public getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;
    .locals 1

    .line 187
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    return-object v0
.end method

.method public getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;
    .locals 1

    .line 235
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    return-object v0
.end method

.method public getTeamAnalyses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->teamAnalyses:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Lpl/mkrstudio/truefootball3/objects/Time;
    .locals 1

    .line 107
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    return-object v0
.end method

.method public getTraining()Lpl/mkrstudio/truefootball3/objects/Training;
    .locals 1

    .line 171
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    return-object v0
.end method

.method public getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;
    .locals 1

    .line 139
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    return-object v0
.end method

.method public getTrophies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Trophy;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->trophies:Ljava/util/List;

    return-object v0
.end method

.method public getWorld()Lpl/mkrstudio/truefootball3/objects/World;
    .locals 1

    .line 115
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->world:Lpl/mkrstudio/truefootball3/objects/World;

    return-object v0
.end method

.method public getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;
    .locals 1

    .line 123
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    return-object v0
.end method

.method public isGameOver()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->gameOver:Z

    return v0
.end method

.method public isUseEditedData()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->useEditedData:Z

    return v0
.end method

.method public setAi(Lpl/mkrstudio/truefootball3/objects/AI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ai"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->ai:Lpl/mkrstudio/truefootball3/objects/AI;

    return-void
.end method

.method public setChairman(Lpl/mkrstudio/truefootball3/objects/Chairman;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chairman"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->chairman:Lpl/mkrstudio/truefootball3/objects/Chairman;

    return-void
.end method

.method public setChosenTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chosenTeam"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setClubStaff(Lpl/mkrstudio/truefootball3/objects/ClubStaff;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clubStaff"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    return-void
.end method

.method public setCompetitions(Lpl/mkrstudio/truefootball3/objects/Competitions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitions"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->competitions:Lpl/mkrstudio/truefootball3/objects/Competitions;

    return-void
.end method

.method public setCurrentHistory(Lpl/mkrstudio/truefootball3/objects/History;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentHistory"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->currentHistory:Lpl/mkrstudio/truefootball3/objects/History;

    return-void
.end method

.method public setCurrentMatch(Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMatch"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->currentMatch:Lpl/mkrstudio/truefootball3/objects/Match;

    return-void
.end method

.method public setDressingRoom(Lpl/mkrstudio/truefootball3/objects/DressingRoom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dressingRoom"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->dressingRoom:Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    return-void
.end method

.method public setExtras(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->extras:Ljava/util/List;

    return-void
.end method

.method public setFinances(Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finances"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->finances:Lpl/mkrstudio/truefootball3/objects/Finances;

    return-void
.end method

.method public setFriendlies(Lpl/mkrstudio/truefootball3/objects/Friendlies;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendlies"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->friendlies:Lpl/mkrstudio/truefootball3/objects/Friendlies;

    return-void
.end method

.method public setGameOver(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameOver"
        }
    .end annotation

    .line 103
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->gameOver:Z

    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameVersion"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->gameVersion:Ljava/lang/String;

    return-void
.end method

.method public setInbox(Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inbox"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->inbox:Lpl/mkrstudio/truefootball3/objects/Inbox;

    return-void
.end method

.method public setJobs(Lpl/mkrstudio/truefootball3/objects/Jobs;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jobs"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->jobs:Lpl/mkrstudio/truefootball3/objects/Jobs;

    return-void
.end method

.method public setMatchFixing(Lpl/mkrstudio/truefootball3/objects/MatchFixing;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchFixing"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->matchFixing:Lpl/mkrstudio/truefootball3/objects/MatchFixing;

    return-void
.end method

.method public setMedia(Lpl/mkrstudio/truefootball3/objects/Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "media"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->media:Lpl/mkrstudio/truefootball3/objects/Media;

    return-void
.end method

.method public setPastHistories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pastHistories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            ">;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->pastHistories:Ljava/util/List;

    return-void
.end method

.method public setSponsorships(Lpl/mkrstudio/truefootball3/objects/Sponsorships;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sponsorships"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->sponsorships:Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    return-void
.end method

.method public setStadium(Lpl/mkrstudio/truefootball3/objects/Stadium;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stadium"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    return-void
.end method

.method public setSupporters(Lpl/mkrstudio/truefootball3/objects/Supporters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supporters"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->supporters:Lpl/mkrstudio/truefootball3/objects/Supporters;

    return-void
.end method

.method public setTeamAnalyses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamAnalyses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;",
            ">;)V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->teamAnalyses:Ljava/util/List;

    return-void
.end method

.method public setTime(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->time:Lpl/mkrstudio/truefootball3/objects/Time;

    return-void
.end method

.method public setTraining(Lpl/mkrstudio/truefootball3/objects/Training;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "training"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->training:Lpl/mkrstudio/truefootball3/objects/Training;

    return-void
.end method

.method public setTransfers(Lpl/mkrstudio/truefootball3/objects/Transfers;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transfers"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->transfers:Lpl/mkrstudio/truefootball3/objects/Transfers;

    return-void
.end method

.method public setTrophies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trophies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Trophy;",
            ">;)V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->trophies:Ljava/util/List;

    return-void
.end method

.method public setUseEditedData(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useEditedData"
        }
    .end annotation

    .line 287
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->useEditedData:Z

    return-void
.end method

.method public setWorld(Lpl/mkrstudio/truefootball3/objects/World;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->world:Lpl/mkrstudio/truefootball3/objects/World;

    return-void
.end method

.method public setYouth(Lpl/mkrstudio/truefootball3/objects/Youth;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youth"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->youth:Lpl/mkrstudio/truefootball3/objects/Youth;

    return-void
.end method
