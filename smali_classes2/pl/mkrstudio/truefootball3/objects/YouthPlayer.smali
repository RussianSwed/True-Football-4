.class public Lpl/mkrstudio/truefootball3/objects/YouthPlayer;
.super Ljava/lang/Object;
.source "YouthPlayer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2a83225f91d0e74L


# instance fields
.field age:B

.field currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

.field name:Ljava/lang/String;

.field nationality:Ljava/lang/String;

.field position:Lpl/mkrstudio/truefootball3/enums/Position;

.field potential:B

.field skill:B

.field youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeSkill(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 23
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->skill:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->skill:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 25
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->skill:B

    .line 26
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->skill:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 27
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->skill:B

    :cond_1
    return-void
.end method

.method public getAge()B
    .locals 1

    .line 49
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->age:B

    return v0
.end method

.method public getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;
    .locals 1

    .line 81
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lpl/mkrstudio/truefootball3/enums/Position;
    .locals 1

    .line 57
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->position:Lpl/mkrstudio/truefootball3/enums/Position;

    return-object v0
.end method

.method public getPotential()B
    .locals 1

    .line 73
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->potential:B

    return v0
.end method

.method public getSkill()B
    .locals 1

    .line 65
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->skill:B

    return v0
.end method

.method public getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;
    .locals 1

    .line 89
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    return-object v0
.end method

.method public setAge(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "age"
        }
    .end annotation

    .line 53
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->age:B

    return-void
.end method

.method public setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentContract"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->name:Ljava/lang/String;

    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nationality"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->nationality:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->position:Lpl/mkrstudio/truefootball3/enums/Position;

    return-void
.end method

.method public setPotential(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "potential"
        }
    .end annotation

    .line 77
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->potential:B

    return-void
.end method

.method public setSkill(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skill"
        }
    .end annotation

    .line 69
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->skill:B

    return-void
.end method

.method public setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTeam"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    return-void
.end method
