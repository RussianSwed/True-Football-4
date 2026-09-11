.class public Lpl/mkrstudio/truefootball3/objects/Formation;
.super Ljava/lang/Object;
.source "Formation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static DIAMOND_343:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static DIAMOND_442:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static DIAMOND_451:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static DIAMOND_451_2:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static DIAMOND_532:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static DIAMOND_541:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static OFFENSIVE_442:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_3421:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_343:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_352:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_433:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_442:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_451:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_532:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field public static REGULAR_541:Lpl/mkrstudio/truefootball3/objects/Formation; = null

.field private static final serialVersionUID:J = 0x8c73a137526cd40L


# instance fields
.field private name:Ljava/lang/String;

.field private positions:[Lpl/mkrstudio/truefootball3/enums/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 18
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    const/16 v1, 0xb

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    const-string v3, "4-4-2"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 20
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "4-4-2 (2)"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->OFFENSIVE_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 22
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "4-1-2-1-2"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 24
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "5-3-2"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_532:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 26
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "5-3-2 (2)"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_532:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 28
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "5-4-1"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_541:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 30
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "5-4-1 (2)"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_541:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 32
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "4-3-3"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_433:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 34
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "4-5-1 (2)"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_451:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 36
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "4-5-1"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_451:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 38
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "4-3-2-1"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_451_2:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 40
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "3-5-2"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_352:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 42
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "3-4-3"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_343:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 44
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v2, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v4

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v5

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v6

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v7

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v8

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v9

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v10

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v11

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v12

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v13

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, v2, v14

    const-string v3, "3-4-3 (2)"

    invoke-direct {v0, v3, v2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_343:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 46
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Formation;

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v4

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v5

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v6

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v7

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v8

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v9

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v10

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v11

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v12

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v13

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v2, v1, v14

    const-string v2, "3-4-2-1"

    invoke-direct {v0, v2, v1}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_3421:Lpl/mkrstudio/truefootball3/objects/Formation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "positions"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Formation;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Formation;->positions:[Lpl/mkrstudio/truefootball3/enums/Position;

    return-void
.end method

.method public static getAllFormations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Formation;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->OFFENSIVE_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_532:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_532:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_541:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_541:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_433:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_451:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_451:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_451_2:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_352:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_343:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->DIAMOND_343:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_3421:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Formation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;
    .locals 1

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Formation;->positions:[Lpl/mkrstudio/truefootball3/enums/Position;

    return-object v0
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

    .line 83
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Formation;->name:Ljava/lang/String;

    return-void
.end method

.method public setPositions([Lpl/mkrstudio/truefootball3/enums/Position;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positions"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Formation;->positions:[Lpl/mkrstudio/truefootball3/enums/Position;

    return-void
.end method
