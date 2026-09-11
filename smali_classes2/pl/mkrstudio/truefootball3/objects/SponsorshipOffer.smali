.class public Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;
.super Lpl/mkrstudio/truefootball3/objects/Sponsorship;
.source "SponsorshipOffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1de495bd9ec117dL


# instance fields
.field daysToExpire:B


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sponsorships",
            "sponsorshipOffers",
            "time",
            "budget",
            "type",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "J",
            "Lpl/mkrstudio/truefootball3/enums/SponsorshipType;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct/range {p0 .. p7}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;-><init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->calculateDaysToExpire()B

    move-result p1

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->daysToExpire:B

    return-void
.end method


# virtual methods
.method public calculateDaysToExpire()B
    .locals 3

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xc

    mul-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method public getDaysToExpire()B
    .locals 1

    .line 30
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->daysToExpire:B

    return v0
.end method

.method public setDaysToExpire(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToExpire"
        }
    .end annotation

    .line 34
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->daysToExpire:B

    return-void
.end method
