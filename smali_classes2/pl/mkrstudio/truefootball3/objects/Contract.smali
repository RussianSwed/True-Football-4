.class public Lpl/mkrstudio/truefootball3/objects/Contract;
.super Ljava/lang/Object;
.source "Contract.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6cd5e6ae5c612da6L


# instance fields
.field protected endDate:I

.field protected monthSalary:I

.field protected startDate:I

.field protected team:Lpl/mkrstudio/truefootball3/objects/Team;

.field protected type:Lpl/mkrstudio/truefootball3/enums/ContractType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILpl/mkrstudio/truefootball3/objects/Team;ILpl/mkrstudio/truefootball3/enums/ContractType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "endDate",
            "team",
            "monthSalary",
            "type"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->endDate:I

    .line 28
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 29
    iput p3, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->monthSalary:I

    .line 30
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->type:Lpl/mkrstudio/truefootball3/enums/ContractType;

    return-void
.end method

.method private getWeekSalary(D)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 34
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->monthSalary:I

    int-to-float v0, v0

    const v1, 0x4088f5c3    # 4.28f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method


# virtual methods
.method public calculateSalary(II)I
    .locals 9
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

    const-wide v0, 0x3ff999999999999aL    # 1.6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-ge p1, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v5, 0x1e

    if-ge p1, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v2, 0x23

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    const-wide v7, 0x3fc999999999999aL    # 0.2

    if-ge p1, v2, :cond_2

    int-to-double v2, p1

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v2, v2, v7

    :goto_1
    sub-double/2addr v2, v5

    goto/16 :goto_4

    :cond_2
    const/16 v2, 0x28

    if-ge p1, v2, :cond_3

    int-to-double v2, p1

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    :cond_3
    const/16 v3, 0x2d

    if-ge p1, v3, :cond_4

    const-wide v2, 0x3fd999999999999aL    # 0.4

    int-to-double v5, p1

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    :goto_2
    sub-double v2, v5, v2

    goto/16 :goto_4

    :cond_4
    const/16 v3, 0x32

    if-ge p1, v3, :cond_5

    const-wide v2, 0x3fe3333333333333L    # 0.6

    int-to-double v5, p1

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    const-wide/high16 v2, 0x4036000000000000L    # 22.0

    goto :goto_2

    :cond_5
    const/16 v3, 0x37

    if-ge p1, v3, :cond_6

    const-wide v2, 0x3fe999999999999aL    # 0.8

    int-to-double v5, p1

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    goto :goto_2

    :cond_6
    const/16 v3, 0x3c

    if-ge p1, v3, :cond_7

    mul-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, -0x2b

    :goto_3
    int-to-double v2, p1

    goto :goto_4

    :cond_7
    const/16 v5, 0x41

    if-ge p1, v5, :cond_8

    int-to-double v2, p1

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    const-wide v5, 0x4053c00000000000L    # 79.0

    goto :goto_1

    :cond_8
    const/16 v5, 0x46

    if-ge p1, v5, :cond_9

    mul-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, v2

    goto :goto_3

    :cond_9
    const/16 v2, 0x4b

    if-ge p1, v2, :cond_a

    const-wide v2, 0x3ff6666666666666L    # 1.4

    int-to-double v5, p1

    .line 71
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    const-wide/high16 v2, 0x4051000000000000L    # 68.0

    goto :goto_2

    :cond_a
    const/16 v2, 0x50

    if-ge p1, v2, :cond_b

    const-wide v2, 0x4004cccccccccccdL    # 2.6

    int-to-double v5, p1

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    const-wide v2, 0x4063c00000000000L    # 158.0

    goto :goto_2

    :cond_b
    const/16 v2, 0x55

    if-ge p1, v2, :cond_c

    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, -0x15e

    goto :goto_3

    :cond_c
    const/16 v2, 0x5a

    if-ge p1, v2, :cond_d

    mul-int/lit8 p1, p1, 0x19

    add-int/lit16 p1, p1, -0x802

    goto :goto_3

    :cond_d
    const/16 v2, 0x5f

    if-ge p1, v2, :cond_e

    mul-int/lit8 p1, p1, 0x3c

    add-int/lit16 p1, p1, -0x1450

    goto :goto_3

    :cond_e
    mul-int/lit8 p1, p1, 0x64

    add-int/lit16 p1, p1, -0x2328

    goto :goto_3

    :goto_4
    const/4 p1, 0x2

    if-le p2, p1, :cond_f

    mul-double v2, v2, v0

    goto :goto_5

    :cond_f
    if-le p2, v4, :cond_10

    const-wide p1, 0x3ff3333333333333L    # 1.2

    mul-double v2, v2, p1

    :cond_10
    :goto_5
    double-to-int p1, v2

    return p1
.end method

.method public getEndDate()I
    .locals 1

    .line 126
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->endDate:I

    return v0
.end method

.method public getMonthSalary(D)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 102
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->monthSalary:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public getStartDate()I
    .locals 1

    .line 118
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->startDate:I

    return v0
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 94
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/ContractType;
    .locals 1

    .line 110
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->type:Lpl/mkrstudio/truefootball3/enums/ContractType;

    return-object v0
.end method

.method public initRandomContract(Lpl/mkrstudio/truefootball3/objects/Time;ILpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "previousSalary",
            "newTeam"
        }
    .end annotation

    int-to-double v0, p2

    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->monthSalary:I

    .line 43
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 44
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getRandomEndDate(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDateId(Ljava/util/GregorianCalendar;)I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->endDate:I

    .line 45
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/ContractType;->REGULAR:Lpl/mkrstudio/truefootball3/enums/ContractType;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->type:Lpl/mkrstudio/truefootball3/enums/ContractType;

    return-void
.end method

.method public renew(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getRandomEndDate(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDateId(Ljava/util/GregorianCalendar;)I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->endDate:I

    return-void
.end method

.method public setEndDate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endDate"
        }
    .end annotation

    .line 130
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->endDate:I

    return-void
.end method

.method public setMonthSalary(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthSalary"
        }
    .end annotation

    .line 106
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->monthSalary:I

    return-void
.end method

.method public setStartDate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDate"
        }
    .end annotation

    .line 122
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->startDate:I

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

    .line 98
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/ContractType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Contract;->type:Lpl/mkrstudio/truefootball3/enums/ContractType;

    return-void
.end method
