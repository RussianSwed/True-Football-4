.class public Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;
.super Ljava/lang/Object;
.source "DressingRoomObservation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x363d45587a564ce4L


# instance fields
.field dateStringBeginning:Ljava/lang/String;

.field level:B

.field player1:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

.field player2:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

.field type:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "player1",
            "player2",
            "type",
            "level",
            "dateStringBeginning"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->player1:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 21
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->player2:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 22
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->type:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    .line 23
    iput-byte p4, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->level:B

    .line 24
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->dateStringBeginning:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateStringBeginning()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->dateStringBeginning:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()B
    .locals 1

    .line 52
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->level:B

    return v0
.end method

.method public getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;
    .locals 1

    .line 28
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->player1:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    return-object v0
.end method

.method public getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;
    .locals 1

    .line 36
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->player2:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    return-object v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;
    .locals 1

    .line 44
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->type:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    return-object v0
.end method

.method public setDateStringBeginning(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateStringBeginning"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->dateStringBeginning:Ljava/lang/String;

    return-void
.end method

.method public setLevel(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 56
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->level:B

    return-void
.end method

.method public setPlayer1(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player1"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->player1:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    return-void
.end method

.method public setPlayer2(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player2"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->player2:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->type:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    return-void
.end method
