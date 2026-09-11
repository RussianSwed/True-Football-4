.class public final enum Lpl/mkrstudio/truefootball3/enums/Shape;
.super Ljava/lang/Enum;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/Shape;

.field public static final enum AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

.field public static final enum BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

.field public static final enum GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

.field public static final enum VERY_BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

.field public static final enum VERY_GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/Shape;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shape;

    const-string v1, "VERY_BAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shape;

    const-string v1, "BAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shape;

    const-string v1, "AVERAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shape;

    const-string v1, "GOOD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shape;

    const-string v1, "VERY_GOOD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Shape;->$values()[Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/Shape;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/Shape;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0
.end method
