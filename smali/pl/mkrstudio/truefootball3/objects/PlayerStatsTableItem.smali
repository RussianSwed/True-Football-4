.class public Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;
.super Ljava/lang/Object;
.source "PlayerStatsTableItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5569b4c0a344b62cL


# instance fields
.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->result:I

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->result:I

    .line 19
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "result"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->result:I

    .line 14
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 15
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->result:I

    return-void
.end method


# virtual methods
.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 36
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 28
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->result:I

    return v0
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

    .line 40
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public setResult(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 32
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->result:I

    return-void
.end method
