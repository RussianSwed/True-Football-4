.class public Lpl/mkrstudio/truefootball3/objects/NationChance;
.super Ljava/lang/Object;
.source "NationChance.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d2acf2d8030e653L


# instance fields
.field chance:B

.field countryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "countryCode",
            "chance"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/NationChance;->countryCode:Ljava/lang/String;

    .line 24
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/NationChance;->chance:B

    return-void
.end method


# virtual methods
.method public getChance()B
    .locals 1

    .line 34
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/NationChance;->chance:B

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/NationChance;->countryCode:Ljava/lang/String;

    return-object v0
.end method
