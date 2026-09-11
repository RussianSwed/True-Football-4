.class public Lpl/mkrstudio/truefootball3/objects/DivisionSwap;
.super Ljava/lang/Object;
.source "DivisionSwap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field teamFrom:Ljava/lang/String;

.field teamFromGroupCode:Ljava/lang/String;

.field teamTo:Ljava/lang/String;

.field teamToGroupCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "teamFrom",
            "teamTo",
            "teamFromGroupCode",
            "teamToGroupCode"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamFrom:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamTo:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamFromGroupCode:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamToGroupCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTeamFrom()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamFromGroupCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamFromGroupCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamTo()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamTo:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamToGroupCode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamToGroupCode:Ljava/lang/String;

    return-object v0
.end method

.method public setTeamFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamFrom"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamFrom:Ljava/lang/String;

    return-void
.end method

.method public setTeamFromGroupCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamFromGroupCode"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamFromGroupCode:Ljava/lang/String;

    return-void
.end method

.method public setTeamTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamTo"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamTo:Ljava/lang/String;

    return-void
.end method

.method public setTeamToGroupCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamToGroupCode"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->teamToGroupCode:Ljava/lang/String;

    return-void
.end method
