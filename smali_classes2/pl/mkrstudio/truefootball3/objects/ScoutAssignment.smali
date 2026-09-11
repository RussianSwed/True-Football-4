.class public Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;
.super Ljava/lang/Object;
.source "ScoutAssignment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1fd237cdb19ea975L


# instance fields
.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation
.end field

.field daysLeft:I

.field financing:B

.field recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;"
        }
    .end annotation
.end field

.field region:I


# direct methods
.method public constructor <init>(Ljava/util/List;IBI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "countries",
            "daysLeft",
            "financing",
            "region"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;IBI)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->countries:Ljava/util/List;

    .line 22
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->daysLeft:I

    .line 23
    iput-byte p3, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->financing:B

    .line 24
    iput p4, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->region:I

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->recommendations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public calculateTotalCost(Lpl/mkrstudio/truefootball3/objects/Country;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .line 29
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->financing:B

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 30
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->countries:Ljava/util/List;

    invoke-static {v1, p1}, Lpl/mkrstudio/truefootball3/helpers/WorldHelper;->calculateDistanceModifier(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Country;)F

    move-result p1

    .line 31
    iget v1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->daysLeft:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
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

    .line 37
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->countries:Ljava/util/List;

    return-object v0
.end method

.method public getDaysLeft()I
    .locals 1

    .line 53
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->daysLeft:I

    return v0
.end method

.method public getFinancing()B
    .locals 1

    .line 41
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->financing:B

    return v0
.end method

.method public getRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->recommendations:Ljava/util/List;

    return-object v0
.end method

.method public getRegion()I
    .locals 1

    .line 69
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->region:I

    return v0
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

    .line 49
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->countries:Ljava/util/List;

    return-void
.end method

.method public setDaysLeft(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysLeft"
        }
    .end annotation

    .line 57
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->daysLeft:I

    return-void
.end method

.method public setFinancing(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "financing"
        }
    .end annotation

    .line 45
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->financing:B

    return-void
.end method

.method public setRecommendations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->recommendations:Ljava/util/List;

    return-void
.end method

.method public setRegion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "region"
        }
    .end annotation

    .line 73
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->region:I

    return-void
.end method
