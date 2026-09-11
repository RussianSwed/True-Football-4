.class Lpl/mkrstudio/truefootball3/objects/World$3;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/World;->getAllKnownPlayers(Lpl/mkrstudio/truefootball3/objects/Transfers;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/lang/String;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/World;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/objects/World;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1992
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/World$3;->this$0:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1994
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1995
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Player;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1996
    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v2

    invoke-virtual {p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1998
    :cond_0
    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v2

    invoke-virtual {p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
