.class public Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;
.super Lpl/mkrstudio/truefootball3/objects/Contract;
.source "ContractWithPlayer.java"


# static fields
.field private static final serialVersionUID:J = -0x2d0d238de152fb5dL


# instance fields
.field futureValue:J

.field player:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "futureValue"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>()V

    .line 16
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 17
    iput-wide p2, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->futureValue:J

    return-void
.end method


# virtual methods
.method public getContract()Lpl/mkrstudio/truefootball3/objects/Contract;
    .locals 2

    .line 29
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>()V

    .line 30
    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->startDate:I

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setStartDate(I)V

    .line 31
    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->endDate:I

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setEndDate(I)V

    .line 32
    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->monthSalary:I

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setMonthSalary(I)V

    .line 33
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 34
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->type:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setType(Lpl/mkrstudio/truefootball3/enums/ContractType;)V

    return-object v0
.end method

.method public getFutureValue()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->futureValue:J

    return-wide v0
.end method

.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public setContractDetails(Lpl/mkrstudio/truefootball3/objects/Contract;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contract"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getStartDate()I

    move-result v0

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->startDate:I

    .line 22
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v0

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->endDate:I

    .line 23
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 24
    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->monthSalary:I

    .line 25
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getType()Lpl/mkrstudio/truefootball3/enums/ContractType;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->type:Lpl/mkrstudio/truefootball3/enums/ContractType;

    return-void
.end method

.method public setFutureValue(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "futureValue"
        }
    .end annotation

    .line 53
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->futureValue:J

    return-void
.end method

.method public setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method
