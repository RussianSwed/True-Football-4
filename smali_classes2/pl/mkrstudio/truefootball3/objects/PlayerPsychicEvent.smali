.class public Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;
.super Ljava/lang/Object;
.source "PlayerPsychicEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x548bfbc536b2e4fcL


# instance fields
.field daysToExpire:B

.field type:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;


# direct methods
.method public constructor <init>(BLpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "daysToExpire",
            "type"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->daysToExpire:B

    .line 18
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->type:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    return-void
.end method


# virtual methods
.method public getDaysToExpire()B
    .locals 1

    .line 22
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->daysToExpire:B

    return v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;
    .locals 1

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->type:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

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

    .line 26
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->daysToExpire:B

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerPsychicEvent;->type:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    return-void
.end method
