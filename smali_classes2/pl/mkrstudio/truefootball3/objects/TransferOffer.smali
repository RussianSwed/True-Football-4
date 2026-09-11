.class public Lpl/mkrstudio/truefootball3/objects/TransferOffer;
.super Ljava/lang/Object;
.source "TransferOffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x61763a6a2c71a9f8L


# instance fields
.field agentsFee:J

.field contractEnd:I

.field daysToExpire:B

.field daysToResponse:B

.field desiredSalary:J

.field fromLastSevenDays:Z

.field made:Z

.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field playerSalary:J

.field playerValue:J

.field received:Z

.field team:Lpl/mkrstudio/truefootball3/objects/Team;

.field toMade:Z

.field type:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 15
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToExpire:B

    .line 16
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToResponse:B

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->desiredSalary:J

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->fromLastSevenDays:Z

    return-void
.end method

.method public constructor <init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V
    .locals 2
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
            "daysToExpire",
            "buyer",
            "player",
            "value",
            "salary",
            "contractEnd",
            "type"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 15
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToExpire:B

    .line 16
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToResponse:B

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->desiredSalary:J

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->fromLastSevenDays:Z

    .line 40
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToExpire:B

    .line 41
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 42
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 43
    iput-wide p4, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    .line 44
    iput-wide p6, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    .line 45
    iput p8, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->contractEnd:I

    .line 46
    iput-object p9, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->type:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    return-void
.end method


# virtual methods
.method public check()Lpl/mkrstudio/truefootball3/enums/OfferAnswer;
    .locals 7

    .line 53
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->desiredSalary:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 54
    iget-wide v2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 55
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object v0

    .line 57
    :cond_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SMALL_SALARY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 61
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    .line 62
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 63
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SMALL_SALARY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object v0

    .line 65
    :cond_2
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object v0
.end method

.method public check(FI)Lpl/mkrstudio/truefootball3/enums/OfferAnswer;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "teamSkill",
            "year"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 71
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->type:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const/16 v3, 0xb

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-ne v1, v2, :cond_8

    .line 72
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    const/16 p2, 0xa

    const-wide/16 v1, 0x64

    if-ltz p1, :cond_2

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    if-gt p1, v3, :cond_2

    .line 73
    iget-wide v6, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit16 p1, p1, 0xa0

    int-to-long v8, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v10

    mul-long v8, v8, v10

    div-long/2addr v8, v1

    cmp-long p1, v6, v8

    if-lez p1, :cond_0

    .line 74
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_FIRST_SQUAD:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 75
    :cond_0
    iget-wide v6, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x7d

    int-to-long p1, p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v3

    mul-long p1, p1, v3

    div-long/2addr p1, v1

    cmp-long v0, v6, p1

    if-lez v0, :cond_1

    .line 76
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->NEGOTIATED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 78
    :cond_1
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_FIRST_SQUAD:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 79
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    if-le p1, v3, :cond_5

    .line 80
    iget-wide v6, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x82

    int-to-long v8, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v10

    mul-long v8, v8, v10

    div-long/2addr v8, v1

    cmp-long p1, v6, v8

    if-lez p1, :cond_3

    .line 81
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_BENCH:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 82
    :cond_3
    iget-wide v6, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x64

    int-to-long p1, p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v3

    mul-long p1, p1, v3

    div-long/2addr p1, v1

    cmp-long v0, v6, p1

    if-lez v0, :cond_4

    .line 83
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->NEGOTIATED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 85
    :cond_4
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_BENCH:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 87
    :cond_5
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v8, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v8

    mul-long v6, v6, v8

    div-long/2addr v6, v1

    cmp-long v8, p1, v6

    if-lez v8, :cond_6

    .line 88
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_RESERVE:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 89
    :cond_6
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    int-to-long v6, v0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v3

    mul-long v6, v6, v3

    div-long/2addr v6, v1

    cmp-long v0, p1, v6

    if-lez v0, :cond_7

    .line 90
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->NEGOTIATED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 92
    :cond_7
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_RESERVE:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 94
    :cond_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->type:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/16 v2, 0x14

    const/16 v8, 0x50

    const-wide/high16 v9, -0x3ffc000000000000L    # -2.5

    if-ne v0, v1, :cond_10

    .line 95
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateHappiness(I)B

    move-result v0

    if-le v0, v8, :cond_9

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 96
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_HAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 97
    :cond_9
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateHappiness(I)B

    move-result p2

    if-ge p2, v2, :cond_a

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_a

    .line 98
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_UNHAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 99
    :cond_a
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 100
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    cmpg-double v0, p1, v9

    if-gez v0, :cond_c

    .line 102
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0x1f4

    div-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_b

    .line 103
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 105
    :cond_b
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    :cond_c
    cmpg-double v0, p1, v6

    if-gez v0, :cond_e

    .line 107
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0xfa

    div-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_d

    .line 108
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 110
    :cond_d
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 112
    :cond_e
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x78

    div-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    .line 113
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 115
    :cond_f
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 118
    :cond_10
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->type:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    if-ne v0, v1, :cond_1a

    .line 120
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    cmpg-double p1, v0, v9

    if-gez p1, :cond_11

    .line 122
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 124
    :cond_11
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateHappiness(I)B

    move-result p1

    if-le p1, v8, :cond_12

    .line 125
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_HAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 126
    :cond_12
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateHappiness(I)B

    move-result p1

    if-ge p1, v2, :cond_13

    .line 127
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, p1, v11

    if-ltz v2, :cond_13

    .line 128
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_UNHAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 130
    :cond_13
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    if-ltz p1, :cond_14

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    if-gt p1, v3, :cond_14

    .line 131
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_FIRST_SQUAD:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 132
    :cond_14
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    if-le p1, v3, :cond_15

    .line 133
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_BENCH:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    :cond_15
    cmpg-double p1, v0, v9

    if-gez p1, :cond_16

    .line 136
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    :cond_16
    cmpg-double p1, v0, v6

    if-gez p1, :cond_18

    .line 138
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0x96

    div-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    .line 139
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 141
    :cond_17
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 143
    :cond_18
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x78

    div-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_19

    .line 144
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 146
    :cond_19
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1

    .line 151
    :cond_1a
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->NONE:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    return-object p1
.end method

.method public getAgentsFee()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->agentsFee:J

    return-wide v0
.end method

.method public getContractEnd()I
    .locals 1

    .line 197
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->contractEnd:I

    return v0
.end method

.method public getDaysToExpire()B
    .locals 1

    .line 157
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToExpire:B

    return v0
.end method

.method public getDaysToResponse()B
    .locals 1

    .line 165
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToResponse:B

    return v0
.end method

.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 237
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getPlayerSalary()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    return-wide v0
.end method

.method public getPlayerValue()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    return-wide v0
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 245
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;
    .locals 1

    .line 229
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->type:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    return-object v0
.end method

.method public isFromLastSevenDays()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->fromLastSevenDays:Z

    return v0
.end method

.method public isMade()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->made:Z

    return v0
.end method

.method public isReceived()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->received:Z

    return v0
.end method

.method public isToMade()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->toMade:Z

    return v0
.end method

.method public setAgentsFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agentsFee"
        }
    .end annotation

    .line 193
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->agentsFee:J

    return-void
.end method

.method public setContractEnd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contractEnd"
        }
    .end annotation

    .line 201
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->contractEnd:I

    return-void
.end method

.method public setDaysToExpire(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToExpire"
        }
    .end annotation

    .line 161
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToExpire:B

    return-void
.end method

.method public setDaysToResponse(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToResponse"
        }
    .end annotation

    .line 169
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->daysToResponse:B

    return-void
.end method

.method public setDesiredSalary(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedSalary"
        }
    .end annotation

    .line 253
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->desiredSalary:J

    return-void
.end method

.method public setFromLastSevenDays(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromLastSevenDays"
        }
    .end annotation

    .line 261
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->fromLastSevenDays:Z

    return-void
.end method

.method public setMade(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "made"
        }
    .end annotation

    .line 217
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->made:Z

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

    .line 241
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setPlayerSalary(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerSalary"
        }
    .end annotation

    .line 177
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerSalary:J

    return-void
.end method

.method public setPlayerValue(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerValue"
        }
    .end annotation

    .line 185
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->playerValue:J

    return-void
.end method

.method public setReceived(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "received"
        }
    .end annotation

    .line 209
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->received:Z

    return-void
.end method

.method public setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setToMade(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toMade"
        }
    .end annotation

    .line 225
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->toMade:Z

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/TransferOfferType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->type:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    return-void
.end method
