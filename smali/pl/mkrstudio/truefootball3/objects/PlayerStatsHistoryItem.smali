.class public Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;
.super Ljava/lang/Object;
.source "PlayerStatsHistoryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x375ab90ddb7d046L


# instance fields
.field apps:I

.field goals:I

.field player:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->apps:I

    .line 12
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->goals:I

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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->apps:I

    .line 12
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->goals:I

    .line 21
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "player",
            "apps",
            "goals"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->apps:I

    .line 12
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->goals:I

    .line 15
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 16
    iput p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->apps:I

    .line 17
    iput p3, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->goals:I

    return-void
.end method


# virtual methods
.method public getApps()I
    .locals 1

    .line 38
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->apps:I

    return v0
.end method

.method public getGoals()I
    .locals 1

    .line 46
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->goals:I

    return v0
.end method

.method public getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 1

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-object v0
.end method

.method public setApps(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apps"
        }
    .end annotation

    .line 42
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->apps:I

    return-void
.end method

.method public setGoals(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goals"
        }
    .end annotation

    .line 50
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->goals:I

    return-void
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

    .line 34
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    return-void
.end method
