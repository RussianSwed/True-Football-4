.class Lpl/mkrstudio/truefootball3/objects/Supporters$1;
.super Ljava/lang/Object;
.source "Supporters.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/Supporters;->selectFavouritePlayers(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/Supporters;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/objects/Supporters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Supporters$1;->this$0:Lpl/mkrstudio/truefootball3/objects/Supporters;

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
            "o1",
            "o2"
        }
    .end annotation

    .line 59
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;

    .line 60
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;

    .line 61
    iget v0, p1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    iget v1, p2, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 63
    :cond_0
    iget p1, p1, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    iget p2, p2, Lpl/mkrstudio/truefootball3/objects/Supporters$1PlayerPoints;->points:I

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
