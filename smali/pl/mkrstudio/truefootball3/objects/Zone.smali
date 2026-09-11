.class public Lpl/mkrstudio/truefootball3/objects/Zone;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xde7d5223a4d5ae7L


# instance fields
.field code:Ljava/lang/String;

.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation
.end field

.field id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "id"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->countries:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->code:Ljava/lang/String;

    .line 19
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->id:I

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->countries:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 29
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->id:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->code:Ljava/lang/String;

    return-void
.end method

.method public setCountries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->countries:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 33
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Zone;->id:I

    return-void
.end method
