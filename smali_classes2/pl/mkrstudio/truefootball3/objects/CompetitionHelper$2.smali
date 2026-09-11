.class Lpl/mkrstudio/truefootball3/objects/CompetitionHelper$2;
.super Ljava/lang/Object;
.source "CompetitionHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCountryPlayersOfMonth(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
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

    .line 178
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    .line 179
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    .line 180
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 182
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
