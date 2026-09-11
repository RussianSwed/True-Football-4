.class public Lpl/mkrstudio/truefootball3/objects/IndividualOrders;
.super Ljava/lang/Object;
.source "IndividualOrders.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6ef5cfc3402059b9L


# instance fields
.field captain:Lpl/mkrstudio/truefootball3/enums/Captain;

.field closeFreeKicks:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

.field cornerKicks:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

.field diving:Lpl/mkrstudio/truefootball3/enums/Diving;

.field dribbling:Lpl/mkrstudio/truefootball3/enums/Dribbling;

.field farFreeKicks:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

.field passes:Lpl/mkrstudio/truefootball3/enums/Passes;

.field penaltyKicks:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

.field shots:Lpl/mkrstudio/truefootball3/enums/Shots;

.field tackling:Lpl/mkrstudio/truefootball3/enums/Tackling;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shots",
            "dribbling",
            "tackling",
            "passes",
            "cornerKicks",
            "farFreeKicks",
            "closeFreeKicks",
            "penaltyKicks",
            "captain",
            "diving"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->shots:Lpl/mkrstudio/truefootball3/enums/Shots;

    .line 35
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->dribbling:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    .line 36
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->tackling:Lpl/mkrstudio/truefootball3/enums/Tackling;

    .line 37
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->passes:Lpl/mkrstudio/truefootball3/enums/Passes;

    .line 38
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->cornerKicks:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    .line 39
    iput-object p6, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->farFreeKicks:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    .line 40
    iput-object p7, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->closeFreeKicks:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    .line 41
    iput-object p8, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->penaltyKicks:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    .line 42
    iput-object p9, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->captain:Lpl/mkrstudio/truefootball3/enums/Captain;

    .line 43
    iput-object p10, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->diving:Lpl/mkrstudio/truefootball3/enums/Diving;

    return-void
.end method


# virtual methods
.method public getCaptain()Lpl/mkrstudio/truefootball3/enums/Captain;
    .locals 1

    .line 113
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->captain:Lpl/mkrstudio/truefootball3/enums/Captain;

    return-object v0
.end method

.method public getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;
    .locals 1

    .line 97
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->closeFreeKicks:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    return-object v0
.end method

.method public getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;
    .locals 1

    .line 81
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->cornerKicks:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    return-object v0
.end method

.method public getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;
    .locals 1

    .line 121
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->diving:Lpl/mkrstudio/truefootball3/enums/Diving;

    return-object v0
.end method

.method public getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;
    .locals 1

    .line 57
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->dribbling:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    return-object v0
.end method

.method public getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;
    .locals 1

    .line 89
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->farFreeKicks:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    return-object v0
.end method

.method public getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;
    .locals 1

    .line 73
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->passes:Lpl/mkrstudio/truefootball3/enums/Passes;

    return-object v0
.end method

.method public getPenaltyKicks()Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;
    .locals 1

    .line 105
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->penaltyKicks:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    return-object v0
.end method

.method public getShots()Lpl/mkrstudio/truefootball3/enums/Shots;
    .locals 1

    .line 49
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->shots:Lpl/mkrstudio/truefootball3/enums/Shots;

    return-object v0
.end method

.method public getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;
    .locals 1

    .line 65
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->tackling:Lpl/mkrstudio/truefootball3/enums/Tackling;

    return-object v0
.end method

.method public setCaptain(Lpl/mkrstudio/truefootball3/enums/Captain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captain"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->captain:Lpl/mkrstudio/truefootball3/enums/Captain;

    return-void
.end method

.method public setCloseFreeKicks(Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeFreeKicks"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->closeFreeKicks:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    return-void
.end method

.method public setCornerKicks(Lpl/mkrstudio/truefootball3/enums/CornerKicks;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cornerKicks"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->cornerKicks:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    return-void
.end method

.method public setDiving(Lpl/mkrstudio/truefootball3/enums/Diving;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diving"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->diving:Lpl/mkrstudio/truefootball3/enums/Diving;

    return-void
.end method

.method public setDribbling(Lpl/mkrstudio/truefootball3/enums/Dribbling;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dribbling"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->dribbling:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    return-void
.end method

.method public setFarFreeKicks(Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "farFreeKicks"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->farFreeKicks:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    return-void
.end method

.method public setPasses(Lpl/mkrstudio/truefootball3/enums/Passes;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passes"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->passes:Lpl/mkrstudio/truefootball3/enums/Passes;

    return-void
.end method

.method public setPenaltyKicks(Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "penaltyKicks"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->penaltyKicks:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    return-void
.end method

.method public setShots(Lpl/mkrstudio/truefootball3/enums/Shots;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shots"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->shots:Lpl/mkrstudio/truefootball3/enums/Shots;

    return-void
.end method

.method public setTackling(Lpl/mkrstudio/truefootball3/enums/Tackling;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tackling"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->tackling:Lpl/mkrstudio/truefootball3/enums/Tackling;

    return-void
.end method
