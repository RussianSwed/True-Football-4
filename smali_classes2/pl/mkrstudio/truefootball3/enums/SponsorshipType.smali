.class public final enum Lpl/mkrstudio/truefootball3/enums/SponsorshipType;
.super Ljava/lang/Enum;
.source "SponsorshipType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/SponsorshipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

.field public static final enum MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

.field public static final enum OTHER:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

.field public static final enum SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

.field public static final enum SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

.field public static final enum STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

.field public static final enum TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/SponsorshipType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->OTHER:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const-string v1, "TECHNICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const-string v1, "SHIRT_PRIMARY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const-string v1, "SHIRT_SECONDARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const-string v1, "STADIUM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->OTHER:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->$values()[Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/SponsorshipType;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/SponsorshipType;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    return-object v0
.end method
