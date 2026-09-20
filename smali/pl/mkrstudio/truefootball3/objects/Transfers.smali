.class public Lpl/mkrstudio/truefootball3/objects/Transfers;
.super Ljava/lang/Object;
.source "Transfers.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4dc6b3522be59679L


# instance fields
.field acceptedOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation
.end field

.field futurePlayersIn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;",
            ">;"
        }
    .end annotation
.end field

.field negotiatingOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation
.end field

.field offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation
.end field

.field playersOnLoan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;",
            ">;"
        }
    .end annotation
.end field

.field toLoanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field transferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field transfersMadeThisWindow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->futurePlayersIn:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->toLoanList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transfersMadeThisWindow:Ljava/util/List;

    return-void
.end method

.method private receivePossibleFreeAgentRecommendations(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "time",
            "inbox",
            "chosenTeam",
            "context"
        }
    .end annotation

    move-object/from16 v4, p5

    .line 99
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 101
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 104
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 105
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 107
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    invoke-direct {v0, v4}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 108
    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->getFreeAgentTeam(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-virtual {v0, v6, v2, v5, v1}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateOnePlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/Position;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v11

    if-nez v11, :cond_1

    return v1

    .line 113
    :cond_1
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;

    invoke-direct {v0, v4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    const/4 v8, 0x0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->OTHER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v0, v2, v8, v1, v9}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateOnePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v2

    .line 117
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v18

    .line 118
    invoke-virtual {v11, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 119
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v8, v9}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v12

    double-to-long v14, v8

    const-wide/16 v8, 0x5

    mul-long v12, v14, v8

    .line 121
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    const/4 v9, 0x5

    const-wide/16 v16, 0x0

    const/4 v5, -0x1

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-object v8, v0

    move-object/from16 v10, p4

    move-object/from16 p1, v2

    move-wide v1, v12

    move-wide/from16 v12, v16

    move-wide/from16 v20, v14

    move/from16 v16, v5

    move-object/from16 v17, v19

    invoke-direct/range {v8 .. v17}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V

    move-wide/from16 v8, v20

    .line 123
    invoke-virtual {v0, v8, v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDesiredSalary(J)V

    .line 124
    invoke-virtual {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setAgentsFee(J)V

    .line 125
    invoke-virtual {v0, v7}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setReceived(Z)V

    move-object/from16 v8, p0

    .line 126
    iget-object v1, v8, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "currencyModifier"

    .line 129
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const-string v2, "currencyName"

    const-string v3, "EUR"

    .line 130
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v4, p5

    move-object v6, v9

    .line 131
    invoke-static/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildFreeAgentRecommendedMessage(Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Employee;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;Landroid/content/Context;FLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_1
    return v7
.end method

.method private returnPlayersFromLoan(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "inbox",
            "chosenTeam"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    .line 162
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getEndDate()I

    move-result v3

    invoke-virtual {p1, v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-nez v3, :cond_1

    .line 164
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3, p3}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 168
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLoanEndedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    .line 176
    invoke-virtual {p2, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_0

    .line 169
    :cond_3
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 181
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    .line 182
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public acceptOfferAfterNegotiations(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferOffer"
        }
    .end annotation

    const/4 v0, 0x2

    .line 78
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDaysToResponse(B)V

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPlayerToTransferList(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public agreeToLoanOutPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "transferOffer",
            "time",
            "inbox"
        }
    .end annotation

    .line 595
    new-instance v7, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    .line 596
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/ContractType;->LOAN:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-direct {v7, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>(ILpl/mkrstudio/truefootball3/objects/Team;ILpl/mkrstudio/truefootball3/enums/ContractType;)V

    .line 597
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    move-object v5, p4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->loanPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 598
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    .line 599
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    .line 598
    invoke-static {p1, p2, v7, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLoanOutBeganMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Lpl/mkrstudio/truefootball3/objects/Time;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p4, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    return-void
.end method

.method public aiAcceptOffer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;)V
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
            "transferOffer",
            "chosenTeam",
            "time",
            "inbox",
            "finances"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 56
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 57
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v1

    .line 58
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v2

    long-to-int v3, v2

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/ContractType;->REGULAR:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-direct {v0, v1, p2, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>(ILpl/mkrstudio/truefootball3/objects/Team;ILpl/mkrstudio/truefootball3/enums/ContractType;)V

    .line 59
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 60
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getAgentsFee()J

    move-result-wide v1

    neg-long v1, v1

    const-string v3, "agentsFee"

    invoke-direct {p2, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p5, p2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 62
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p3

    .line 62
    invoke-static {p2, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractWithFreeAgentSignedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p2

    invoke-virtual {p4, p2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 64
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public areOffers(Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 798
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public changedClubThisWindow(Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transfersMadeThisWindow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 807
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public checkOffers(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Scouting;Landroid/content/Context;)Z
    .locals 30
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
            "media",
            "inbox",
            "finances",
            "youth",
            "chosenTeam",
            "scouting",
            "context"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p3

    move-object/from16 v12, p6

    move-object/from16 v11, p8

    .line 325
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getOffersMade()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-eqz v0, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 327
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToResponse()B

    move-result v0

    sub-int/2addr v0, v6

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDaysToResponse(B)V

    .line 328
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToResponse()B

    move-result v0

    if-nez v0, :cond_f

    .line 331
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eq v0, v12, :cond_1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->check(FI)Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    move-result-object v0

    goto :goto_2

    .line 332
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->check()Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    move-result-object v0

    :goto_2
    move-object v5, v0

    .line 336
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_5

    .line 338
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->NEGOTIATED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne v5, v0, :cond_2

    const-string v0, "tf3Settings"

    .line 340
    invoke-virtual {v11, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "currencyModifier"

    .line 341
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const-string v1, "currencyName"

    const-string v2, "EUR"

    .line 342
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 345
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 346
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v17

    move-object/from16 v18, v10

    .line 347
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    move-object/from16 v20, v2

    float-to-double v1, v0

    const-wide/high16 v22, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double v1, v1, v22

    add-double/2addr v1, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v1

    double-to-long v0, v9

    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    .line 348
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    int-to-long v7, v0

    const/16 v22, -0x1

    sget-object v23, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-object/from16 v0, v20

    const/4 v1, 0x3

    move-object/from16 v24, v20

    move-object/from16 v2, p6

    move-object/from16 v25, v3

    move-object/from16 v3, v17

    move-object/from16 v20, v4

    move/from16 v26, v5

    move-wide v4, v9

    const/4 v10, 0x1

    move-wide v6, v7

    move/from16 v8, v22

    move-object/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V

    move-object/from16 v0, v24

    .line 350
    invoke-virtual {v0, v10}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setReceived(Z)V

    const/4 v9, 0x0

    .line 351
    invoke-virtual {v0, v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setMade(Z)V

    .line 353
    iget-object v1, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v25

    move/from16 v2, v26

    invoke-static {v1, v0, v2, v3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildOfferNegotiatingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;FLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    move-object v15, v14

    move-object/from16 v0, v20

    const/16 v17, 0x1

    const/16 v19, 0x0

    :goto_3
    move-object v14, v12

    move-object v12, v13

    move-object v13, v11

    move-object/from16 v11, v18

    goto/16 :goto_a

    :cond_2
    move-object/from16 v20, v4

    move-object/from16 v18, v10

    const/4 v10, 0x1

    .line 359
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 360
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v20

    invoke-static {v5, v0, v6, v11}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildBuyOfferMessage(Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    .line 362
    invoke-virtual {v13, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 363
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_RESERVE:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 366
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    const/4 v1, 0x5

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    .line 367
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v19

    .line 368
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    int-to-long v7, v0

    const/16 v17, -0x1

    sget-object v21, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-object v0, v4

    move-object/from16 v2, p6

    move-object v10, v4

    move-wide/from16 v4, v19

    move-object/from16 v20, v6

    move-wide v6, v7

    move/from16 v8, v17

    const/16 v19, 0x0

    move-object/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V

    const/4 v0, 0x1

    .line 370
    invoke-virtual {v10, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setReceived(Z)V

    .line 371
    iget-object v0, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v20, v6

    const/16 v19, 0x0

    :goto_4
    move-object v15, v14

    move-object/from16 v0, v20

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    move-object v15, v14

    move-object/from16 v27, v18

    move-object/from16 v0, v20

    move-object v14, v12

    move-object v12, v13

    move-object v13, v11

    goto/16 :goto_9

    :cond_5
    move-object/from16 v20, v4

    move-object/from16 v18, v10

    const/16 v19, 0x0

    .line 376
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_c

    const-string v6, ""

    .line 380
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-eq v5, v0, :cond_9

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-eq v5, v0, :cond_9

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-eq v5, v0, :cond_9

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_UNHAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne v5, v0, :cond_6

    goto/16 :goto_5

    .line 405
    :cond_6
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne v5, v0, :cond_8

    .line 406
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-nez v0, :cond_7

    .line 408
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 409
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 410
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v1

    .line 411
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v2

    long-to-int v3, v2

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/ContractType;->REGULAR:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-direct {v0, v1, v12, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>(ILpl/mkrstudio/truefootball3/objects/Team;ILpl/mkrstudio/truefootball3/enums/ContractType;)V

    .line 412
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 413
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 414
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 416
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v1

    invoke-virtual {v1, v0, v12, v14, v13}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->possiblyCreateIsolation(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 418
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getAgentsFee()J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "agentsFee"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v10, p4

    invoke-virtual {v10, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    .line 420
    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractWithFreeAgentSignedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v13, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_6

    :cond_7
    move-object/from16 v10, p4

    .line 424
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v1

    .line 425
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v2

    long-to-int v3, v2

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/ContractType;->REGULAR:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-direct {v0, v1, v12, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>(ILpl/mkrstudio/truefootball3/objects/Team;ILpl/mkrstudio/truefootball3/enums/ContractType;)V

    .line 426
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    move-object/from16 v0, p8

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, p6

    move-object v5, v6

    .line 427
    invoke-static/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractOfferMessage(Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    .line 429
    invoke-virtual {v13, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_6

    :cond_8
    move-object/from16 v10, p4

    move-object/from16 v0, p8

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, p6

    move-object v5, v6

    .line 432
    invoke-static/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractOfferMessage(Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    .line 434
    invoke-virtual {v13, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_6

    :cond_9
    :goto_5
    move-object/from16 v10, p4

    .line 382
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 383
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getNextTransferWindowDateString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p8

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, p6

    move-object v5, v6

    .line 384
    invoke-static/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractOfferMessage(Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    .line 386
    invoke-virtual {v13, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 387
    new-instance v7, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-direct {v7}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>()V

    .line 389
    invoke-static {v6}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v14, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractStartDateId(Ljava/util/GregorianCalendar;)I

    move-result v0

    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setStartDate(I)V

    .line 390
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v0

    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setEndDate(I)V

    .line 391
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/objects/Contract;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 392
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/ContractType;->REGULAR:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setType(Lpl/mkrstudio/truefootball3/enums/ContractType;)V

    .line 393
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v7, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setMonthSalary(I)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result v0

    if-nez v0, :cond_a

    .line 396
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    .line 397
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    move-object/from16 v4, p6

    move-object/from16 v9, p6

    move-object/from16 v27, v18

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p1

    move-object v15, v14

    move-object/from16 v14, p7

    .line 396
    invoke-virtual/range {v0 .. v14}, Lpl/mkrstudio/truefootball3/objects/Transfers;->movePlayer(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;JLpl/mkrstudio/truefootball3/objects/Contract;ZLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Scouting;)V

    goto/16 :goto_8

    :cond_a
    move-object v15, v14

    move-object/from16 v27, v18

    .line 400
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    .line 401
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v5

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    move-object/from16 v4, p6

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p1

    move-object/from16 v14, p7

    .line 400
    invoke-virtual/range {v0 .. v14}, Lpl/mkrstudio/truefootball3/objects/Transfers;->movePlayer(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;JLpl/mkrstudio/truefootball3/objects/Contract;ZLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Scouting;)V

    goto/16 :goto_8

    :cond_b
    :goto_6
    move-object v15, v14

    move-object/from16 v27, v18

    goto/16 :goto_8

    :cond_c
    move-object v15, v14

    move-object/from16 v27, v18

    .line 437
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_e

    .line 438
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_HAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_d

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SMALL_SALARY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-eq v5, v0, :cond_d

    .line 439
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>()V

    .line 441
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v15, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractStartDateId(Ljava/util/GregorianCalendar;)I

    move-result v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setStartDate(I)V

    .line 442
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setEndDate(I)V

    move-object/from16 v14, p6

    .line 443
    invoke-virtual {v3, v14}, Lpl/mkrstudio/truefootball3/objects/Contract;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 444
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/ContractType;->LOAN:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->setType(Lpl/mkrstudio/truefootball3/enums/ContractType;)V

    .line 445
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->setMonthSalary(I)V

    .line 447
    invoke-virtual/range {v20 .. v20}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    .line 448
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v15, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    .line 447
    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->loanPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_7

    :cond_d
    move-object/from16 v14, p6

    move-object v7, v5

    :goto_7
    move-object/from16 v13, p8

    move-object/from16 v0, v20

    .line 451
    invoke-static {v7, v15, v0, v14, v13}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLoanOfferMessage(Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    move-object/from16 v12, p3

    .line 453
    invoke-virtual {v12, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_9

    :cond_e
    :goto_8
    move-object/from16 v12, p3

    move-object/from16 v14, p6

    move-object/from16 v13, p8

    move-object/from16 v0, v20

    :goto_9
    move-object/from16 v11, v27

    .line 455
    :goto_a
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    move-object v15, v14

    const/16 v19, 0x0

    move-object v14, v12

    move-object v12, v13

    move-object v13, v11

    move-object v11, v10

    :goto_b
    move-object v10, v11

    move-object v11, v13

    const/4 v9, 0x0

    move-object v13, v12

    move-object v12, v14

    move-object v14, v15

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v29, v11

    move-object v11, v10

    move-object v10, v14

    move-object v14, v12

    move-object v12, v13

    move-object/from16 v13, v29

    .line 459
    iget-object v0, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 460
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToExpire()B

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDaysToExpire(B)V

    .line 461
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToExpire()B

    move-result v2

    if-nez v2, :cond_11

    .line 462
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v2, v3, :cond_12

    .line 464
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 465
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildTransferOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_c

    .line 467
    :cond_12
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v2, v3, :cond_13

    .line 468
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 469
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_c

    .line 471
    :cond_13
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v2, v3, :cond_11

    .line 472
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 473
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLoanOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_c

    .line 479
    :cond_14
    iget-object v0, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 480
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToExpire()B

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDaysToExpire(B)V

    .line 481
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToExpire()B

    move-result v2

    if-nez v2, :cond_15

    .line 482
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v2, v3, :cond_16

    .line 484
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 485
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildTransferOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_d

    .line 487
    :cond_16
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v2, v3, :cond_17

    .line 488
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 489
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_d

    .line 491
    :cond_17
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v2, v3, :cond_15

    .line 492
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 493
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLoanOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_d

    .line 506
    :cond_18
    iget-object v0, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 508
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToResponse()B

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    invoke-virtual {v9, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDaysToResponse(B)V

    .line 509
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getDaysToResponse()B

    move-result v0

    if-nez v0, :cond_1d

    .line 510
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 511
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 512
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 515
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_1a

    .line 516
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-direct {v5}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>()V

    .line 518
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    .line 519
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    .line 517
    invoke-virtual {v5, v10, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->initRandomContract(Lpl/mkrstudio/truefootball3/objects/Time;ILpl/mkrstudio/truefootball3/objects/Team;)V

    .line 520
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result v0

    if-nez v0, :cond_19

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    goto :goto_f

    .line 523
    :cond_19
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    .line 524
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v19

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p2

    move-object/from16 v22, v5

    move-wide/from16 v5, v19

    move-object/from16 v7, v22

    move/from16 v8, v21

    move-object/from16 v19, v9

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    move-object/from16 v28, v11

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p1

    move-object/from16 v14, p7

    .line 523
    invoke-virtual/range {v0 .. v14}, Lpl/mkrstudio/truefootball3/objects/Transfers;->movePlayer(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;JLpl/mkrstudio/truefootball3/objects/Contract;ZLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Scouting;)V

    :goto_f
    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v0, v28

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_11

    :cond_1a
    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 528
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Contract;

    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    .line 529
    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/ContractType;->LOAN:Lpl/mkrstudio/truefootball3/enums/ContractType;

    invoke-direct {v3, v0, v1, v2, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;-><init>(ILpl/mkrstudio/truefootball3/objects/Team;ILpl/mkrstudio/truefootball3/enums/ContractType;)V

    .line 531
    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->loanPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;)V

    move-object/from16 v1, p3

    goto :goto_10

    :cond_1b
    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 541
    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_1c

    .line 543
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    .line 542
    invoke-static {v0, v1, v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayerRefusedTransferMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_10

    :cond_1c
    move-object/from16 v1, p3

    .line 545
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    .line 545
    invoke-static {v0, v2, v3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayerRefusedLoanMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :goto_10
    move-object/from16 v2, v19

    move-object/from16 v0, v28

    .line 549
    :goto_11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1d
    move-object v0, v11

    move-object v1, v12

    :goto_12
    move-object/from16 v10, p1

    move-object/from16 v14, p6

    move-object/from16 v13, p8

    move-object v11, v0

    move-object v12, v1

    goto/16 :goto_e

    :cond_1e
    move-object v0, v11

    move-object v1, v12

    .line 554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 555
    iget-object v4, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    .line 558
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 559
    iget-object v4, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 562
    :cond_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 563
    iget-object v4, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    .line 566
    :cond_21
    iget-object v2, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 567
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->isMade()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 568
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v4, v5, :cond_22

    .line 569
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 570
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v5

    const/16 v9, 0x14

    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x7d

    int-to-long v9, v4

    .line 571
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v11

    mul-long v9, v9, v11

    const-wide/16 v11, 0x64

    div-long/2addr v9, v11

    cmp-long v4, v5, v9

    if-gez v4, :cond_23

    .line 575
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildHigherPriceAcceptedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 577
    iget-object v4, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 580
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildHigherPriceRejectedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 583
    :goto_17
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 587
    :cond_24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 588
    iget-object v2, v15, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_25
    return v17
.end method

.method checkPlayersToSign(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Scouting;Landroid/content/Context;)V
    .locals 19
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
            "media",
            "inbox",
            "finances",
            "youth",
            "chosenTeam",
            "scouting",
            "context"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getFuturePlayersIn()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    .line 142
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getStartDate()I

    move-result v3

    move-object/from16 v15, p1

    invoke-virtual {v15, v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractStartDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getFutureValue()J

    move-result-wide v9

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p8

    move-object/from16 v6, p2

    move-object/from16 v13, p6

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p1

    move-object/from16 v18, p7

    invoke-virtual/range {v4 .. v18}, Lpl/mkrstudio/truefootball3/objects/Transfers;->movePlayer(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;JLpl/mkrstudio/truefootball3/objects/Contract;ZLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Scouting;)V

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-object/from16 v2, p0

    .line 155
    iget-object v3, v2, Lpl/mkrstudio/truefootball3/objects/Transfers;->futurePlayersIn:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    return-void
.end method

.method public getAcceptedOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    return-object v0
.end method

.method public getFuturePlayersIn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;",
            ">;"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->futurePlayersIn:Ljava/util/List;

    return-object v0
.end method

.method public getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    .line 750
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 751
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNegotiatingOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    return-object v0
.end method

.method public getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    return-object v0
.end method

.method public getOffersMade()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 189
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->isMade()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 193
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->isMade()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getOffersReceived()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 202
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->isReceived()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 206
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->isReceived()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getPenaltyForTerminateContract(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Contract;Ljava/util/GregorianCalendar;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "currentContract",
            "calendar"
        }
    .end annotation

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 617
    invoke-virtual {p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    int-to-long v2, v2

    .line 618
    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object p3

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 620
    invoke-virtual {p3, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 621
    invoke-virtual {p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 622
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v4

    invoke-virtual {p1, v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndCalendar(I)Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2
.end method

.method public getPlayersOnLoan()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    return-object v0
.end method

.method public getTransferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    return-object v0
.end method

.method public getTransfersMadeThisWindow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transfersMadeThisWindow:Ljava/util/List;

    return-object v0
.end method

.method public isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 745
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loanPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 4
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
            "chosenTeam",
            "player",
            "contract",
            "date",
            "inbox",
            "time"
        }
    .end annotation

    .line 729
    instance-of p4, p2, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    if-nez p4, :cond_0

    .line 730
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {p4, p2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;)V

    goto :goto_0

    .line 732
    :cond_0
    move-object p4, p2

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 733
    :goto_0
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Contract;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    .line 736
    invoke-virtual {p4, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setSelection(B)V

    .line 737
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p4, v2, v3}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;J)V

    .line 738
    invoke-virtual {v1, p3}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->setContractDetails(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 739
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    if-eq p2, p1, :cond_1

    .line 741
    invoke-static {v0, p4, p3, p6}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLoanBeganMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Lpl/mkrstudio/truefootball3/objects/Time;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_1
    return-void
.end method

.method public makeOfferForPlayer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferOffer"
        }
    .end annotation

    const/4 v0, 0x1

    .line 603
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setMade(Z)V

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setReceived(Z)V

    .line 605
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public movePlayer(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;JLpl/mkrstudio/truefootball3/objects/Contract;ZLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Scouting;)V
    .locals 18
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "media",
            "player",
            "team",
            "value",
            "contract",
            "now",
            "chosenTeam",
            "inbox",
            "finances",
            "youth",
            "time",
            "scouting"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-wide/from16 v6, p5

    move-object/from16 v3, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v13, p13

    .line 630
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    move-object/from16 v9, p4

    invoke-static {v10, v9, v6, v7, v13}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordMove(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;JLpl/mkrstudio/truefootball3/objects/Time;)V

    if-ne v11, v8, :cond_0

    const/4 v8, 0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_1

    .line 632
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 633
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p8, :cond_16

    if-nez v14, :cond_2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 637
    invoke-virtual {v4, v8, v9}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v8

    cmp-long v17, v8, v6

    if-gtz v17, :cond_3

    :cond_2
    if-eqz v14, :cond_14

    :cond_3
    const/4 v8, -0x1

    .line 638
    invoke-virtual {v10, v8}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 640
    instance-of v8, v10, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    if-nez v8, :cond_4

    .line 641
    new-instance v8, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {v8, v10}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;)V

    goto :goto_1

    .line 643
    :cond_4
    move-object v8, v10

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    :goto_1
    move-object v9, v8

    .line 645
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v8

    .line 648
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 649
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v15

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 651
    :cond_5
    invoke-virtual {v5, v10}, Lpl/mkrstudio/truefootball3/objects/Youth;->containsPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 652
    invoke-virtual {v5, v10}, Lpl/mkrstudio/truefootball3/objects/Youth;->removePlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V

    :cond_6
    if-nez v14, :cond_7

    .line 654
    new-instance v5, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    invoke-direct {v5, v1}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v5, v13, v15, v0, v10}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateOnePlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/Position;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    .line 656
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p4

    .line 658
    invoke-virtual {v9, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 660
    invoke-virtual {v9, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    const-string v0, "tf3Settings"

    .line 661
    invoke-virtual {v1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v5, "currencyModifier"

    .line 662
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    const-string v3, "currencyName"

    const-string v5, "EUR"

    .line 663
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v14, :cond_8

    .line 665
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p13 .. p13}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "transfersOut"

    invoke-direct {v3, v5, v6, v7, v8}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 666
    invoke-virtual/range {p13 .. p13}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    move-wide/from16 v5, p5

    move v7, v10

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayerSoldMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;JFLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    move-object v1, v9

    goto :goto_3

    .line 669
    :cond_8
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual/range {p13 .. p13}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    neg-long v1, v6

    const-string v15, "transfersIn"

    invoke-direct {v3, v5, v1, v2, v15}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 670
    invoke-virtual/range {p13 .. p13}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v8

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    move v8, v10

    move-object v1, v9

    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildContractSignedMessage(Ljava/lang/String;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;JFLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :goto_3
    if-nez v14, :cond_b

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 676
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v0

    invoke-virtual {v0, v1, v11, v13, v12}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->possiblyCreateIsolation(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 677
    invoke-virtual/range {p9 .. p9}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v0

    .line 678
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getSkill()B

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v0, v0, v3

    const/high16 v4, 0x41a00000    # 20.0f

    add-float/2addr v4, v0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9

    const v0, 0x7f0c05d3

    move-object/from16 v2, p2

    .line 680
    invoke-virtual {v2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Media;->buildQuestion(ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    move-object/from16 v2, p2

    .line 681
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getSkill()B

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v3

    cmpg-float v0, v4, v0

    if-gez v0, :cond_a

    const v0, 0x7f0c0652

    .line 683
    invoke-virtual {v2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Media;->buildQuestion(ILjava/lang/Object;)V

    goto :goto_4

    :cond_a
    const v0, 0x7f0c032f

    .line 686
    invoke-virtual {v2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Media;->buildQuestion(ILjava/lang/Object;)V

    .line 690
    :cond_b
    :goto_4
    invoke-virtual/range {p14 .. p14}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getScouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 691
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 692
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 693
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v3

    .line 694
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v3

    .line 693
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 695
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    move-object/from16 v8, p3

    if-ne v5, v8, :cond_d

    .line 696
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v8, p3

    .line 698
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 699
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    move-object/from16 v8, p3

    .line 702
    :cond_10
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getPastAssignments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    .line 703
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 704
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 705
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    if-ne v6, v8, :cond_12

    .line 706
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 708
    :cond_13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 709
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    move-object v8, v10

    .line 716
    invoke-virtual/range {p13 .. p13}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildTransferCancelledMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_15
    move-object/from16 v1, p0

    goto :goto_9

    :cond_16
    move-object v8, v10

    .line 719
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    invoke-direct {v0, v8, v6, v7}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;J)V

    .line 720
    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->setContractDetails(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    move-object/from16 v1, p0

    .line 721
    iget-object v2, v1, Lpl/mkrstudio/truefootball3/objects/Transfers;->futurePlayersIn:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    .line 722
    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    :goto_9
    return-void
.end method

.method public negotiateBuyOffer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offerAfterNegotiating"
        }
    .end annotation

    const/4 v0, 0x2

    .line 88
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDaysToResponse(B)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setReceived(Z)V

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setMade(Z)V

    .line 91
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Scouting;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z
    .locals 14
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
            "world",
            "media",
            "time",
            "inbox",
            "finances",
            "youth",
            "scouting",
            "chosenTeam",
            "context"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    .line 43
    invoke-virtual/range {v0 .. v8}, Lpl/mkrstudio/truefootball3/objects/Transfers;->checkOffers(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Scouting;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 45
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Transfers;->receivePossibleOffers(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z

    move-result v0

    :cond_0
    move-object v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p8

    .line 46
    invoke-direct {p0, v11, v12, v13}, Lpl/mkrstudio/truefootball3/objects/Transfers;->returnPlayersFromLoan(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;)V

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    .line 47
    invoke-virtual/range {v1 .. v9}, Lpl/mkrstudio/truefootball3/objects/Transfers;->checkPlayersToSign(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Youth;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Scouting;Landroid/content/Context;)V

    if-nez v0, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    .line 49
    invoke-direct/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->receivePossibleFreeAgentRecommendations(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method receivePossibleOffer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/TransferOfferType;Ljava/util/Random;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/TransferOffer;
    .locals 16
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
            "time",
            "world",
            "player",
            "tot",
            "random",
            "chosenTeam"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p4

    move-object/from16 v1, p5

    .line 215
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v12, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 216
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    if-ne v6, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 220
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    if-ne v6, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 223
    :cond_3
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 224
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    if-ne v6, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/16 v2, 0x12c

    .line 228
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_6

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v11, v6, :cond_6

    :goto_3
    const/4 v2, 0x3

    goto :goto_4

    .line 230
    :cond_6
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/Transfers;->toLoanList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v11, v6, :cond_7

    goto :goto_3

    .line 233
    :cond_7
    :goto_4
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_12

    if-nez v5, :cond_12

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p2

    .line 235
    invoke-virtual {v5, v12}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v5

    .line 236
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v13, 0x5

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    move-object/from16 v7, p6

    if-eq v6, v7, :cond_8

    .line 240
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    :cond_9
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Player;

    if-eqz v14, :cond_9

    .line 242
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    if-ne v15, v3, :cond_9

    .line 244
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v3

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v10

    sub-int/2addr v10, v13

    if-ge v3, v10, :cond_a

    const/4 v9, 0x0

    :cond_a
    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    .line 247
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getBudget()I

    move-result v3

    add-int/lit16 v3, v3, 0x61a8

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue()I

    move-result v8

    if-le v3, v8, :cond_8

    .line 248
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_c
    const/4 v3, 0x0

    :goto_6
    const/16 v8, 0xa

    if-ge v3, v8, :cond_8

    .line 250
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 255
    :cond_d
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/Transfers$1;

    invoke-direct {v3, v0}, Lpl/mkrstudio/truefootball3/objects/Transfers$1;-><init>(Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 270
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v13

    if-lez v3, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v13

    goto :goto_7

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_7
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 273
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ne v11, v2, :cond_f

    .line 274
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    add-double/2addr v1, v9

    invoke-virtual {v4, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v5

    .line 275
    :cond_f
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v11, v1, :cond_10

    .line 276
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v1

    int-to-long v1, v1

    move-wide v5, v1

    .line 277
    :cond_10
    new-instance v14, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    const/4 v2, 0x5

    const/4 v9, -0x1

    move-object v1, v14

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V

    .line 278
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v11, v1, :cond_11

    .line 279
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getNextAndNotCurrentTransferWindowDateString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x6

    .line 281
    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v2, -0x1

    .line 282
    invoke-virtual {v1, v13, v2}, Ljava/util/GregorianCalendar;->add(II)V

    move-object/from16 v2, p1

    .line 283
    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDateId(Ljava/util/GregorianCalendar;)I

    move-result v1

    invoke-virtual {v14, v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setContractEnd(I)V

    .line 285
    :cond_11
    invoke-virtual {v14, v12}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setReceived(Z)V

    return-object v14

    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method receivePossibleOffers(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "time",
            "inbox",
            "chosenTeam",
            "context"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    .line 293
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 295
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v0, 0x0

    const/4 v12, 0x0

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 296
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v0

    const/4 v13, 0x1

    if-nez v0, :cond_0

    .line 297
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->isBeginningOfTransferWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object v5, v10

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->receivePossibleOffer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/TransferOfferType;Ljava/util/Random;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, v7, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildOfferReceivedMessage(Lpl/mkrstudio/truefootball3/objects/TransferOffer;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 309
    :cond_1
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object v5, v10

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Transfers;->receivePossibleOffer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/TransferOfferType;Ljava/util/Random;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, v7, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLoanOfferReceivedMessage(Lpl/mkrstudio/truefootball3/objects/TransferOffer;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_1

    :cond_2
    return v12
.end method

.method public rejectOffer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferOffer"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public releasePlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "ud"
        }
    .end annotation

    .line 781
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    .line 782
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    mul-int/lit8 v2, v2, -0x3

    int-to-long v2, v2

    const-string v4, "contractTerminatePenalty"

    invoke-direct {v1, p2, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 781
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 783
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 784
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 785
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    const/4 p2, -0x1

    .line 786
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 789
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 790
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 792
    :cond_0
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->removeOffers(Lpl/mkrstudio/truefootball3/objects/Player;)V

    return-void
.end method

.method public removeOffers(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 759
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 760
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 761
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 765
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removePlayerFromTransferList(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public returnPlayerFromLoan(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 770
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    .line 776
    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 777
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAcceptedOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceptedOffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;)V"
        }
    .end annotation

    .line 832
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    return-void
.end method

.method public setFuturePlayersIn(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "futurePlayersIn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;",
            ">;)V"
        }
    .end annotation

    .line 840
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->futurePlayersIn:Ljava/util/List;

    return-void
.end method

.method public setNegotiatingOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "negotiatingOffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;)V"
        }
    .end annotation

    .line 860
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiatingOffers:Ljava/util/List;

    return-void
.end method

.method public setOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;)V"
        }
    .end annotation

    .line 824
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    return-void
.end method

.method public setPlayersOnLoan(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playersOnLoan"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;",
            ">;)V"
        }
    .end annotation

    .line 852
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->playersOnLoan:Ljava/util/List;

    return-void
.end method

.method public setTransferList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)V"
        }
    .end annotation

    .line 844
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transferList:Ljava/util/List;

    return-void
.end method

.method public setTransfersMadeThisWindow(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transfersMadeThisWindow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;)V"
        }
    .end annotation

    .line 868
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->transfersMadeThisWindow:Ljava/util/List;

    return-void
.end method

.method public userAcceptOffer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferOffer"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 70
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setDaysToResponse(B)V

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->acceptedOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Transfers;->offers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
