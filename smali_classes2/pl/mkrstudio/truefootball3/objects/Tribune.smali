.class public Lpl/mkrstudio/truefootball3/objects/Tribune;
.super Ljava/lang/Object;
.source "Tribune.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x419871347be9dd69L


# instance fields
.field private available:Z

.field private capacity:I

.field private daysToAvailable:B

.field private ticketPrice:I

.field private type:Lpl/mkrstudio/truefootball3/enums/TribuneType;

.field private upgrade:Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->available:Z

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/enums/TribuneType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "capacity"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->available:Z

    .line 26
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->type:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    .line 27
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->capacity:I

    return-void
.end method


# virtual methods
.method public getCapacity()I
    .locals 1

    .line 33
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->available:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 34
    :cond_0
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->capacity:I

    return v0
.end method

.method public getDaysToAvailable()B
    .locals 1

    .line 46
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->daysToAvailable:B

    return v0
.end method

.method public getTicketPrice()I
    .locals 1

    .line 66
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->ticketPrice:I

    return v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/TribuneType;
    .locals 1

    .line 54
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->type:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    return-object v0
.end method

.method public getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;
    .locals 1

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->upgrade:Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->available:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation

    .line 42
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->available:Z

    return-void
.end method

.method public setCapacity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 62
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->capacity:I

    return-void
.end method

.method public setDaysToAvailable(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToAvailable"
        }
    .end annotation

    .line 50
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->daysToAvailable:B

    return-void
.end method

.method public setTicketPrice(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ticketPrice"
        }
    .end annotation

    .line 70
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->ticketPrice:I

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/TribuneType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->type:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    return-void
.end method

.method public setUpgrade(Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upgrade"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tribune;->upgrade:Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    return-void
.end method
