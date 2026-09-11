.class public Lpl/mkrstudio/truefootball3/objects/Psychic;
.super Ljava/lang/Object;
.source "Psychic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf05ebf8b1331f4fL


# instance fields
.field currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

.field daysToNextPenalty:B

.field daysToNextReward:B

.field morale:B

.field temperament:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 14
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    const/4 v1, 0x0

    .line 17
    iput-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextPenalty:B

    .line 18
    iput-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextReward:B

    .line 22
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x63

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    return-void
.end method

.method private getEventPoints(Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ppet"
        }
    .end annotation

    .line 28
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Psychic$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$PlayerPsychicEventType:[I

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    .line 47
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    return p1

    :pswitch_0
    const/4 p1, -0x4

    return p1

    :pswitch_1
    const/4 p1, -0x5

    return p1

    :pswitch_2
    const/4 p1, -0x6

    return p1

    :pswitch_3
    const/4 p1, 0x5

    return p1

    :pswitch_4
    return v0

    :pswitch_5
    const/4 p1, 0x2

    return p1

    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateEvent(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Ljava/util/Random;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inbox",
            "time",
            "player",
            "random"
        }
    .end annotation

    .line 74
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    rsub-int/lit8 v0, v0, 0x64

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x4e20

    if-le v0, v2, :cond_3

    .line 76
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    rsub-int/lit8 v0, v0, 0x64

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_3

    .line 78
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    rsub-int/lit8 v0, v0, 0x64

    iget-byte v3, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v3, 0x1f4

    if-le v0, v3, :cond_0

    .line 80
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-direct {v2, v1, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;-><init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    goto :goto_0

    :cond_0
    const/16 v3, 0x190

    if-le v0, v3, :cond_1

    .line 82
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    const/4 v3, 0x7

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-direct {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;-><init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    goto :goto_0

    :cond_1
    const/16 v3, 0x12c

    if-le v0, v3, :cond_2

    .line 84
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    const/4 v3, 0x6

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-direct {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;-><init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    goto :goto_0

    :cond_2
    if-le v0, v2, :cond_3

    .line 86
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    const/4 v3, 0x4

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-direct {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;-><init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    :cond_3
    :goto_0
    if-ge v0, v1, :cond_6

    .line 91
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    rsub-int/lit8 v0, v0, 0x64

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 93
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    rsub-int/lit8 v0, v0, 0x64

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    if-ge p4, v1, :cond_4

    .line 95
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-direct {p4, v1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;-><init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    goto :goto_1

    :cond_4
    const/16 v0, 0x14

    if-ge p4, v0, :cond_5

    .line 97
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-direct {p4, v1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;-><init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    goto :goto_1

    :cond_5
    const/16 v0, 0x1e

    if-ge p4, v0, :cond_6

    .line 99
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-direct {p4, v1, v0}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;-><init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    .line 103
    :cond_6
    :goto_1
    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    if-eqz p4, :cond_7

    .line 104
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object p4

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, p2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPlayerPsychicEvent(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_7
    return-void
.end method

.method public getCurrentEvent()Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;
    .locals 1

    .line 127
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    return-object v0
.end method

.method public getDaysToNextPenalty()B
    .locals 1

    .line 135
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextPenalty:B

    return v0
.end method

.method public getDaysToNextReward()B
    .locals 1

    .line 143
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextReward:B

    return v0
.end method

.method public getMorale()B
    .locals 1

    .line 111
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    return v0
.end method

.method public getTemperament()B
    .locals 1

    .line 119
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    return v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Ljava/util/Random;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inbox",
            "time",
            "player",
            "random"
        }
    .end annotation

    .line 51
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextPenalty:B

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 52
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextPenalty:B

    .line 54
    :cond_0
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextReward:B

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 55
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextReward:B

    .line 57
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    if-nez v0, :cond_2

    .line 58
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextPenalty:B

    if-nez v0, :cond_4

    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextReward:B

    if-nez v0, :cond_4

    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Lpl/mkrstudio/truefootball3/objects/Psychic;->generateEvent(Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;Ljava/util/Random;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getDaysToExpire()B

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->setDaysToExpire(B)V

    .line 63
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getDaysToExpire()B

    move-result p1

    if-nez p1, :cond_4

    .line 64
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getEventPoints(Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)I

    move-result p1

    if-lez p1, :cond_3

    .line 65
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object p2

    invoke-direct {p0, p2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getEventPoints(Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p4, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object p3

    invoke-direct {p0, p3}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getEventPoints(Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    :cond_3
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    :cond_4
    :goto_0
    return-void
.end method

.method public setCurrentEvent(Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEvent"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->currentEvent:Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;

    return-void
.end method

.method public setDaysToNextPenalty(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToNextPenalty"
        }
    .end annotation

    .line 139
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextPenalty:B

    return-void
.end method

.method public setDaysToNextReward(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToNextReward"
        }
    .end annotation

    .line 147
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->daysToNextReward:B

    return-void
.end method

.method public setMorale(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "morale"
        }
    .end annotation

    .line 115
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->morale:B

    return-void
.end method

.method public setTemperament(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperament"
        }
    .end annotation

    .line 123
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Psychic;->temperament:B

    return-void
.end method
