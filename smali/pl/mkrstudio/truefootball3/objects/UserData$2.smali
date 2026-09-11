.class Lpl/mkrstudio/truefootball3/objects/UserData$2;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/UserData;->nextDay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserData$2;->this$0:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 299
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 300
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 301
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 303
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
