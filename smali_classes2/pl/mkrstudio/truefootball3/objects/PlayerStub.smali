.class public Lpl/mkrstudio/truefootball3/objects/PlayerStub;
.super Ljava/lang/Object;
.source "PlayerStub.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x131255d4b8150079L


# instance fields
.field age:B

.field name:Ljava/lang/String;

.field nationality:Ljava/lang/String;

.field position:Lpl/mkrstudio/truefootball3/enums/Position;

.field secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

.field skill:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/enums/Position;B)V
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
            "name",
            "age",
            "nationality",
            "position",
            "secondPosition",
            "skill"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->name:Ljava/lang/String;

    .line 24
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->age:B

    .line 25
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->nationality:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->position:Lpl/mkrstudio/truefootball3/enums/Position;

    .line 27
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    .line 28
    iput-byte p6, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->skill:B

    return-void
.end method


# virtual methods
.method public getAge()B
    .locals 1

    .line 50
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->age:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lpl/mkrstudio/truefootball3/enums/Position;
    .locals 1

    .line 42
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->position:Lpl/mkrstudio/truefootball3/enums/Position;

    return-object v0
.end method

.method public getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;
    .locals 1

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    return-object v0
.end method

.method public getSkill()B
    .locals 1

    .line 66
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->skill:B

    return v0
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

    .line 54
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->age:B

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

    .line 38
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->name:Ljava/lang/String;

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

    .line 62
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->nationality:Ljava/lang/String;

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

    .line 46
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->position:Lpl/mkrstudio/truefootball3/enums/Position;

    return-void
.end method

.method public setSecondPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondPosition"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

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

    .line 70
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStub;->skill:B

    return-void
.end method
