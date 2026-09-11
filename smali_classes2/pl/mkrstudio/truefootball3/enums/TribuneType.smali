.class public final enum Lpl/mkrstudio/truefootball3/enums/TribuneType;
.super Ljava/lang/Enum;
.source "TribuneType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/TribuneType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum VIP:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field public static final enum WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/TribuneType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 10
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->VIP:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "SOUTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 12
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "NORTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 13
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "EAST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 14
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "WEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 15
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "VIP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->VIP:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 16
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "NORTH_EAST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 17
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "NORTH_WEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 18
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "SOUTH_EAST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 19
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    const-string v1, "SOUTH_WEST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TribuneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 10
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/TribuneType;->$values()[Lpl/mkrstudio/truefootball3/enums/TribuneType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/TribuneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/TribuneType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 10
    const-class v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/TribuneType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/TribuneType;
    .locals 1

    .line 10
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TribuneType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/TribuneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/TribuneType;

    return-object v0
.end method
