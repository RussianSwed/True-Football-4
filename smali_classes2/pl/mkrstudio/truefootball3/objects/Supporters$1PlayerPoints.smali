.class Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;
.super Ljava/lang/Object;
.source "Supporters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/Supporters;->selectFavouritePlayers(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerPoints"
.end annotation


# instance fields
.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field points:I

.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/Supporters;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Player;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "player",
            "points"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->this$0:Lpl/mkrstudio/truefootball3/objects/Supporters;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 43
    iput p3, p0, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    return-void
.end method
