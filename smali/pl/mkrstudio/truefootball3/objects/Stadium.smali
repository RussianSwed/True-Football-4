.class public Lpl/mkrstudio/truefootball3/objects/Stadium;
.super Ljava/lang/Object;
.source "Stadium.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x531ec0032decd893L


# instance fields
.field public MAX_EAST_CAPACITY:I

.field public MAX_NORTH_CAPACITY:I

.field public MAX_NORTH_EAST_CAPACITY:I

.field public MAX_NORTH_WEST_CAPACITY:I

.field public MAX_SOUTH_CAPACITY:I

.field public MAX_SOUTH_EAST_CAPACITY:I

.field public MAX_SOUTH_WEST_CAPACITY:I

.field public MAX_WEST_CAPACITY:I

.field gastronomyEmployeeSalary:I

.field gastronomyEmployees:I

.field maintenanceEmployeeSalary:I

.field maintenanceEmployees:I

.field name:Ljava/lang/String;

.field securityEmployeeSalary:I

.field securityEmployees:I

.field shopEmployeeSalary:I

.field shopEmployees:I

.field ticketPrices:Lpl/mkrstudio/truefootball3/objects/TicketPrices;

.field tourPrice:I

.field toursEmployeeSalary:I

.field toursEmployees:I

.field trainingFields:I

.field tribunes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Tribune;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Finances;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "finances"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployeeSalary:I

    .line 31
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployeeSalary:I

    const/4 v1, 0x1

    .line 32
    iput v1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployeeSalary:I

    const/4 v1, 0x4

    .line 33
    iput v1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployeeSalary:I

    const/4 v1, 0x3

    .line 34
    iput v1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployeeSalary:I

    const/4 v1, 0x5

    .line 36
    iput v1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tourPrice:I

    .line 38
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->trainingFields:I

    const v0, 0x88b8

    .line 40
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_CAPACITY:I

    .line 41
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_CAPACITY:I

    const/16 v0, 0x4e20

    .line 42
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_EAST_CAPACITY:I

    .line 43
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_WEST_CAPACITY:I

    const/16 v0, 0x1964

    .line 44
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_EAST_CAPACITY:I

    .line 45
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_EAST_CAPACITY:I

    .line 46
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_WEST_CAPACITY:I

    .line 47
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_WEST_CAPACITY:I

    .line 50
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;-><init>(J)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->ticketPrices:Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    .line 51
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCapacity()I

    move-result p1

    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->generateTribunes(I)V

    .line 52
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateNumberOfShopEmployees()I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployees:I

    .line 53
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateNumberOfGastronomyEmployees()I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployees:I

    .line 54
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateNumberOfSecurityEmployees()I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployees:I

    .line 55
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateNumberOfToursEmployees()I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployees:I

    .line 56
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateNumberOfMaintenanceEmployees()I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployees:I

    return-void
.end method

.method private calculateNumberOfGastronomyEmployees()I
    .locals 3

    .line 181
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_0

    return v1

    .line 185
    :cond_0
    div-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateNumberOfMaintenanceEmployees()I
    .locals 3

    .line 160
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1388

    if-ge v0, v2, :cond_0

    return v1

    .line 164
    :cond_0
    div-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateNumberOfSecurityEmployees()I
    .locals 1

    .line 176
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    .line 177
    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private calculateNumberOfShopEmployees()I
    .locals 4

    .line 189
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1388

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v3, 0xa

    .line 193
    div-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private calculateNumberOfToursEmployees()I
    .locals 2

    .line 168
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    const/16 v1, 0x3a98

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    div-int/lit16 v0, v0, 0x1388

    return v0
.end method

.method private capacityReachedMaximum()Z
    .locals 5

    .line 109
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    .line 110
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_EAST_CAPACITY:I

    if-ge v2, v3, :cond_1

    return v4

    .line 112
    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_WEST_CAPACITY:I

    if-ge v2, v3, :cond_2

    return v4

    .line 114
    :cond_2
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_CAPACITY:I

    if-ge v2, v3, :cond_3

    return v4

    .line 116
    :cond_3
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_CAPACITY:I

    if-ge v2, v3, :cond_4

    return v4

    .line 118
    :cond_4
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_EAST_CAPACITY:I

    if-ge v2, v3, :cond_5

    return v4

    .line 120
    :cond_5
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    if-ne v2, v3, :cond_6

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_WEST_CAPACITY:I

    if-ge v2, v3, :cond_6

    return v4

    .line 122
    :cond_6
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    if-ne v2, v3, :cond_7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_EAST_CAPACITY:I

    if-ge v2, v3, :cond_7

    return v4

    .line 124
    :cond_7
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_WEST_CAPACITY:I

    if-ge v1, v2, :cond_0

    return v4

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method private checkTribuneUpgrades(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    .line 91
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->getNewSeats()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 94
    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setUpgrade(Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 100
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->getNewSeats()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 102
    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setUpgrade(Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkTribunes(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Landroid/content/Context;)V
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
            "context"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    .line 132
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getDaysToAvailable()B

    move-result v3

    sub-int/2addr v3, v2

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setDaysToAvailable(B)V

    .line 134
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getDaysToAvailable()B

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setAvailable(Z)V

    goto :goto_0

    .line 138
    :cond_1
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployees:I

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateNumberOfMaintenanceEmployees()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/16 v0, 0xfa

    .line 140
    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployees:I

    const/4 v3, 0x5

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateNumberOfMaintenanceEmployees()I

    move-result v1

    iget v4, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployees:I

    sub-int/2addr v1, v4

    if-le v1, v3, :cond_3

    :cond_2
    const/16 v0, 0x19

    .line 143
    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 144
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 146
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Tribune;

    const/4 v4, 0x0

    .line 147
    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setAvailable(Z)V

    .line 148
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setDaysToAvailable(B)V

    .line 150
    :try_start_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getDaysToAvailable()B

    move-result v0

    invoke-static {p1, p3, v0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildTribuneClosedDueToMaintenance(Ljava/lang/String;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private generateTribunes(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    .line 66
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    int-to-float v3, p1

    float-to-double v4, v3

    const-wide v6, 0x4035800000000000L    # 21.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v4, v6

    double-to-int v6, v6

    invoke-direct {v1, v2, v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-direct {v1, v2, v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-direct {v1, v2, v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-direct {v1, v2, v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double v6, v6, v4

    double-to-int v6, v6

    invoke-direct {v1, v2, v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-direct {v1, v2, v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-direct {v1, v2, v4}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-direct {v1, v2, v4}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->VIP:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/high16 v4, 0x42280000    # 42.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;-><init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 77
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 78
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 79
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 80
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 83
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 84
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    .line 85
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v2

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x4

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setCapacity(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public calculateMatchOrganizationCost(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFriendly"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    if-eqz p1, :cond_0

    .line 199
    div-int/lit16 v0, v0, 0x190

    const/16 p1, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 200
    :cond_0
    div-int/lit16 v0, v0, 0xc8

    const/16 p1, 0x14

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public calculateUpgradeCost(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatsNumber"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x1388

    int-to-long v0, p1

    return-wide v0
.end method

.method public calculateUpgradeTime(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatsNumber"
        }
    .end annotation

    .line 310
    div-int/lit16 p1, p1, 0xfa0

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getCapacity()I
    .locals 4

    .line 256
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Tribune;

    .line 257
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v3

    if-nez v3, :cond_0

    .line 258
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCapacity(I)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 264
    fill-array-data v0, :array_0

    .line 265
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    const/4 v2, 0x0

    const-wide v3, 0x3fd3333333333333L    # 0.3

    const/4 v5, 0x1

    if-nez v1, :cond_0

    .line 266
    aget v1, v0, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-int v6, v6

    add-int/2addr v1, v6

    aput v1, v0, v2

    .line 267
    aget v1, v0, v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    double-to-int v7, v7

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    aput v1, v0, v5

    .line 269
    :cond_0
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    if-nez v1, :cond_1

    .line 270
    aget v1, v0, v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-int v6, v6

    add-int/2addr v1, v6

    aput v1, v0, v2

    .line 271
    aget v1, v0, v5

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-int v3, v6

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 273
    :cond_1
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    if-nez v1, :cond_2

    .line 274
    aget v1, v0, v5

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 275
    :cond_2
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    if-nez v1, :cond_3

    .line 276
    aget v1, v0, v5

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 277
    :cond_3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    if-nez v1, :cond_4

    .line 278
    aget v1, v0, v5

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 279
    :cond_4
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    if-nez v1, :cond_5

    .line 280
    aget v1, v0, v5

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 281
    :cond_5
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_6

    .line 282
    aget v1, v0, v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    add-int/2addr v1, v3

    aput v1, v0, v2

    .line 283
    :cond_6
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v1

    if-nez v1, :cond_7

    .line 284
    aget v1, v0, v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    add-int/2addr v1, v3

    aput v1, v0, v2

    .line 285
    :cond_7
    aget p1, v0, p1

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getGastronomyEmployeeSalary()I
    .locals 1

    .line 395
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployeeSalary:I

    return v0
.end method

.method public getGastronomyEmployees()I
    .locals 1

    .line 355
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployees:I

    return v0
.end method

.method public getMaintenanceEmployeeSalary()I
    .locals 1

    .line 419
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployeeSalary:I

    return v0
.end method

.method public getMaintenanceEmployees()I
    .locals 1

    .line 379
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployees:I

    return v0
.end method

.method public getMatchOrganisationCost(ZI)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isFriendly",
            "capacity"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 315
    div-int/lit16 p2, p2, 0x190

    const/16 p1, 0xa

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 316
    :cond_0
    div-int/lit16 p2, p2, 0xc8

    const/16 p1, 0x19

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getMonthlyMaintenanceCost()J
    .locals 5

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    const/4 v2, 0x1

    .line 216
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    add-long/2addr v0, v3

    const/4 v3, 0x2

    .line 217
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    int-to-long v2, v3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 218
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMonthlyStaffCost()J
    .locals 4

    .line 205
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployees:I

    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployeeSalary:I

    mul-int v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    .line 206
    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployees:I

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployeeSalary:I

    mul-int v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 207
    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployees:I

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployeeSalary:I

    mul-int v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 208
    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployees:I

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployeeSalary:I

    mul-int v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 209
    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployees:I

    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployeeSalary:I

    mul-int v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityEmployeeSalary()I
    .locals 1

    .line 403
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployeeSalary:I

    return v0
.end method

.method public getSecurityEmployees()I
    .locals 1

    .line 363
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployees:I

    return v0
.end method

.method public getShopEmployeeSalary()I
    .locals 1

    .line 387
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployeeSalary:I

    return v0
.end method

.method public getShopEmployees()I
    .locals 1

    .line 347
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployees:I

    return v0
.end method

.method public getShopRevenue(Lpl/mkrstudio/truefootball3/objects/Supporters;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supporters"
        }
    .end annotation

    .line 241
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployees:I

    if-lez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-wide v1, 0x3ff3333333333333L    # 1.2

    .line 244
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getConfidence()I

    move-result p1

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-float p1, v3

    .line 245
    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployees:I

    int-to-double v1, v1

    const-wide v3, 0x3fd51eb851eb851fL    # 0.33

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v1, v1, v2

    const/high16 v1, 0x41200000    # 10.0f

    const/16 v2, 0xc8

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    int-to-float v0, v0

    mul-float v0, v0, p1

    mul-float v0, v0, v1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;
    .locals 1

    .line 339
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->ticketPrices:Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    return-object v0
.end method

.method public getTourPrice()I
    .locals 1

    .line 427
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tourPrice:I

    return v0
.end method

.method public getToursEmployeeSalary()I
    .locals 1

    .line 411
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployeeSalary:I

    return v0
.end method

.method public getToursEmployees()I
    .locals 1

    .line 371
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployees:I

    return v0
.end method

.method public getToursRevenue(Lpl/mkrstudio/truefootball3/objects/Supporters;)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supporters"
        }
    .end annotation

    .line 224
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployees:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2

    .line 225
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-wide v1, -0x4046666666666666L    # -0.1

    .line 227
    iget v3, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tourPrice:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    add-double/2addr v3, v1

    double-to-float v1, v3

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    const/4 v1, 0x0

    .line 229
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getConfidence()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-float p1, v2

    const v2, 0x3f19999a    # 0.6f

    .line 230
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v3

    div-int/lit16 v3, v3, 0x61a8

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    .line 231
    iget v6, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployees:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-float v4, v6

    add-float/2addr v4, v2

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    const/high16 v4, 0x40800000    # 4.0f

    .line 235
    :cond_1
    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tourPrice:I

    int-to-float v2, v2

    const/16 v5, 0xc8

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    int-to-float v0, v0

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    mul-float v0, v0, v3

    mul-float v0, v0, v4

    mul-float v2, v2, v0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v2, p1

    float-to-long v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrainingFields()I
    .locals 1

    .line 435
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->trainingFields:I

    return v0
.end method

.method public getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Tribune;

    .line 290
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTribunes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Tribune;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    return-object v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "inbox",
            "context"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->checkTribunes(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->checkTribuneUpgrades(Lpl/mkrstudio/truefootball3/objects/Time;)V

    return-void
.end method

.method public setGastronomyEmployeeSalary(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gastronomyEmployeeSalary"
        }
    .end annotation

    .line 399
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployeeSalary:I

    return-void
.end method

.method public setGastronomyEmployees(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gastronomyEmployees"
        }
    .end annotation

    .line 359
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->gastronomyEmployees:I

    return-void
.end method

.method public setMaintenanceEmployeeSalary(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenanceEmployeeSalary"
        }
    .end annotation

    .line 423
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployeeSalary:I

    return-void
.end method

.method public setMaintenanceEmployees(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenanceEmployees"
        }
    .end annotation

    .line 383
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->maintenanceEmployees:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->name:Ljava/lang/String;

    return-void
.end method

.method public setSecurityEmployeeSalary(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "securityEmployeeSalary"
        }
    .end annotation

    .line 407
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployeeSalary:I

    return-void
.end method

.method public setSecurityEmployees(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "securityEmployees"
        }
    .end annotation

    .line 367
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->securityEmployees:I

    return-void
.end method

.method public setShopEmployeeSalary(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shopEmployeeSalary"
        }
    .end annotation

    .line 391
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployeeSalary:I

    return-void
.end method

.method public setShopEmployees(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shopEmployees"
        }
    .end annotation

    .line 351
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->shopEmployees:I

    return-void
.end method

.method public setTicketPrices(Lpl/mkrstudio/truefootball3/objects/TicketPrices;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ticketPrices"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->ticketPrices:Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    return-void
.end method

.method public setTourPrice(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tourPrice"
        }
    .end annotation

    .line 431
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tourPrice:I

    return-void
.end method

.method public setToursEmployeeSalary(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toursEmployeeSalary"
        }
    .end annotation

    .line 415
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployeeSalary:I

    return-void
.end method

.method public setToursEmployees(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toursEmployees"
        }
    .end annotation

    .line 375
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->toursEmployees:I

    return-void
.end method

.method public setTrainingFields(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trainingFields"
        }
    .end annotation

    .line 439
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->trainingFields:I

    return-void
.end method

.method public setTribunes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tribunes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Tribune;",
            ">;)V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Stadium;->tribunes:Ljava/util/List;

    return-void
.end method

.method public startUpgrading(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "finances",
            "tribune",
            "seatsAmount"
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 298
    invoke-virtual {p0, p4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateUpgradeTime(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 299
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateUpgradeCost(I)J

    move-result-wide v3

    neg-long v3, v3

    const-string v5, "upgradeTribune"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p2, v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 300
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p4, p1}, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;-><init>(ILjava/lang/String;)V

    .line 301
    invoke-virtual {p3, p2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setUpgrade(Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;)V

    return-void
.end method
