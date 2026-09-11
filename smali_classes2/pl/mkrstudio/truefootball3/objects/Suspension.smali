.class public Lpl/mkrstudio/truefootball3/objects/Suspension;
.super Ljava/lang/Object;
.source "Suspension.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3a26835e6105959aL


# instance fields
.field private description:I

.field private matchesLeft:B

.field private matchesSuspended:B

.field private type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/enums/CompetitionType;B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ct",
            "matches"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_0

    .line 26
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_1

    .line 28
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_2

    .line 30
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC_CUPS:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_3

    .line 32
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->INTERNATIONAL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    goto :goto_0

    .line 33
    :cond_3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v0, :cond_4

    .line 34
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->INTERNATIONAL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    .line 36
    :cond_4
    :goto_0
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->matchesSuspended:B

    .line 37
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->matchesLeft:B

    return-void
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .line 67
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->description:I

    return v0
.end method

.method public getMatchesLeft()B
    .locals 1

    .line 59
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->matchesLeft:B

    return v0
.end method

.method public getMatchesSuspended()B
    .locals 1

    .line 51
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->matchesSuspended:B

    return v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;
    .locals 1

    .line 43
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    return-object v0
.end method

.method public setDescription(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 71
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->description:I

    return-void
.end method

.method public setMatchesLeft(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchesLeft"
        }
    .end annotation

    .line 63
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->matchesLeft:B

    return-void
.end method

.method public setMatchesSuspended(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchesSuspended"
        }
    .end annotation

    .line 55
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->matchesSuspended:B

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/SuspensionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Suspension;->type:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    return-void
.end method
