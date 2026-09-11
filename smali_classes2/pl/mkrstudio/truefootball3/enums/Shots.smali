.class public final enum Lpl/mkrstudio/truefootball3/enums/Shots;
.super Ljava/lang/Enum;
.source "Shots.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/Shots;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/Shots;

.field public static final enum ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

.field public static final enum NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

.field public static final enum OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

.field public static final enum SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/Shots;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/Shots;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shots;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shots;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shots;

    const-string v1, "SOMETIMES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shots;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shots;

    const-string v1, "OFTEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shots;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Shots;

    const-string v1, "ALWAYS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Shots;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Shots;->$values()[Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/Shots;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/Shots;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/Shots;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/Shots;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/Shots;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/Shots;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/Shots;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/Shots;

    return-object v0
.end method
