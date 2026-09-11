.class public final enum Lpl/mkrstudio/truefootball3/enums/SuspensionType;
.super Ljava/lang/Enum;
.source "SuspensionType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/SuspensionType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/SuspensionType;

.field public static final enum ALL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

.field public static final enum DOMESTIC:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

.field public static final enum DOMESTIC_CUPS:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

.field public static final enum INTERNATIONAL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

.field public static final enum LEAGUE:Lpl/mkrstudio/truefootball3/enums/SuspensionType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/SuspensionType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    .line 10
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC_CUPS:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->INTERNATIONAL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->ALL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const-string v1, "LEAGUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SuspensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    .line 12
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const-string v1, "DOMESTIC_CUPS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SuspensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC_CUPS:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    .line 13
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const-string v1, "DOMESTIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SuspensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    .line 14
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const-string v1, "INTERNATIONAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SuspensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->INTERNATIONAL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    .line 15
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const-string v1, "ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SuspensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->ALL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    .line 10
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->$values()[Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/SuspensionType;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/SuspensionType;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/SuspensionType;
    .locals 1

    .line 10
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/SuspensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    return-object v0
.end method
