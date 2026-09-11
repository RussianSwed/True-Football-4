.class public Lpl/mkrstudio/truefootball3/objects/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x24a11c550e5f2ca1L


# instance fields
.field age:B

.field condition:B

.field currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

.field edited:Z

.field firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

.field injury:Lpl/mkrstudio/truefootball3/objects/Injury;

.field name:Ljava/lang/String;

.field nationality:Ljava/lang/String;

.field secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

.field selection:B

.field skill:B

.field suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

.field team:Lpl/mkrstudio/truefootball3/objects/Team;

.field unavailable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 25
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->condition:B

    const/4 v0, -0x1

    .line 27
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->selection:B

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->unavailable:Z

    return-void
.end method


# virtual methods
.method public calculateAgility(Ljava/util/Random;)B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 357
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0x14

    const/16 v1, 0x28

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    .line 358
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3fe3333333333333L    # 0.6

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    .line 360
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_1

    int-to-double v0, p1

    .line 361
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_7

    .line 362
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v4, 0x3fe999999999999aL    # 0.8

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_2

    goto/16 :goto_4

    .line 364
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_3

    goto/16 :goto_2

    .line 366
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_4

    int-to-double v0, p1

    .line 367
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_5

    .line 368
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    if-ne v0, v1, :cond_5

    int-to-double v0, p1

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 370
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 372
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 374
    :cond_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_8

    const-wide v0, 0x3fee666666666666L    # 0.95

    int-to-double v2, p1

    .line 375
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    .line 376
    :cond_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_9

    const-wide v0, 0x3fb999999999999aL    # 0.1

    int-to-double v2, p1

    .line 377
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_9
    int-to-double v0, p1

    .line 379
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_7

    :cond_a
    :goto_0
    const-wide v0, 0x3ff199999999999aL    # 1.1

    int-to-double v2, p1

    .line 373
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_b
    :goto_1
    int-to-double v0, p1

    .line 371
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_c
    :goto_2
    const-wide v0, 0x3feb333333333333L    # 0.85

    int-to-double v2, p1

    .line 365
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    mul-double v2, v2, v0

    double-to-int p1, v2

    goto :goto_9

    :cond_d
    :goto_4
    int-to-double v0, p1

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_5
    mul-double v0, v0, v4

    goto :goto_8

    :cond_e
    :goto_6
    int-to-double v0, p1

    .line 359
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_7
    mul-double v0, v0, v2

    :goto_8
    double-to-int p1, v0

    :goto_9
    int-to-byte p1, p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_f

    const/16 p1, 0x63

    :cond_f
    const/4 v0, 0x1

    if-ge p1, v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    return p1
.end method

.method public calculateCharisma(Ljava/util/Random;)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    const/16 v0, 0x63

    .line 92
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public calculateCrossing(Ljava/util/Random;)B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 287
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0x14

    const/16 v1, 0x28

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    .line 288
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_e

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_0

    goto/16 :goto_5

    .line 290
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_1

    const-wide v1, 0x3fda3d70a3d70a3dL    # 0.41

    int-to-double v3, v0

    .line 291
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_6

    .line 292
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_2

    goto/16 :goto_4

    .line 294
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3ff199999999999aL    # 1.1

    if-eq p1, v1, :cond_c

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_3

    goto/16 :goto_2

    .line 296
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_4

    const-wide v1, 0x3fe999999999999aL    # 0.8

    int-to-double v3, v0

    .line 297
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_6

    .line 298
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_5

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    int-to-double v3, v0

    .line 299
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_6

    .line 300
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_b

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_6

    goto :goto_1

    .line 302
    :cond_6
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_a

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_7

    goto :goto_0

    .line 304
    :cond_7
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_8

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    int-to-double v3, v0

    .line 305
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 306
    :cond_8
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_9

    const-wide v1, 0x3fd3333333333333L    # 0.3

    int-to-double v3, v0

    .line 307
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_9
    const-wide v1, 0x3fe3333333333333L    # 0.6

    int-to-double v3, v0

    .line 309
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_a
    :goto_0
    int-to-double v0, v0

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_b
    :goto_1
    const-wide v1, 0x3ff0cccccccccccdL    # 1.05

    int-to-double v3, v0

    .line 301
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_c
    :goto_2
    int-to-double v0, v0

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    mul-double v0, v0, v2

    double-to-int p1, v0

    goto :goto_7

    :cond_d
    :goto_4
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v0

    .line 293
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_e
    :goto_5
    const-wide v1, 0x3fd6666666666666L    # 0.35

    int-to-double v3, v0

    .line 289
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    :goto_6
    mul-double v3, v3, v1

    double-to-int p1, v3

    :goto_7
    const/16 v0, 0x63

    if-le p1, v0, :cond_f

    const/16 p1, 0x63

    :cond_f
    const/4 v0, 0x1

    if-ge p1, v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    int-to-byte p1, p1

    return p1
.end method

.method public calculateGoalkeeping(Ljava/util/Random;)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_0

    .line 143
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    goto :goto_0

    .line 145
    :cond_0
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    div-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    int-to-byte p1, p1

    :goto_0
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    const/16 p1, 0x63

    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method public calculateHappiness(I)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month"
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-byte p1, p1

    const v0, 0xd903

    mul-int p1, p1, v0

    int-to-byte p1, p1

    .line 435
    rem-int/lit8 p1, p1, 0x63

    int-to-byte p1, p1

    return p1
.end method

.method public calculateHeading(Ljava/util/Random;)B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 217
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0x12

    const/16 v1, 0x24

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    .line 218
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_0

    goto/16 :goto_7

    .line 220
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    if-ne v0, v1, :cond_1

    int-to-double v0, p1

    .line 221
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v0, v0, v2

    :goto_1
    double-to-int p1, v0

    goto/16 :goto_9

    .line 222
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_2

    goto/16 :goto_6

    .line 224
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_3

    goto/16 :goto_4

    .line 226
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_4

    const-wide v0, 0x3feb333333333333L    # 0.85

    int-to-double v2, p1

    .line 227
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_8

    .line 228
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_5

    const-wide v0, 0x3fe6666666666666L    # 0.7

    int-to-double v2, p1

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_8

    .line 230
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_6

    goto :goto_3

    .line 232
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 234
    :cond_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_8

    int-to-double v0, p1

    .line 235
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 236
    :cond_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_9

    const-wide v0, 0x3fd3333333333333L    # 0.3

    int-to-double v2, p1

    .line 237
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_8

    :cond_9
    const-wide v0, 0x3fe199999999999aL    # 0.55

    int-to-double v2, p1

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_8

    :cond_a
    :goto_2
    int-to-double v0, p1

    .line 233
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_b
    :goto_3
    int-to-double v0, p1

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_c
    :goto_4
    int-to-double v0, p1

    .line 225
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_5
    mul-double v0, v0, v4

    goto/16 :goto_1

    :cond_d
    :goto_6
    const-wide v0, 0x3fe999999999999aL    # 0.8

    int-to-double v2, p1

    .line 223
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_8

    :cond_e
    :goto_7
    const-wide v0, 0x3ff0cccccccccccdL    # 1.05

    int-to-double v2, p1

    .line 219
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_8
    mul-double v2, v2, v0

    double-to-int p1, v2

    :goto_9
    int-to-byte p1, p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_f

    const/16 p1, 0x63

    :cond_f
    const/4 v0, 0x1

    if-ge p1, v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    return p1
.end method

.method public calculateMorale(Ljava/util/Random;)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    const/16 v0, 0x63

    .line 101
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public calculatePassing(Ljava/util/Random;)B
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 251
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0x10

    const/16 v1, 0x20

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    .line 252
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_e

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_0

    goto/16 :goto_8

    .line 254
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3ff199999999999aL    # 1.1

    if-ne p1, v1, :cond_1

    int-to-double v0, v0

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v0, v0, v2

    :goto_1
    double-to-int p1, v0

    goto/16 :goto_a

    .line 256
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v4, 0x3feb333333333333L    # 0.85

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_2

    goto/16 :goto_6

    .line 258
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v6, 0x3fe6666666666666L    # 0.7

    if-eq p1, v1, :cond_c

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_3

    goto :goto_4

    .line 260
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_4

    int-to-double v0, v0

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 262
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    if-ne p1, v1, :cond_5

    int-to-double v0, v0

    .line 263
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 264
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_b

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_6

    goto :goto_3

    .line 266
    :cond_6
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_a

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_7

    goto :goto_2

    .line 268
    :cond_7
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_8

    int-to-double v0, v0

    .line 269
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_7

    .line 270
    :cond_8
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_9

    int-to-double v0, v0

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_9
    int-to-double v0, v0

    .line 273
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_a
    :goto_2
    int-to-double v0, v0

    .line 267
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    :cond_b
    :goto_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v0

    .line 265
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_9

    :cond_c
    :goto_4
    int-to-double v0, v0

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_5
    mul-double v0, v0, v6

    goto/16 :goto_1

    :cond_d
    :goto_6
    int-to-double v0, v0

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_7
    mul-double v0, v0, v4

    goto/16 :goto_1

    :cond_e
    :goto_8
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    int-to-double v3, v0

    .line 253
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    :goto_9
    mul-double v3, v3, v1

    double-to-int p1, v3

    :goto_a
    const/16 v0, 0x63

    if-le p1, v0, :cond_f

    const/16 p1, 0x63

    :cond_f
    const/4 v0, 0x1

    if-ge p1, v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    int-to-byte p1, p1

    return p1
.end method

.method public calculateShooting(Ljava/util/Random;)B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 391
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0x14

    const/16 v1, 0x28

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    .line 392
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3fe3333333333333L    # 0.6

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    .line 394
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_1

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    int-to-double v2, p1

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v2, v2, v0

    double-to-int p1, v2

    goto/16 :goto_9

    .line 396
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_2

    goto/16 :goto_5

    .line 398
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_3

    goto/16 :goto_4

    .line 400
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_4

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    int-to-double v2, p1

    .line 401
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 402
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v4, 0x3fee666666666666L    # 0.95

    if-ne v0, v1, :cond_5

    int-to-double v0, p1

    .line 403
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v0, v0, v4

    goto/16 :goto_8

    .line 404
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_6

    goto :goto_3

    .line 406
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 408
    :cond_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_8

    const-wide v0, 0x3ff199999999999aL    # 1.1

    int-to-double v2, p1

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 410
    :cond_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_9

    const-wide v0, 0x3fc999999999999aL    # 0.2

    int-to-double v2, p1

    .line 411
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    :cond_9
    int-to-double v0, p1

    .line 413
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_7

    :cond_a
    :goto_2
    int-to-double v0, p1

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_b
    :goto_3
    const-wide v0, 0x3fe999999999999aL    # 0.8

    int-to-double v2, p1

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_0

    :cond_c
    :goto_4
    const-wide v0, 0x3fe6666666666666L    # 0.7

    int-to-double v2, p1

    .line 399
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_0

    :cond_d
    :goto_5
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    int-to-double v2, p1

    .line 397
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_0

    :cond_e
    :goto_6
    int-to-double v0, p1

    .line 393
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_7
    mul-double v0, v0, v2

    :goto_8
    double-to-int p1, v0

    :goto_9
    int-to-byte p1, p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_f

    const/16 p1, 0x63

    :cond_f
    const/4 v0, 0x1

    if-ge p1, v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    return p1
.end method

.method public calculateStrength(Ljava/util/Random;)B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 189
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0xf

    const/16 v1, 0x1e

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    .line 190
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 192
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_1

    const-wide v0, 0x3ff0cccccccccccdL    # 1.05

    int-to-double v2, p1

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_4

    .line 194
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_2

    goto/16 :goto_2

    .line 196
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_4

    const-wide v0, 0x3fee666666666666L    # 0.95

    int-to-double v2, p1

    .line 199
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    .line 200
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 202
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_6

    const-wide v0, 0x3fe6666666666666L    # 0.7

    int-to-double v2, p1

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_6
    const-wide v0, 0x3fe199999999999aL    # 0.55

    int-to-double v2, p1

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_7
    :goto_0
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    int-to-double v2, p1

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_8
    :goto_1
    const-wide v0, 0x3fe999999999999aL    # 0.8

    int-to-double v2, p1

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_9
    :goto_2
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    int-to-double v2, p1

    .line 195
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_4

    :cond_a
    :goto_3
    const-wide v0, 0x3ff199999999999aL    # 1.1

    int-to-double v2, p1

    .line 191
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_4
    mul-double v2, v2, v0

    double-to-int p1, v2

    int-to-byte p1, p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_b

    const/16 p1, 0x63

    :cond_b
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    const/4 p1, 0x1

    :cond_c
    return p1
.end method

.method public calculateTackling(Ljava/util/Random;)B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 159
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0xa

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    .line 160
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_a

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_0

    goto/16 :goto_4

    .line 162
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_1

    const-wide v1, 0x3ff0cccccccccccdL    # 1.05

    int-to-double v3, v0

    .line 163
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_5

    .line 164
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_9

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_2

    goto :goto_3

    .line 166
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_3

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    int-to-double v3, v0

    .line 167
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 168
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    if-eq p1, v1, :cond_8

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 170
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_5

    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    .line 171
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    .line 172
    :cond_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_6

    goto :goto_0

    :cond_6
    const-wide v1, 0x3fe3333333333333L    # 0.6

    int-to-double v3, v0

    .line 175
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_7
    :goto_0
    int-to-double v0, v0

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    :cond_8
    :goto_1
    int-to-double v0, v0

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_2
    mul-double v0, v0, v2

    double-to-int p1, v0

    goto :goto_6

    :cond_9
    :goto_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v0

    .line 165
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5

    :cond_a
    :goto_4
    const-wide v1, 0x3ff199999999999aL    # 1.1

    int-to-double v3, v0

    .line 161
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    :goto_5
    mul-double v3, v3, v1

    double-to-int p1, v3

    :goto_6
    const/16 v0, 0x63

    if-le p1, v0, :cond_b

    const/16 p1, 0x63

    :cond_b
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    const/4 p1, 0x1

    :cond_c
    int-to-byte p1, p1

    return p1
.end method

.method public calculateTechnique(Ljava/util/Random;)B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 323
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/lit8 v0, v0, -0x14

    const/16 v1, 0x28

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getRandomNumber(Ljava/util/Random;I)I

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    .line 324
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    .line 326
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    if-ne v0, v1, :cond_1

    int-to-double v0, p1

    .line 327
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v0, v0, v2

    double-to-int p1, v0

    goto/16 :goto_7

    .line 328
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_2

    goto/16 :goto_4

    .line 330
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_3

    goto/16 :goto_3

    .line 332
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_4

    const-wide v0, 0x3fe999999999999aL    # 0.8

    int-to-double v2, p1

    .line 333
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_6

    .line 334
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide v2, 0x3ff199999999999aL    # 1.1

    if-ne v0, v1, :cond_5

    int-to-double v0, p1

    .line 335
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 336
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 338
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_7

    goto :goto_1

    .line 340
    :cond_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_8

    const-wide v0, 0x3fee666666666666L    # 0.95

    int-to-double v2, p1

    .line 341
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    .line 342
    :cond_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_9

    const-wide v0, 0x3fb999999999999aL    # 0.1

    int-to-double v2, p1

    .line 343
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_9
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    int-to-double v2, p1

    .line 345
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_a
    :goto_1
    int-to-double v0, p1

    .line 339
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_0

    :cond_b
    :goto_2
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    int-to-double v2, p1

    .line 337
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_c
    :goto_3
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    int-to-double v2, p1

    .line 331
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_6

    :cond_d
    :goto_4
    int-to-double v0, p1

    .line 329
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto/16 :goto_0

    :cond_e
    :goto_5
    const-wide v0, 0x3fd999999999999aL    # 0.4

    int-to-double v2, p1

    .line 325
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    :goto_6
    mul-double v2, v2, v0

    double-to-int p1, v2

    :goto_7
    int-to-byte p1, p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_f

    const/16 p1, 0x63

    :cond_f
    const/4 v0, 0x1

    if-ge p1, v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    return p1
.end method

.method public getAge()B
    .locals 1

    .line 603
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->age:B

    return v0
.end method

.method public getAgility()B
    .locals 1

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateAgility(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getCharisma()B
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateCharisma(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getCondition()B
    .locals 1

    .line 627
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->condition:B

    return v0
.end method

.method public getCrossing()B
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateCrossing(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;
    .locals 1

    .line 675
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

    return-object v0
.end method

.method public getCurrentRating(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "competitions",
            "competitionId"
        }
    .end annotation

    .line 564
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    const-string v3, ""

    .line 565
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    :cond_1
    invoke-virtual {v2, p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getRatingForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)F

    move-result v3

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_0

    .line 567
    invoke-virtual {v2, p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getRatingForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-float p1, v1

    div-float/2addr v0, p1

    return v0
.end method

.method public getDrawableForShape(Lpl/mkrstudio/truefootball3/enums/Shape;Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shape",
            "res",
            "pac"
        }
    .end annotation

    .line 537
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Player$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Shape:[I

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Shape;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "drawable"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "shape4"

    .line 547
    invoke-virtual {p2, p1, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const-string p1, "shape3"

    .line 545
    invoke-virtual {p2, p1, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const-string p1, "shape2"

    .line 543
    invoke-virtual {p2, p1, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const-string p1, "shape1"

    .line 541
    invoke-virtual {p2, p1, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4
    const-string p1, "shape0"

    .line 539
    invoke-virtual {p2, p1, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;
    .locals 1

    .line 611
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    return-object v0
.end method

.method public getGoalkeeping()B
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateGoalkeeping(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getHeading()B
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateHeading(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;
    .locals 1

    .line 651
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    return-object v0
.end method

.method public getMorale()B
    .locals 1

    .line 113
    instance-of v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    if-eqz v0, :cond_0

    .line 114
    move-object v0, p0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getMorale()B

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateMorale(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getMorale(I)B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    int-to-double v0, p1

    const-wide v2, -0x4056666666666666L    # -0.05

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    add-double/2addr v0, v2

    double-to-float p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateMorale(Ljava/util/Random;)B

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .line 587
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getPassing()B
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculatePassing(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getPotential()I
    .locals 4

    .line 35
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getPotentialAge()I
    .locals 2

    .line 39
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getPotential()I

    move-result v0

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->age:B

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x30

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getRandomNumber(Ljava/util/Random;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "range"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    if-ge p2, v0, :cond_1

    return v0

    :cond_1
    sub-int/2addr p2, v0

    .line 444
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    .line 446
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p1, v1

    .line 447
    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    return v0

    :cond_3
    return p1
.end method

.method public getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;
    .locals 1

    .line 619
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    return-object v0
.end method

.method public getSelection()B
    .locals 1

    .line 643
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->selection:B

    return v0
.end method

.method public getShape()Lpl/mkrstudio/truefootball3/enums/Shape;
    .locals 1

    .line 43
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0
.end method

.method public getShooting()B
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateShooting(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 7

    .line 48
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 49
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    goto/16 :goto_2

    .line 50
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->nationality:Ljava/lang/String;

    const-string v2, "KOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\\s+"

    const-string v3, "."

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->nationality:Ljava/lang/String;

    const-string v6, "PRK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->nationality:Ljava/lang/String;

    const-string v6, "CHN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    :goto_0
    array-length v3, v0

    if-ge v4, v3, :cond_2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_2

    .line 65
    :catch_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    return-object v0

    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    aget-object v2, v0, v5

    .line 53
    array-length v6, v0

    if-le v6, v4, :cond_4

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_4
    array-length v4, v0

    const/4 v6, 0x2

    if-le v4, v6, :cond_2

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public getSkill()B
    .locals 1

    .line 635
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    return v0
.end method

.method public getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, p1, :cond_0

    .line 517
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    return p1

    .line 518
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    const-wide/16 v1, 0x5

    if-ne v0, p1, :cond_1

    .line 519
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    int-to-long v3, p1

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x9

    int-to-long v5, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v7

    rem-long/2addr v7, v1

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    long-to-int p1, v0

    :goto_1
    int-to-byte p1, p1

    return p1

    .line 520
    :cond_1
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v3, :cond_2

    const-wide/16 v0, 0x1

    .line 521
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x8

    rem-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int p1, v2

    goto :goto_1

    .line 522
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v0, v3, :cond_6

    .line 523
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-static {v0, p1}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->arePositionsSimilar(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 525
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    int-to-long v3, p1

    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x4

    int-to-long v5, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v7

    rem-long/2addr v7, v1

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 527
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    int-to-long v3, p1

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x3

    int-to-long v5, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v7

    rem-long/2addr v7, v1

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 529
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    int-to-long v3, p1

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x7

    int-to-long v5, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v7

    rem-long/2addr v7, v1

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 531
    :cond_5
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    int-to-long v4, p1

    div-int/2addr p1, v3

    int-to-long v6, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v8

    rem-long/2addr v8, v1

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto/16 :goto_0

    .line 533
    :cond_6
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->hash(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    rem-long/2addr v3, v5

    add-long/2addr v3, v1

    long-to-int p1, v3

    goto/16 :goto_1
.end method

.method public getStrength()B
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateStrength(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getSuspension()Lpl/mkrstudio/truefootball3/objects/Suspension;
    .locals 1

    .line 659
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    return-object v0
.end method

.method public getTackling()B
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateTackling(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 579
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getTeam(Lpl/mkrstudio/truefootball3/objects/Transfers;)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transfers"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getPlayersOnLoan()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    .line 75
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 76
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTechnique()B
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->calculateTechnique(Ljava/util/Random;)B

    move-result v0

    return v0
.end method

.method public getTemperament()B
    .locals 1

    .line 106
    instance-of v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    if-eqz v0, :cond_0

    .line 107
    move-object v0, p0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getValue()I
    .locals 9

    .line 460
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    const-wide v1, 0x3ff3333333333333L    # 1.2

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-wide v3, 0x3fd3333333333333L    # 0.3

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_0
    sub-double/2addr v5, v3

    goto/16 :goto_4

    :cond_0
    const/16 v3, 0xf

    if-ge v0, v3, :cond_1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    int-to-double v5, v0

    .line 461
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    goto :goto_0

    :cond_1
    const/16 v4, 0x14

    if-ge v0, v4, :cond_2

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    int-to-double v5, v0

    .line 462
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_2
    const/16 v4, 0x19

    if-ge v0, v4, :cond_3

    int-to-double v3, v0

    .line 463
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    sub-double v5, v3, v5

    goto/16 :goto_4

    :cond_3
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_4

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    int-to-double v5, v0

    .line 464
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    goto :goto_0

    :cond_4
    const/16 v5, 0x23

    if-ge v0, v5, :cond_5

    const-wide v3, 0x3ffccccccccccccdL    # 1.8

    int-to-double v5, v0

    .line 465
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x4039000000000000L    # 25.0

    goto :goto_0

    :cond_5
    const/16 v5, 0x28

    if-ge v0, v5, :cond_6

    const-wide v3, 0x4000cccccccccccdL    # 2.1

    int-to-double v5, v0

    .line 466
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_6
    const/16 v5, 0x2d

    if-ge v0, v5, :cond_7

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    int-to-double v5, v0

    .line 467
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide v3, 0x4041800000000000L    # 35.0

    goto :goto_0

    :cond_7
    const/16 v5, 0x32

    if-ge v0, v5, :cond_8

    const-wide v3, 0x4007333333333333L    # 2.9

    int-to-double v5, v0

    .line 468
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x37

    if-ge v0, v5, :cond_9

    const-wide v3, 0x400a666666666666L    # 3.3

    int-to-double v5, v0

    .line 469
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide v3, 0x4046800000000000L    # 45.0

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x3c

    if-ge v0, v5, :cond_a

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, v4

    :goto_1
    int-to-double v5, v0

    goto :goto_4

    :cond_a
    const/16 v4, 0x41

    if-ge v0, v4, :cond_b

    mul-int/lit8 v0, v0, 0x7

    :goto_2
    sub-int/2addr v0, v3

    goto :goto_1

    :cond_b
    const/16 v4, 0x46

    if-ge v0, v4, :cond_c

    mul-int/lit8 v0, v0, 0xf

    goto :goto_2

    :cond_c
    const/16 v3, 0x4b

    const/16 v4, 0x50

    if-ge v0, v3, :cond_d

    mul-int/lit8 v0, v0, 0x50

    add-int/lit16 v0, v0, -0x9c4

    goto :goto_1

    :cond_d
    if-ge v0, v4, :cond_e

    mul-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, -0xbb8

    goto :goto_1

    :cond_e
    const/16 v3, 0x55

    if-ge v0, v3, :cond_f

    mul-int/lit16 v0, v0, 0x190

    add-int/lit16 v0, v0, -0xdac

    goto :goto_1

    :cond_f
    const/16 v3, 0x5a

    if-ge v0, v3, :cond_10

    mul-int/lit16 v0, v0, 0x2bc

    add-int/lit16 v0, v0, -0xfa0

    goto :goto_1

    :cond_10
    const/16 v3, 0x5f

    if-ge v0, v3, :cond_11

    mul-int/lit16 v0, v0, 0x578

    add-int/lit16 v0, v0, -0x1194

    goto :goto_1

    :cond_11
    const/16 v3, 0x61

    if-ge v0, v3, :cond_12

    mul-int/lit16 v0, v0, 0x640

    :goto_3
    add-int/lit16 v0, v0, -0x1388

    goto :goto_1

    :cond_12
    const/16 v3, 0x62

    if-ge v0, v3, :cond_13

    mul-int/lit16 v0, v0, 0x708

    goto :goto_3

    :cond_13
    const/16 v3, 0x63

    if-ge v0, v3, :cond_14

    mul-int/lit16 v0, v0, 0x7d0

    goto :goto_3

    :cond_14
    mul-int/lit16 v0, v0, 0x9c4

    goto :goto_3

    :goto_4
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    .line 483
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->age:B

    add-int/lit8 v0, v0, -0x12

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    mul-double v7, v7, v5

    sub-double/2addr v5, v7

    .line 486
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eqz v0, :cond_15

    mul-double v5, v5, v1

    :cond_15
    double-to-int v0, v5

    return v0
.end method

.method public getValue(D)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method hash(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 426
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 427
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public heal()V
    .locals 2

    .line 86
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Injury;->getDaysLeft()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Injury;->setDaysLeft(I)V

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Injury;->getDaysLeft()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    :cond_0
    return-void
.end method

.method public improveOrWorsen()V
    .locals 2

    .line 130
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x5

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 133
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    add-int/2addr v1, v0

    int-to-byte v0, v1

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 135
    iput-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    .line 136
    :cond_0
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    .line 137
    iput-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    :cond_1
    return-void
.end method

.method public isEdited()Z
    .locals 1

    .line 683
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->edited:Z

    return v0
.end method

.method public isInjured()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cType"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 494
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->ALL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 496
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    if-ne v0, v2, :cond_3

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_3

    :cond_2
    return v3

    .line 498
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC_CUPS:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    if-ne v0, v2, :cond_4

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_4

    return v3

    .line 500
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    if-ne v0, v2, :cond_6

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq p1, v0, :cond_5

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_6

    :cond_5
    return v3

    .line 502
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->INTERNATIONAL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    if-ne v0, v2, :cond_8

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq p1, v0, :cond_7

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_8

    :cond_7
    return v3

    :cond_8
    return v1
.end method

.method public isUnavailable()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->unavailable:Z

    return v0
.end method

.method public lowerSuspension(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cType"
        }
    .end annotation

    .line 508
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 509
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getMatchesLeft()B

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->setMatchesLeft(B)V

    .line 510
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getMatchesLeft()B

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 511
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    :cond_0
    return-void
.end method

.method public recover(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 553
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->condition:B

    add-int/2addr v0, p1

    const/16 p1, 0x64

    if-le v0, p1, :cond_0

    .line 555
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->condition:B

    goto :goto_0

    :cond_0
    int-to-byte p1, v0

    .line 557
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->condition:B

    :goto_0
    return-void
.end method

.method public setAge(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "age"
        }
    .end annotation

    .line 607
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->age:B

    return-void
.end method

.method public setCondition(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .line 631
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->condition:B

    return-void
.end method

.method public setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentContract"
        }
    .end annotation

    .line 679
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

    return-void
.end method

.method public setEdited(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edited"
        }
    .end annotation

    .line 687
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->edited:Z

    return-void
.end method

.method public setFirstPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstPosition"
        }
    .end annotation

    .line 615
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    return-void
.end method

.method public setInjury(Lpl/mkrstudio/truefootball3/objects/Injury;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "injury"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

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

    .line 599
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->name:Ljava/lang/String;

    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nationality"
        }
    .end annotation

    .line 591
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->nationality:Ljava/lang/String;

    return-void
.end method

.method public setSecondPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondPosition"
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    return-void
.end method

.method public setSelection(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selection"
        }
    .end annotation

    .line 647
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->selection:B

    return-void
.end method

.method public setSkill(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skill"
        }
    .end annotation

    .line 639
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    return-void
.end method

.method public setSuspension(Lpl/mkrstudio/truefootball3/objects/Suspension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suspension"
        }
    .end annotation

    .line 663
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

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

    .line 583
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setUnavailable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unavailable"
        }
    .end annotation

    .line 671
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->unavailable:Z

    return-void
.end method

.method public worsen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "howMuch"
        }
    .end annotation

    .line 124
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 126
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Player;->skill:B

    :cond_0
    return-void
.end method
