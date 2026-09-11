.class public Lpl/mkrstudio/truefootball3/objects/JobOffer;
.super Ljava/lang/Object;
.source "JobOffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5968de61170d2926L


# instance fields
.field daysToExpire:B

.field team:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "daysToExpire"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/JobOffer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 16
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/JobOffer;->daysToExpire:B

    return-void
.end method


# virtual methods
.method public getDaysToExpire()B
    .locals 1

    .line 30
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/JobOffer;->daysToExpire:B

    return v0
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 22
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/JobOffer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
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
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/JobOffer;->daysToExpire:B

    return-void
.end method

.method public setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/JobOffer;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method
