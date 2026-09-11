.class public Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;
.super Ljava/lang/Object;
.source "MatchReportEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x55e3b6d5b68249adL


# instance fields
.field private player:Lpl/mkrstudio/truefootball3/objects/Player;

.field private team:Lpl/mkrstudio/truefootball3/objects/Team;

.field private time:B

.field private type:Lpl/mkrstudio/truefootball3/enums/MatchEventType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V
    .locals 0
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
            "type"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 25
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 26
    iput-byte p3, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->time:B

    .line 27
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->type:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    return-void
.end method


# virtual methods
.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 64
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getTime()B
    .locals 1

    .line 70
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->time:B

    return v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;
    .locals 1

    .line 76
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->type:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    return-object v0
.end method

.method public setPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setRandomTime(Lpl/mkrstudio/truefootball3/objects/MatchReport;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x5a

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    const/4 v4, 0x0

    .line 43
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 44
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v6

    int-to-byte v7, v2

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_0

    :cond_2
    int-to-byte p1, v2

    .line 52
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->time:B

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

    .line 67
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setTime(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 73
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->time:B

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->type:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    return-void
.end method

.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->time:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->type:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->OWN_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0477

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->type:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c049f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
