.class public final enum Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;
.super Ljava/lang/Enum;
.source "DressingRoomObservationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

.field public static final enum CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

.field public static final enum FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

.field public static final enum ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

.field public static final enum LEADER:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    .line 7
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->LEADER:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const-string v1, "CONFLICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    new-instance v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const-string v1, "FRIENDSHIP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    new-instance v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const-string v1, "ISOLATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    new-instance v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const-string v1, "LEADER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->LEADER:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    .line 7
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->$values()[Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7
    const-class v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;
    .locals 1

    .line 7
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    return-object v0
.end method
