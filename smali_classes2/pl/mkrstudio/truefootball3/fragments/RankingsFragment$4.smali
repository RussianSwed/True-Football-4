.class Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$4;
.super Ljava/lang/Object;
.source "RankingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initCountryRanking(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

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

    .line 154
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 155
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 156
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 157
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
