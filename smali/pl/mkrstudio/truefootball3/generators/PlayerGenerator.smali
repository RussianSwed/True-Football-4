.class public Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;
.super Ljava/lang/Object;
.source "PlayerGenerator.java"


# instance fields
.field context:Landroid/content/Context;

.field dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

.field firstNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation
.end field

.field lastNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation
.end field

.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->lastNames:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->context:Landroid/content/Context;

    .line 47
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    .line 48
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method addMoreAttributes(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setShape(Lpl/mkrstudio/truefootball3/enums/Shape;)V

    .line 263
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateCharisma(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setCharisma(B)V

    .line 264
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateAgility(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setAgility(B)V

    .line 265
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateCrossing(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setCrossing(B)V

    .line 266
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateGoalkeeping(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setGoalkeeping(B)V

    .line 267
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateHeading(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setHeading(B)V

    .line 268
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculatePassing(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setPassing(B)V

    .line 269
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateShooting(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setShooting(B)V

    .line 270
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateStrength(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setStrength(B)V

    .line 271
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateTackling(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setTackling(B)V

    .line 272
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateTechnique(Ljava/util/Random;)B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setTechnique(B)V

    return-void
.end method

.method calculateSkill(F)B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skill"
        }
    .end annotation

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0x28

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 285
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x8

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2d

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    .line 289
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p1, v1

    rsub-int/lit8 v1, v0, 0x7

    add-int/2addr p1, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x61

    if-le p1, v0, :cond_3

    .line 294
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5e

    int-to-byte p1, p1

    :cond_3
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    const/4 p1, 0x1

    :cond_4
    int-to-byte p1, p1

    return p1
.end method

.method calculateValue(III)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseSkill",
            "positions",
            "age"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0xa

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ge p1, v2, :cond_0

    move-wide v7, v3

    goto/16 :goto_3

    :cond_0
    const/16 v5, 0xf

    if-ge p1, v5, :cond_1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    int-to-double v7, p1

    .line 353
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    sub-double/2addr v7, v3

    goto/16 :goto_3

    :cond_1
    const/16 v6, 0x14

    if-ge p1, v6, :cond_2

    const-wide v5, 0x3fe3333333333333L    # 0.6

    int-to-double v7, p1

    .line 355
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    sub-double/2addr v7, v5

    goto/16 :goto_3

    :cond_2
    const/16 v7, 0x19

    if-ge p1, v7, :cond_3

    mul-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, v5

    :goto_0
    int-to-double v7, p1

    goto/16 :goto_3

    :cond_3
    const/16 v5, 0x1e

    const/16 v7, 0x28

    if-ge p1, v5, :cond_4

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v7

    goto :goto_0

    :cond_4
    const/16 v5, 0x23

    const/16 v8, 0x46

    if-ge p1, v5, :cond_5

    mul-int/lit8 p1, p1, 0x3

    sub-int/2addr p1, v8

    goto :goto_0

    :cond_5
    if-ge p1, v7, :cond_6

    :goto_1
    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, -0x69

    goto :goto_0

    :cond_6
    const/16 v5, 0x2d

    if-ge p1, v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v5, 0x32

    if-ge p1, v5, :cond_8

    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, -0x96

    goto :goto_0

    :cond_8
    const/16 v9, 0x37

    if-ge p1, v9, :cond_9

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, -0x190

    goto :goto_0

    :cond_9
    const/16 v2, 0x3c

    if-ge p1, v2, :cond_a

    mul-int/lit8 p1, p1, 0x14

    add-int/lit16 p1, p1, -0x3b6

    goto :goto_0

    :cond_a
    const/16 v6, 0x41

    if-ge p1, v6, :cond_b

    mul-int/lit8 p1, p1, 0x28

    add-int/lit16 p1, p1, -0x866

    goto :goto_0

    :cond_b
    if-ge p1, v8, :cond_c

    mul-int/lit8 p1, p1, 0x32

    add-int/lit16 p1, p1, -0xaf0

    goto :goto_0

    :cond_c
    const/16 v5, 0x4b

    if-ge p1, v5, :cond_d

    mul-int/lit8 p1, p1, 0x3c

    add-int/lit16 p1, p1, -0xdac

    goto :goto_0

    :cond_d
    const/16 v2, 0x50

    if-ge p1, v2, :cond_e

    mul-int/lit16 p1, p1, 0x320

    const v2, 0xe678

    :goto_2
    sub-int/2addr p1, v2

    goto :goto_0

    :cond_e
    const/16 v2, 0x55

    if-ge p1, v2, :cond_f

    mul-int/lit16 p1, p1, 0x3e8

    const v2, 0x124f8

    goto :goto_2

    :cond_f
    const/16 v2, 0x5a

    if-ge p1, v2, :cond_10

    mul-int/lit16 p1, p1, 0x7d0

    const v2, 0x27100

    goto :goto_2

    :cond_10
    const/16 v2, 0x5f

    if-ge p1, v2, :cond_11

    mul-int/lit16 p1, p1, 0x1388

    const v2, 0x68fb0

    goto :goto_2

    :cond_11
    mul-int/lit16 p1, p1, 0x1770

    const v2, 0x802c8

    goto :goto_2

    :goto_3
    const-wide v5, 0x3f90ff972474538fL    # 0.0166

    add-int/lit8 p3, p3, -0x12

    int-to-double v9, p3

    .line 389
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v5

    mul-double v9, v9, v7

    sub-double/2addr v7, v9

    if-le p2, v1, :cond_12

    const-wide v1, 0x3ff999999999999aL    # 1.6

    mul-double v7, v7, v1

    :cond_12
    if-le p2, v0, :cond_13

    const-wide p1, 0x3ff3333333333333L    # 1.2

    mul-double v7, v7, p1

    :cond_13
    cmpg-double p1, v7, v3

    if-gez p1, :cond_14

    goto :goto_4

    :cond_14
    move-wide v3, v7

    :goto_4
    double-to-int p1, v3

    return p1
.end method

.method generateAge()B
    .locals 3

    .line 276
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    int-to-byte v0, v0

    .line 277
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    add-int/2addr v0, v1

    .line 278
    div-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0
.end method

.method generateCustomPlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/PlayerStub;Z)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "beforeEditing",
            "playerStub",
            "extended"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 239
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>()V

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Player;-><init>()V

    .line 243
    :goto_0
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getNationality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationality(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setName(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 246
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getAge()B

    move-result p2

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setAge(B)V

    .line 247
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setFirstPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 248
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setSecondPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 249
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getSkill()B

    move-result p2

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Player;->setSkill(B)V

    if-eqz p4, :cond_1

    .line 252
    move-object p2, v0

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->addMoreAttributes(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    .line 255
    :cond_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    const/4 p3, 0x2

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    :goto_1
    invoke-virtual {p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Time;->generateContract(II)Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 256
    invoke-virtual {v0, p4}, Lpl/mkrstudio/truefootball3/objects/Player;->setEdited(Z)V

    return-object v0
.end method

.method public generateOnePlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/Position;Z)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "team",
            "position",
            "extended"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getNationalityChances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 62
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/NationChance;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/NationChance;-><init>(Ljava/lang/String;B)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 66
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 68
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getFirstNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->lastNames:Ljava/util/HashMap;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getLastNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v7, p4

    .line 72
    invoke-virtual/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    return-object p1
.end method

.method public generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "team",
            "time",
            "position",
            "nationalities",
            "extended"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;Z)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 206
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>()V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Player;-><init>()V

    .line 210
    :goto_0
    invoke-virtual {p0, p4}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->getRandomNationality(Ljava/util/List;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lpl/mkrstudio/truefootball3/objects/Player;->setNationality(Ljava/lang/String;)V

    .line 211
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomFirstName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomLastName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lpl/mkrstudio/truefootball3/objects/Player;->setName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 214
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateAge()B

    move-result p4

    invoke-virtual {v0, p4}, Lpl/mkrstudio/truefootball3/objects/Player;->setAge(B)V

    const/4 p4, 0x1

    if-nez p3, :cond_1

    .line 217
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->getRandomPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p3

    invoke-virtual {v0, p3}, Lpl/mkrstudio/truefootball3/objects/Player;->setFirstPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    goto :goto_1

    .line 219
    :cond_1
    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePositions(Lpl/mkrstudio/truefootball3/enums/Position;)Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x0

    .line 220
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setFirstPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 221
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p4, :cond_2

    .line 222
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p3}, Lpl/mkrstudio/truefootball3/objects/Player;->setSecondPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 225
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->calculateSkill(F)B

    move-result p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSkill(B)V

    if-eqz p5, :cond_3

    .line 228
    move-object p1, v0

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->addMoreAttributes(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    .line 231
    :cond_3
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p3

    if-eqz p3, :cond_4

    const/4 p4, 0x2

    :cond_4
    invoke-virtual {p2, p1, p4}, Lpl/mkrstudio/truefootball3/objects/Time;->generateContract(II)Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    return-object v0
.end method

.method public generatePlayers(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;Lpl/mkrstudio/truefootball3/objects/EditedData;Z)V
    .locals 19
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
            "teams",
            "time",
            "chosenTeam",
            "task",
            "editedData",
            "useEditedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;",
            "Lpl/mkrstudio/truefootball3/objects/EditedData;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 81
    :try_start_0
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :goto_0
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 91
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_32

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_0

    .line 93
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :cond_0
    move-object v15, v1

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    .line 100
    iget-object v5, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v5

    const-string v4, "11.0"

    .line 101
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v16, 0x7e2

    if-eqz v4, :cond_2

    const/16 v4, 0x7e7

    goto :goto_4

    :cond_2
    const-string v4, "10.0"

    .line 102
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x7e6

    goto :goto_4

    :cond_3
    const-string v4, "9.0"

    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x7e5

    goto :goto_4

    :cond_4
    const-string v4, "8.0"

    .line 104
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x7e4

    goto :goto_4

    :cond_5
    const-string v4, "7.0"

    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x7e3

    goto :goto_4

    :cond_6
    const-string v4, "6.0"

    .line 106
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    const/16 v4, 0x7e2

    goto :goto_4

    :cond_7
    const-string v4, "5.0"

    .line 107
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    const-string v4, "4.0"

    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x7e1

    goto :goto_4

    :cond_9
    const/16 v4, 0x7e0

    .line 109
    :goto_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getAge()B

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-byte v4, v5

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->setAge(B)V

    .line 110
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getAge()B

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_1

    .line 111
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 114
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    .line 115
    invoke-interface {v15, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 118
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x64

    if-eqz v1, :cond_d

    .line 121
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 123
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/NationChance;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lpl/mkrstudio/truefootball3/objects/NationChance;-><init>(Ljava/lang/String;B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object v12, v1

    goto :goto_7

    .line 126
    :cond_d
    iget-object v1, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getNationalityChances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 128
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/NationChance;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lpl/mkrstudio/truefootball3/objects/NationChance;-><init>(Ljava/lang/String;B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_e
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 132
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 133
    iget-object v4, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    .line 134
    iget-object v4, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    iget-object v5, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getFirstNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v4, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->lastNames:Ljava/util/HashMap;

    iget-object v5, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getLastNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 140
    :goto_7
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_10

    const/16 v16, 0x1

    goto :goto_8

    :cond_10
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v17, v0

    move-object v0, v5

    move-object v5, v12

    move-object/from16 v18, v11

    const/4 v11, 0x1

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_11

    const/4 v6, 0x1

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    :goto_9
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_12

    const/4 v6, 0x1

    goto :goto_a

    :cond_12
    const/4 v6, 0x0

    :goto_a
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_13

    const/4 v6, 0x1

    goto :goto_b

    :cond_13
    const/4 v6, 0x0

    :goto_b
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_14

    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    const/4 v6, 0x0

    :goto_c
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_15

    const/4 v6, 0x1

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    :goto_d
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_17

    const/4 v6, 0x1

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    :goto_f
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_18

    const/4 v6, 0x1

    goto :goto_10

    :cond_18
    const/4 v6, 0x0

    :goto_10
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_19

    const/4 v6, 0x1

    goto :goto_11

    :cond_19
    const/4 v6, 0x0

    :goto_11
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_1a

    const/4 v6, 0x1

    goto :goto_12

    :cond_1a
    const/4 v6, 0x0

    :goto_12
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_1b

    const/4 v6, 0x1

    goto :goto_13

    :cond_1b
    const/4 v6, 0x0

    :goto_13
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_1c

    const/4 v6, 0x1

    goto :goto_14

    :cond_1c
    const/4 v6, 0x0

    :goto_14
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_1d

    const/4 v6, 0x1

    goto :goto_15

    :cond_1d
    const/4 v6, 0x0

    :goto_15
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_1e

    const/4 v6, 0x1

    goto :goto_16

    :cond_1e
    const/4 v6, 0x0

    :goto_16
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_1f

    const/4 v6, 0x1

    goto :goto_17

    :cond_1f
    const/4 v6, 0x0

    :goto_17
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_20

    const/4 v6, 0x1

    goto :goto_18

    :cond_20
    const/4 v6, 0x0

    :goto_18
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_21

    const/4 v6, 0x1

    goto :goto_19

    :cond_21
    const/4 v6, 0x0

    :goto_19
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_22

    const/4 v6, 0x1

    goto :goto_1a

    :cond_22
    const/4 v6, 0x0

    :goto_1a
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_23

    const/4 v6, 0x1

    goto :goto_1b

    :cond_23
    const/4 v6, 0x0

    :goto_1b
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_24

    const/4 v6, 0x1

    goto :goto_1c

    :cond_24
    const/4 v6, 0x0

    :goto_1c
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_25

    const/4 v6, 0x1

    goto :goto_1d

    :cond_25
    const/4 v6, 0x0

    :goto_1d
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_26

    const/4 v6, 0x1

    goto :goto_1e

    :cond_26
    const/4 v6, 0x0

    :goto_1e
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_27

    const/4 v6, 0x1

    goto :goto_1f

    :cond_27
    const/4 v6, 0x0

    :goto_1f
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    const/4 v1, 0x0

    .line 167
    :goto_21
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 168
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 169
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    if-ne v3, v4, :cond_2a

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 170
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    if-ne v14, v9, :cond_29

    const/4 v6, 0x1

    goto :goto_22

    :cond_29
    const/4 v6, 0x0

    :goto_22
    invoke-virtual {v7, v8, v2, v15, v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateCustomPlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/PlayerStub;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    goto :goto_23

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2b
    const/4 v6, 0x0

    :goto_23
    if-nez v6, :cond_2e

    const/4 v1, 0x0

    .line 176
    :goto_24
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 177
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 178
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 179
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    if-ne v14, v9, :cond_2c

    const/4 v6, 0x1

    goto :goto_25

    :cond_2c
    const/4 v6, 0x0

    :goto_25
    invoke-virtual {v7, v8, v2, v15, v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateCustomPlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/PlayerStub;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    goto :goto_26

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2e
    :goto_26
    if-nez v6, :cond_28

    .line 186
    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->F:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v14, v9, :cond_2f

    const/4 v6, 0x1

    goto :goto_27

    :cond_2f
    const/4 v6, 0x0

    :goto_27
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v14, v9, :cond_30

    const/4 v6, 0x1

    goto :goto_28

    :cond_30
    const/4 v6, 0x0

    .line 187
    :goto_28
    invoke-virtual {v7, v8, v1, v15, v6}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generateCustomPlayer(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/PlayerStub;Z)Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    .line 189
    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    :cond_31
    add-int/lit8 v13, v13, 0x1

    if-eqz v10, :cond_33

    .line 193
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0xf

    rem-int v0, v13, v0

    if-nez v0, :cond_33

    invoke-virtual {v10, v11}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    goto :goto_29

    :cond_32
    move-object/from16 v17, v0

    move-object/from16 v18, v11

    :cond_33
    :goto_29
    move-object/from16 v0, v17

    move-object/from16 v11, v18

    goto/16 :goto_1

    .line 200
    :cond_34
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    return-void
.end method

.method generatePositions(Lpl/mkrstudio/truefootball3/enums/Position;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->B:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->M:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->F:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne p1, v1, :cond_1

    .line 425
    :cond_0
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->getSimilarPositions(Lpl/mkrstudio/truefootball3/enums/Position;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->getSimilarPositions(Lpl/mkrstudio/truefootball3/enums/Position;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    aget-object p1, v1, p1

    check-cast p1, Lpl/mkrstudio/truefootball3/enums/Position;

    .line 427
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 429
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    if-lez v1, :cond_4

    .line 431
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->getSimilarPositions(Lpl/mkrstudio/truefootball3/enums/Position;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    const/4 v4, 0x0

    .line 435
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/enums/Position;

    .line 436
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-ge v6, v8, :cond_2

    .line 437
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    move-object v4, v7

    goto :goto_1

    .line 441
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method generateShape()Lpl/mkrstudio/truefootball3/enums/Shape;
    .locals 2

    .line 331
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x5

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 345
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0

    .line 343
    :cond_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0

    .line 341
    :cond_1
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0

    .line 339
    :cond_2
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0

    .line 337
    :cond_3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0

    .line 335
    :cond_4
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0
.end method

.method public getFirstNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    return-object v0
.end method

.method getFirstNationality(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nationalities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 322
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getChance()B

    move-result v3

    if-ge v0, v3, :cond_0

    .line 323
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getChance()B

    move-result v0

    .line 324
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getLastNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->lastNames:Ljava/util/HashMap;

    return-object v0
.end method

.method getRandomNationality(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nationalities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 306
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getChance()B

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 311
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getChance()B

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 313
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getRandomPosition()Lpl/mkrstudio/truefootball3/enums/Position;
    .locals 3

    .line 450
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/PositionHelper;->getAllPositions()Ljava/util/List;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/enums/Position;

    return-object v0
.end method

.method getSimilarPositions(Lpl/mkrstudio/truefootball3/enums/Position;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            ")",
            "Ljava/util/HashMap<",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    sget-object v1, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Position:[I

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x3

    .line 482
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x2

    .line 483
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    .line 459
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 567
    :pswitch_0
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 560
    :pswitch_1
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 553
    :pswitch_2
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 547
    :pswitch_3
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 541
    :pswitch_4
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 534
    :pswitch_5
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 527
    :pswitch_6
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 520
    :pswitch_7
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 513
    :pswitch_8
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 507
    :pswitch_9
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 501
    :pswitch_a
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 495
    :pswitch_b
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 489
    :pswitch_c
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :pswitch_d
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    :pswitch_e
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 468
    :pswitch_f
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 459
    :pswitch_10
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTeamsToGeneratePlayers(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "competitions",
            "world"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Lpl/mkrstudio/truefootball3/objects/World;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 587
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 588
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 589
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 593
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 594
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 595
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 596
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->isGenerateTeams()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 597
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public setFirstNames(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;)V"
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->firstNames:Ljava/util/HashMap;

    return-void
.end method

.method public setLastNames(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;)V"
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->lastNames:Ljava/util/HashMap;

    return-void
.end method

.method toString(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Contract;->getStartDate()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
