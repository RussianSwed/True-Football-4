.class public Lpl/mkrstudio/truefootball3/objects/Rivalry;
.super Ljava/lang/Object;
.source "Rivalry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1e297982c2d4e77dL


# instance fields
.field meaning:B

.field team:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rivalTeam",
            "meaning"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Rivalry;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 23
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/Rivalry;->meaning:B

    return-void
.end method


# virtual methods
.method public getMeaning()B
    .locals 1

    .line 29
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Rivalry;->meaning:B

    return v0
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 37
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Rivalry;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public setMeaning(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meaning"
        }
    .end annotation

    .line 33
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Rivalry;->meaning:B

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

    .line 41
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Rivalry;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method
