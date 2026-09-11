.class public Lpl/mkrstudio/truefootball3/objects/TicketPrices;
.super Ljava/lang/Object;
.source "TicketPrices.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x241554a78dea2836L


# instance fields
.field public continentalCups:[I

.field public domesticCups:[I

.field public friendlies:[I

.field public league:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "budget"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x5

    const/4 v6, 0x3

    cmp-long v7, p1, v4

    if-lez v7, :cond_0

    new-array v7, v6, [I

    .line 21
    fill-array-data v7, :array_0

    goto :goto_0

    :cond_0
    cmp-long v7, p1, v2

    if-lez v7, :cond_1

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    goto :goto_0

    :cond_1
    cmp-long v7, p1, v0

    if-lez v7, :cond_2

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    goto :goto_0

    :cond_2
    new-array v7, v6, [I

    fill-array-data v7, :array_3

    :goto_0
    iput-object v7, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->league:[I

    cmp-long v7, p1, v4

    if-lez v7, :cond_3

    new-array v7, v6, [I

    .line 22
    fill-array-data v7, :array_4

    goto :goto_1

    :cond_3
    cmp-long v7, p1, v2

    if-lez v7, :cond_4

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    goto :goto_1

    :cond_4
    cmp-long v7, p1, v0

    if-lez v7, :cond_5

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    goto :goto_1

    :cond_5
    new-array v7, v6, [I

    fill-array-data v7, :array_7

    :goto_1
    iput-object v7, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->domesticCups:[I

    cmp-long v7, p1, v4

    if-lez v7, :cond_6

    new-array v7, v6, [I

    .line 23
    fill-array-data v7, :array_8

    goto :goto_2

    :cond_6
    cmp-long v7, p1, v2

    if-lez v7, :cond_7

    new-array v7, v6, [I

    fill-array-data v7, :array_9

    goto :goto_2

    :cond_7
    cmp-long v7, p1, v0

    if-lez v7, :cond_8

    new-array v7, v6, [I

    fill-array-data v7, :array_a

    goto :goto_2

    :cond_8
    new-array v7, v6, [I

    fill-array-data v7, :array_b

    :goto_2
    iput-object v7, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->continentalCups:[I

    cmp-long v7, p1, v4

    if-lez v7, :cond_9

    new-array p1, v6, [I

    .line 24
    fill-array-data p1, :array_c

    goto :goto_3

    :cond_9
    cmp-long v4, p1, v2

    if-lez v4, :cond_a

    new-array p1, v6, [I

    fill-array-data p1, :array_d

    goto :goto_3

    :cond_a
    cmp-long v2, p1, v0

    new-array p1, v6, [I

    if-lez v2, :cond_b

    fill-array-data p1, :array_e

    goto :goto_3

    :cond_b
    fill-array-data p1, :array_f

    :goto_3
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->friendlies:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x28
        0x14
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x19
        0xc
        0x6
    .end array-data

    :array_2
    .array-data 4
        0xc
        0x6
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x5
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x32
        0x1e
        0xf
    .end array-data

    :array_5
    .array-data 4
        0x1e
        0xf
        0xa
    .end array-data

    :array_6
    .array-data 4
        0x14
        0xa
        0x5
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x6
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x50
        0x32
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0x28
        0x14
        0xf
    .end array-data

    :array_a
    .array-data 4
        0x19
        0xc
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x9
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xa
        0x5
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x8
        0x4
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x3
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>([I[I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "league",
            "domesticCups",
            "continentalCups",
            "friendlies"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->league:[I

    .line 30
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->domesticCups:[I

    .line 31
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->continentalCups:[I

    .line 32
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->friendlies:[I

    return-void
.end method


# virtual methods
.method public areExpensive(Lpl/mkrstudio/truefootball3/objects/Competition;)[D
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competition"
        }
    .end annotation

    move-object v0, p0

    const-wide v1, 0x3ff3333333333333L    # 1.2

    const-wide v3, -0x405b851eb851eb85L    # -0.04

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-array v5, v5, [D

    .line 38
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->friendlies:[I

    aget v10, v9, v8

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v3

    add-double/2addr v10, v1

    aput-wide v10, v5, v8

    const-wide v3, -0x404f1a9fbe76c8b4L    # -0.066

    aget v8, v9, v7

    int-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v3

    const-wide v3, 0x3ff220c49ba5e354L    # 1.133

    add-double/2addr v10, v3

    aput-wide v10, v5, v7

    const-wide v3, -0x4036666666666666L    # -0.2

    aget v7, v9, v6

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    add-double/2addr v7, v1

    aput-wide v7, v5, v6

    goto/16 :goto_1

    .line 40
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v9

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-wide v11, -0x4074c2f837b4a234L    # -0.0133

    if-eq v9, v10, :cond_3

    .line 41
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v9

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v9, v10, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-wide v3, 0x3ff774bc6a7ef9dbL    # 1.466

    const-wide v13, -0x406b851eb851eb85L    # -0.02

    if-ne v1, v2, :cond_2

    new-array v5, v5, [D

    .line 45
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->domesticCups:[I

    aget v2, v1, v8

    int-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    add-double/2addr v9, v3

    aput-wide v9, v5, v8

    aget v2, v1, v7

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v13

    const-wide v8, 0x3ff6666666666666L    # 1.4

    add-double/2addr v2, v8

    aput-wide v2, v5, v7

    aget v1, v1, v6

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v13

    add-double/2addr v1, v8

    aput-wide v1, v5, v6

    goto :goto_1

    :cond_2
    new-array v5, v5, [D

    const-wide v1, -0x407f9db22d0e5604L    # -0.008

    .line 49
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->continentalCups:[I

    aget v10, v9, v8

    int-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v1

    const-wide v1, 0x3ff70a3d70a3d70aL    # 1.44

    add-double/2addr v13, v1

    aput-wide v13, v5, v8

    aget v1, v9, v7

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v11

    add-double/2addr v1, v3

    aput-wide v1, v5, v7

    aget v1, v9, v6

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v3, -0x406b851eb851eb85L    # -0.02

    mul-double v1, v1, v3

    const-wide v3, 0x3ff6666666666666L    # 1.4

    add-double/2addr v1, v3

    aput-wide v1, v5, v6

    goto :goto_1

    :cond_3
    :goto_0
    new-array v5, v5, [D

    .line 42
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->league:[I

    aget v10, v9, v8

    int-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    const-wide v10, 0x3ff547ae147ae148L    # 1.33

    add-double/2addr v13, v10

    aput-wide v13, v5, v8

    aget v8, v9, v7

    int-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v3

    const-wide v12, 0x3ff999999999999aL    # 1.6

    add-double/2addr v10, v12

    aput-wide v10, v5, v7

    aget v7, v9, v6

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    add-double/2addr v7, v1

    aput-wide v7, v5, v6

    :goto_1
    return-object v5
.end method

.method public getContinentalCups()[I
    .locals 1

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->continentalCups:[I

    return-object v0
.end method

.method public getDomesticCups()[I
    .locals 1

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->domesticCups:[I

    return-object v0
.end method

.method public getFriendlies()[I
    .locals 1

    .line 83
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->friendlies:[I

    return-object v0
.end method

.method public getLeague()[I
    .locals 1

    .line 59
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->league:[I

    return-object v0
.end method

.method public setContinentalCups([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continentalCups"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->continentalCups:[I

    return-void
.end method

.method public setDomesticCups([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domesticCups"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->domesticCups:[I

    return-void
.end method

.method public setFriendlies([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendlies"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->friendlies:[I

    return-void
.end method

.method public setLeague([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "league"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->league:[I

    return-void
.end method
