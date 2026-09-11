.class public Lpl/mkrstudio/truefootball3/objects/Sponsorship;
.super Ljava/lang/Object;
.source "Sponsorship.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38f8619e5a0df96bL


# instance fields
.field contractEnd:Ljava/lang/String;

.field length:I

.field monthlyIncome:J

.field name:Ljava/lang/String;

.field penalty:J

.field quality:B

.field type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->contractEnd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V
    .locals 2
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
            "sponsorships",
            "sponsorshipOffers",
            "time",
            "budget",
            "type",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "J",
            "Lpl/mkrstudio/truefootball3/enums/SponsorshipType;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->contractEnd:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 34
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->generateType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object p6

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    goto :goto_0

    .line 35
    :cond_0
    iput-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    :goto_0
    const/4 p6, 0x0

    .line 36
    invoke-direct {p0, p1, p4, p5, p6}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->calculateSum(Ljava/util/List;JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->monthlyIncome:J

    .line 37
    iget-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne p6, v0, :cond_1

    invoke-direct {p0, p4, p5}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->calculateQuality(J)B

    move-result p4

    iput-byte p4, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->quality:B

    :cond_1
    const-wide/16 p4, 0x3

    .line 38
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->monthlyIncome:J

    mul-long v0, v0, p4

    iput-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->penalty:J

    const/4 p4, 0x1

    .line 39
    invoke-virtual {p0, p3, p4}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->calculateContractEnd(Lpl/mkrstudio/truefootball3/objects/Time;Z)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->contractEnd:Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2, p7}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->generateName(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->name:Ljava/lang/String;

    return-void
.end method

.method private calculateQuality(J)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "budget"
        }
    .end annotation

    long-to-int p2, p1

    .line 44
    div-int/lit8 p2, p2, 0x64

    .line 45
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x55

    const/16 v1, 0xf

    if-le p2, v0, :cond_0

    .line 46
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    if-ge p2, v1, :cond_1

    .line 47
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0xa

    const/16 v0, 0x14

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    int-to-byte p1, p1

    return p1
.end method

.method private calculateSum(Ljava/util/List;JZ)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sponsorships",
            "budget",
            "basedOnCurrentSponsorships"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;JZ)J"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 94
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v2

    .line 96
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getMonthlyIncome()J

    move-result-wide v2

    add-long/2addr v4, v2

    long-to-int v2, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    const/4 v3, 0x1

    if-lez v1, :cond_2

    if-eqz p4, :cond_2

    .line 100
    div-int/2addr v2, v1

    goto :goto_3

    .line 102
    :cond_2
    sget-object p4, Lpl/mkrstudio/truefootball3/objects/Sponsorship$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$SponsorshipType:[I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->ordinal()I

    move-result v1

    aget p4, p4, v1

    if-eq p4, v3, :cond_7

    const/4 v1, 0x2

    if-eq p4, v1, :cond_6

    const/4 v1, 0x3

    if-eq p4, v1, :cond_5

    const/4 v1, 0x4

    if-eq p4, v1, :cond_4

    if-eq p4, p1, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x3e8

    .line 120
    div-long/2addr p2, v1

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x2ee

    .line 116
    div-long/2addr p2, v1

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0x1f4

    .line 112
    div-long/2addr p2, v1

    goto :goto_1

    :cond_6
    const-wide/16 v1, 0xfa

    .line 108
    div-long/2addr p2, v1

    goto :goto_1

    :cond_7
    const-wide/16 v1, 0x50

    .line 104
    div-long/2addr p2, v1

    :goto_1
    long-to-int v2, p2

    .line 123
    :goto_2
    iget-wide p2, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->monthlyIncome:J

    const-wide/16 v4, 0x2

    cmp-long p4, p2, v4

    if-gtz p4, :cond_8

    const-wide/16 v4, 0x1

    add-long/2addr p2, v4

    .line 124
    iput-wide p2, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->monthlyIncome:J

    :cond_8
    :goto_3
    const/16 p2, 0x96

    .line 126
    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    if-nez p2, :cond_9

    mul-int/lit8 v2, v2, 0x2

    :cond_9
    const-wide p2, 0x3f847ae147ae147bL    # 0.01

    if-gt v2, p1, :cond_a

    const-wide v4, 0x3fc999999999999aL    # 0.2

    const/16 p1, 0xa0

    .line 131
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p2

    add-double/2addr v0, v4

    int-to-double p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_4
    mul-double v0, v0, p1

    double-to-int p1, v0

    goto :goto_5

    :cond_a
    const/16 p1, 0xa

    if-gt v2, p1, :cond_b

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/16 p1, 0x64

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p2

    add-double/2addr v0, v4

    int-to-double p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_b
    const-wide v4, 0x3fe999999999999aL    # 0.8

    const/16 p1, 0x28

    .line 135
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p2

    add-double/2addr v0, v4

    int-to-double p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :goto_5
    if-ge p1, v3, :cond_c

    goto :goto_6

    :cond_c
    move v3, p1

    :goto_6
    int-to-long p1, v3

    return-wide p1
.end method

.method private exists(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "sponsorships",
            "sponsorshipOffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;",
            ">;)Z"
        }
    .end annotation

    .line 80
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 81
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 83
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 84
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private generateName(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sponsorships",
            "sponsorshipOffers",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 55
    :try_start_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v1, v2, :cond_0

    .line 56
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v1, "technical_sponsors.txt"

    invoke-virtual {p3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v1, "sponsors.txt"

    invoke-virtual {p3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    .line 60
    :goto_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :goto_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_1
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    move-object v2, v0

    .line 69
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v2, p1, p2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->exists(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    return-object v2

    .line 70
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private generateType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;
    .locals 2

    .line 143
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 146
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object v0

    :cond_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 148
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object v0

    :cond_1
    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 150
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object v0

    :cond_2
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_3

    .line 152
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object v0

    .line 154
    :cond_3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object v0
.end method


# virtual methods
.method public calculateContractEnd(Lpl/mkrstudio/truefootball3/objects/Time;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "randomize"
        }
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0xc

    if-eqz p2, :cond_0

    .line 161
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x3

    .line 162
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 163
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/lit8 v2, v3, 0xc

    add-int/2addr v2, v1

    .line 164
    iput v2, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->length:I

    goto :goto_0

    .line 166
    :cond_0
    iget v2, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->length:I

    div-int/lit8 v3, v2, 0xc

    .line 167
    rem-int/lit8 v1, v2, 0xc

    .line 169
    :goto_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v2

    const/4 v4, 0x1

    .line 170
    invoke-virtual {v2, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 171
    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    .line 173
    invoke-virtual {v2, p2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 174
    :cond_1
    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContractEnd()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->contractEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getContractEnd(Lpl/mkrstudio/truefootball3/objects/Time;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 179
    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->length:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 180
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLength()I
    .locals 1

    .line 194
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->length:I

    return v0
.end method

.method public getMonthlyIncome()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->monthlyIncome:J

    return-wide v0
.end method

.method public getMonthlyIncome(D)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 214
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->monthlyIncome:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPenalty()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->penalty:J

    return-wide v0
.end method

.method public getQuality()B
    .locals 1

    .line 238
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->quality:B

    return v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;
    .locals 1

    .line 222
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object v0
.end method

.method public setContractEnd(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contractEnd"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->contractEnd:Ljava/lang/String;

    return-void
.end method

.method public setLength(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 198
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->length:I

    return-void
.end method

.method public setMonthlyIncome(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthlyIncome"
        }
    .end annotation

    .line 218
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->monthlyIncome:J

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

    .line 234
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->name:Ljava/lang/String;

    return-void
.end method

.method public setPenalty(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "penalty"
        }
    .end annotation

    .line 206
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->penalty:J

    return-void
.end method

.method public setQuality(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .line 242
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->quality:B

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/SponsorshipType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->type:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-void
.end method
