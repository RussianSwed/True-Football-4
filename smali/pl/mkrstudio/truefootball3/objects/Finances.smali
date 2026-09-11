.class public Lpl/mkrstudio/truefootball3/objects/Finances;
.super Ljava/lang/Object;
.source "Finances.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x51112842d0088921L


# instance fields
.field accountBalance:J

.field bankLoans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/BankLoan;",
            ">;"
        }
    .end annotation
.end field

.field financeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/FinanceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chosenTeam"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->financeItems:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->bankLoans:Ljava/util/List;

    .line 18
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getBudget()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->accountBalance:J

    return-void
.end method

.method private getSalaries(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Transfers;)J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "youth",
            "transfers"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 94
    invoke-virtual {p3, v2}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    invoke-virtual {p3, v2}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getMonthSalary(D)I

    move-result v2

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    :goto_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->getYouthTeams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 101
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 102
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p3

    invoke-virtual {p3, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result p3

    int-to-long v5, p3

    add-long/2addr v0, v5

    goto :goto_2

    :cond_4
    return-wide v0
.end method

.method private payInstalments(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->bankLoans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/BankLoan;

    .line 64
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getMonthlyFee()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 65
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getMonthsToEnd()B

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->setMonthsToEnd(B)V

    .line 66
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getMonthsToEnd()B

    move-result v5

    if-nez v5, :cond_0

    .line 67
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    neg-long v2, v2

    const-string v4, "loanRepayment"

    invoke-direct {v1, p1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/BankLoan;

    .line 71
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->bankLoans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "financeItem"
        }
    .end annotation

    .line 81
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->accountBalance:J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->accountBalance:J

    .line 82
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->financeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 83
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v4

    invoke-virtual {p1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v2

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->setSum(J)V

    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->financeItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateInstalment(IJ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "monthsToEnd",
            "loanAmount"
        }
    .end annotation

    int-to-byte v0, p1

    .line 45
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->getLoanRate(B)D

    move-result-wide v0

    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public getAccountBalance()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->accountBalance:J

    return-wide v0
.end method

.method public getAccountBalance(D)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 121
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->accountBalance:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method public getBankLoans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/BankLoan;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->bankLoans:Ljava/util/List;

    return-object v0
.end method

.method public getFinanceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/FinanceItem;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->financeItems:Ljava/util/List;

    return-object v0
.end method

.method public getLoanRate(B)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthsToEnd"
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-wide v0, 0x3fa999999999999aL    # 0.05

    return-wide v0

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    const-wide v0, 0x3fb999999999999aL    # 0.1

    return-wide v0

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    const-wide v0, 0x3fc3333333333333L    # 0.15

    return-wide v0

    :cond_2
    const/16 v0, 0x24

    if-ne p1, v0, :cond_3

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMonthlyFinanceItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/FinanceItem;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->financeItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 112
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public makeBankLoan(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/BankLoan;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "bankLoan"
        }
    .end annotation

    .line 76
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getLoanAmount()J

    move-result-wide v1

    const-string v3, "bankLoan"

    invoke-direct {v0, p1, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 77
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->bankLoans:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public makeMonthlyFinances(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/objects/Sponsorships;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 5
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
            "time",
            "supporters",
            "youth",
            "clubStaff",
            "stadium",
            "sponsorships",
            "transfers",
            "chosenTeam"
        }
    .end annotation

    .line 30
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Youth;->getMonthlyCost()J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "youthTraining"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 31
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getScouting()Lpl/mkrstudio/truefootball3/objects/Scouting;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getMonthlyCost()J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "scouting"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 32
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getMonthlyCost()J

    move-result-wide v0

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getMonthlyStaffCost()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 33
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    neg-long v0, v0

    const-string v3, "clubStaff"

    invoke-direct {p4, v2, v0, v1, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, p4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 34
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getMonthlyMaintenanceCost()J

    move-result-wide v1

    neg-long v1, v1

    const-string v3, "stadiumMaintenance"

    invoke-direct {p4, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, p4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 36
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getShopRevenue(Lpl/mkrstudio/truefootball3/objects/Supporters;)J

    move-result-wide v1

    const-string v3, "shopRevenue"

    invoke-direct {p4, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, p4}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 37
    invoke-virtual {p5, p2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getToursRevenue(Lpl/mkrstudio/truefootball3/objects/Supporters;)J

    move-result-wide p4

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_0

    .line 39
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toursRevenue"

    invoke-direct {p2, v0, p4, p5, v1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 40
    :cond_0
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p8, p3, p7}, Lpl/mkrstudio/truefootball3/objects/Finances;->getSalaries(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Transfers;)J

    move-result-wide p7

    neg-long p7, p7

    const-string p3, "playerSalaries"

    invoke-direct {p2, p4, p7, p8, p3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 41
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getMonthlyIncome()J

    move-result-wide p3

    const-string p5, "sponsorships"

    invoke-direct {p2, p1, p3, p4, p5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    return-void
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/objects/Sponsorships;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 2
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
            "time",
            "supporters",
            "youth",
            "clubStaff",
            "stadium",
            "sponsorships",
            "transfers",
            "chosenTeam"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 23
    invoke-virtual/range {p0 .. p8}, Lpl/mkrstudio/truefootball3/objects/Finances;->makeMonthlyFinances(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/objects/Sponsorships;Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 24
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Finances;->payInstalments(Lpl/mkrstudio/truefootball3/objects/Time;)V

    :cond_0
    return-void
.end method

.method public setAccountBalance(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountBalance"
        }
    .end annotation

    .line 129
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->accountBalance:J

    return-void
.end method

.method public setBankLoans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bankLoans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/BankLoan;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->bankLoans:Ljava/util/List;

    return-void
.end method

.method public setFinanceItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "financeItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/FinanceItem;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Finances;->financeItems:Ljava/util/List;

    return-void
.end method
