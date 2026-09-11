.class public Lpl/mkrstudio/truefootball3/objects/DressingRoom;
.super Ljava/lang/Object;
.source "DressingRoom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x67c4509f3e309076L


# instance fields
.field dressingRoomObservations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;",
            ">;"
        }
    .end annotation
.end field

.field futureDressingRoomObservations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;",
            ">;"
        }
    .end annotation
.end field

.field pastConflicts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;",
            ">;"
        }
    .end annotation
.end field

.field pastIsolatedPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerExtended;",
            ">;"
        }
    .end annotation
.end field

.field wasDinnerOrPartyToday:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->futureDressingRoomObservations:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastIsolatedPlayers:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastConflicts:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->wasDinnerOrPartyToday:Z

    return-void
.end method


# virtual methods
.method public dinner(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "team",
            "time",
            "inbox",
            "finances",
            "context"
        }
    .end annotation

    .line 228
    new-instance p5, Ljava/util/Random;

    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    .line 229
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 230
    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    const/4 v1, 0x5

    invoke-virtual {p5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 235
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/4 v5, 0x3

    if-ne v3, v4, :cond_2

    .line 236
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p5, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    .line 237
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    if-gtz v2, :cond_1

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastConflicts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildConflictEndMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v3, v4, :cond_1

    .line 243
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p5, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    .line 244
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    if-gtz v2, :cond_1

    .line 245
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastIsolatedPlayers:Ljava/util/List;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildIsolationEndingMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_1

    .line 251
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 252
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 255
    :cond_4
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, -0x5

    const-string p3, "team_integration"

    invoke-direct {p1, p2, v0, v1, p3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p4, p1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 257
    iput-boolean v2, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->wasDinnerOrPartyToday:Z

    return-void
.end method

.method public existsConflictOrFriendship(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 176
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    if-ne p1, v3, :cond_1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    if-ne p2, v3, :cond_1

    return v2

    .line 177
    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    if-ne p2, v3, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v2

    .line 179
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastConflicts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 180
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    if-ne p1, v3, :cond_4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    if-ne p2, v3, :cond_4

    return v2

    .line 181
    :cond_4
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    if-ne p2, v3, :cond_3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v1

    if-ne p1, v1, :cond_3

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public existsIsolation(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p1"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 188
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public existsLeader(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p1"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 195
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->LEADER:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDressingRoomObservations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    return-object v0
.end method

.method public getFutureDressingRoomObservations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->futureDressingRoomObservations:Ljava/util/List;

    return-object v0
.end method

.method public getPastIsolatedPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerExtended;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastIsolatedPlayers:Ljava/util/List;

    return-object v0
.end method

.method public isWasDinnerOrPartyToday()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->wasDinnerOrPartyToday:Z

    return v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "team",
            "inbox",
            "time"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->wasDinnerOrPartyToday:Z

    .line 30
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 33
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v9

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/16 v11, 0x14

    if-ne v9, v10, :cond_2

    .line 34
    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-nez v9, :cond_1

    .line 36
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v7

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    .line 37
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v7

    if-nez v7, :cond_4

    .line 38
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastConflicts:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildConflictEndMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_1

    :cond_1
    if-ne v9, v8, :cond_4

    .line 43
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v9

    if-ge v9, v7, :cond_4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v7

    add-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v9

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v9, v10, :cond_3

    .line 46
    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-nez v9, :cond_4

    .line 48
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v9

    if-ge v9, v7, :cond_4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v7

    add-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v7

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v7, v9, :cond_4

    const/16 v7, 0xa

    .line 51
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    if-nez v7, :cond_4

    .line 53
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v7

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    .line 54
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v7

    if-nez v7, :cond_4

    .line 55
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastIsolatedPlayers:Ljava/util/List;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildIsolationEndingMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 64
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 65
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    if-ne v11, v12, :cond_6

    const/4 v9, 0x1

    .line 66
    :cond_6
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v12

    if-ne v11, v12, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    if-nez v9, :cond_8

    .line 68
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v10, :cond_0

    .line 69
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-eq v7, v8, :cond_9

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v7, v8, :cond_0

    .line 70
    :cond_9
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 74
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 77
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 81
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v11, v6

    :cond_c
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 82
    move-object v10, v6

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v12

    const/16 v13, 0x4b

    const/16 v14, 0x55

    if-le v12, v13, :cond_d

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v12

    if-le v12, v14, :cond_d

    .line 83
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_d
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v12

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v12

    const/16 v13, 0x19

    if-ge v12, v13, :cond_e

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v12

    if-le v12, v14, :cond_e

    .line 85
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v11, :cond_f

    .line 86
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v12

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v6

    if-ge v12, v6, :cond_c

    :cond_f
    move-object v11, v10

    goto :goto_4

    .line 89
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x3

    const/4 v10, -0x1

    if-le v6, v8, :cond_13

    .line 90
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_13

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v12, -0x1

    :goto_5
    if-eq v12, v10, :cond_12

    if-ne v6, v12, :cond_11

    goto :goto_6

    .line 97
    :cond_11
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v0, v13, v14}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->existsConflictOrFriendship(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 98
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildConflictBeginningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v13

    invoke-virtual {v1, v13}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 99
    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    .line 100
    new-instance v15, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 101
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 102
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    add-int/2addr v13, v9

    int-to-byte v2, v13

    .line 105
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v19

    move-object v14, v15

    move-object v12, v15

    move-object v15, v6

    move/from16 v18, v2

    invoke-direct/range {v14 .. v19}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;-><init>(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;BLjava/lang/String;)V

    .line 106
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 95
    :cond_12
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    goto :goto_5

    .line 111
    :cond_13
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_16

    .line 112
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_16

    .line 114
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v6, -0x1

    :goto_8
    if-eq v6, v10, :cond_15

    if-ne v2, v6, :cond_14

    goto :goto_9

    .line 119
    :cond_14
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v0, v7, v8}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->existsConflictOrFriendship(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 120
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildFriendshipBeginningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 122
    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 123
    new-instance v7, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 124
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 125
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->FRIENDSHIP:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    add-int/2addr v3, v9

    int-to-byte v2, v3

    .line 128
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v17

    move-object v12, v7

    move/from16 v16, v2

    invoke-direct/range {v12 .. v17}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;-><init>(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;BLjava/lang/String;)V

    .line 129
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 117
    :cond_15
    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    goto :goto_8

    .line 134
    :cond_16
    :goto_a
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 136
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result v2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1a

    .line 137
    invoke-virtual {v0, v11}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->existsLeader(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 139
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 140
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->LEADER:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v5, v6, :cond_17

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 142
    :cond_18
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 143
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 146
    :cond_19
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildLeaderBeginningMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 148
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    const/4 v12, 0x0

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->LEADER:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/4 v14, 0x4

    .line 153
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;-><init>(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;BLjava/lang/String;)V

    .line 154
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->futureDressingRoomObservations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 161
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getDateStringBeginning()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 162
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildIsolationBeginningMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v5

    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 164
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 169
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 170
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->futureDressingRoomObservations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    return-void
.end method

.method public party(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "team",
            "time",
            "inbox",
            "finances",
            "context"
        }
    .end annotation

    .line 261
    new-instance p5, Ljava/util/Random;

    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    .line 262
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 263
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setShape(Lpl/mkrstudio/truefootball3/enums/Shape;)V

    goto :goto_1

    .line 264
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Shape;->GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Shape;->BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setShape(Lpl/mkrstudio/truefootball3/enums/Shape;)V

    goto :goto_1

    .line 265
    :cond_1
    move-object v1, v0

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setShape(Lpl/mkrstudio/truefootball3/enums/Shape;)V

    .line 266
    :goto_1
    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    const/16 v1, 0xf

    invoke-virtual {p5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeMorale(B)V

    goto :goto_0

    .line 269
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 271
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->CONFLICT:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/4 v4, 0x3

    if-ne v2, v3, :cond_4

    .line 272
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    .line 273
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    if-gtz v2, :cond_3

    .line 274
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastConflicts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer2()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildConflictEndMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_2

    .line 278
    :cond_4
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getType()Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    if-ne v2, v3, :cond_3

    .line 279
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->setLevel(B)V

    .line 280
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getLevel()B

    move-result v2

    if-gtz v2, :cond_3

    .line 281
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastIsolatedPlayers:Ljava/util/List;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;->getPlayer1()Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildIsolationEndingMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    invoke-virtual {p3, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto/16 :goto_2

    .line 287
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    .line 288
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 291
    :cond_6
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, -0xa

    const-string p3, "team_integration"

    invoke-direct {p1, p2, v0, v1, p3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p4, p1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    const/4 p1, 0x1

    .line 293
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->wasDinnerOrPartyToday:Z

    return-void
.end method

.method public possiblyCreateIsolation(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "player",
            "team",
            "time",
            "inbox"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCharisma()B

    move-result p4

    const/16 v0, 0x3c

    if-le p4, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    if-eq v1, p1, :cond_1

    .line 206
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    add-int/lit8 p4, p4, -0x28

    .line 209
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getAge()B

    move-result p2

    const/16 v0, 0x12

    if-ge p2, v0, :cond_4

    add-int/lit8 p4, p4, -0x28

    goto :goto_1

    .line 210
    :cond_4
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getAge()B

    move-result p2

    const/16 v0, 0x15

    if-ge p2, v0, :cond_5

    add-int/lit8 p4, p4, -0x19

    :cond_5
    :goto_1
    const/16 p2, 0x14

    if-ge p4, p2, :cond_a

    .line 212
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->existsIsolation(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 215
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p2

    invoke-virtual {p3, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object p2

    const/4 v0, 0x6

    const/4 v1, 0x3

    .line 216
    invoke-virtual {p2, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 217
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;

    const/4 v4, 0x0

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;->ISOLATION:Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;

    const/16 v2, -0x14

    if-ge p4, v2, :cond_6

    const/4 v1, 0x5

    const/4 v6, 0x5

    goto :goto_2

    :cond_6
    const/16 v2, -0xa

    if-ge p4, v2, :cond_7

    const/4 v1, 0x4

    const/4 v6, 0x4

    goto :goto_2

    :cond_7
    if-gez p4, :cond_8

    const/4 v6, 0x3

    goto :goto_2

    :cond_8
    const/16 v1, 0xa

    if-ge p4, v1, :cond_9

    const/4 v1, 0x2

    const/4 v6, 0x2

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    const/4 v6, 0x1

    .line 222
    :goto_2
    invoke-virtual {p3, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;-><init>(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/enums/DressingRoomObservationType;BLjava/lang/String;)V

    .line 223
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->futureDressingRoomObservations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public setDressingRoomObservations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dressingRoomObservations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;",
            ">;)V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->dressingRoomObservations:Ljava/util/List;

    return-void
.end method

.method public setFutureDressingRoomObservations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "futureDressingRoomObservations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DressingRoomObservation;",
            ">;)V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->futureDressingRoomObservations:Ljava/util/List;

    return-void
.end method

.method public setPastIsolatedPlayers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pastIsolatedPlayers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerExtended;",
            ">;)V"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->pastIsolatedPlayers:Ljava/util/List;

    return-void
.end method

.method public setWasDinnerOrPartyToday(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wasDinnerOrPartyToday"
        }
    .end annotation

    .line 326
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->wasDinnerOrPartyToday:Z

    return-void
.end method
