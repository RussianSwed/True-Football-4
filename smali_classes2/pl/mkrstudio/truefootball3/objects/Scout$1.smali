.class Lpl/mkrstudio/truefootball3/objects/Scout$1;
.super Ljava/lang/Object;
.source "Scout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/Scout;->makePossibleRecommendation(Lpl/mkrstudio/truefootball3/objects/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/Scout;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/objects/Scout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scout$1;->this$0:Lpl/mkrstudio/truefootball3/objects/Scout;

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

    .line 53
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 54
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 55
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
