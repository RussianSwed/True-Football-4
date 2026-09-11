.class Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$2;
.super Ljava/lang/Object;
.source "ScoutingFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->initRecommendations(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;

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

    .line 98
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 99
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 100
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 102
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
