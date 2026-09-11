.class public Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;
.super Ljava/lang/Object;
.source "TribuneUpgrade.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x680fae3113f81e30L


# instance fields
.field endDate:Ljava/lang/String;

.field newSeats:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newSeats",
            "endDate"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->newSeats:I

    .line 17
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->endDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSeats()I
    .locals 1

    .line 23
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->newSeats:I

    return v0
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endDate"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->endDate:Ljava/lang/String;

    return-void
.end method

.method public setNewSeats(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSeats"
        }
    .end annotation

    .line 27
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;->newSeats:I

    return-void
.end method
