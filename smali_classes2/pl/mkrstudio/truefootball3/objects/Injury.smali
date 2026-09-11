.class public Lpl/mkrstudio/truefootball3/objects/Injury;
.super Ljava/lang/Object;
.source "Injury.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x75a62b32bf4b5dc4L


# instance fields
.field private daysLeft:I

.field private daysToRecover:I

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "medicalServicesLevel"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    mul-int/lit8 p1, p1, 0x3

    rsub-int p1, p1, 0x140

    if-gez p1, :cond_0

    const/4 p1, 0x2

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysToRecover:I

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    .line 27
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysToRecover:I

    .line 28
    :cond_1
    iget p1, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysToRecover:I

    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysLeft:I

    return-void
.end method


# virtual methods
.method public getDaysLeft()I
    .locals 1

    .line 42
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysLeft:I

    return v0
.end method

.method public getDaysToRecover()I
    .locals 1

    .line 34
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysToRecover:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->description:Ljava/lang/String;

    return-object v0
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

    .line 46
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysLeft:I

    return-void
.end method

.method public setDaysToRecover(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToRecover"
        }
    .end annotation

    .line 38
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->daysToRecover:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Injury;->description:Ljava/lang/String;

    return-void
.end method
