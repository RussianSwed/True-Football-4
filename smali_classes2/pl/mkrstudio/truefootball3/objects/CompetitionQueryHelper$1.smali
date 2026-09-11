.class Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper$1;
.super Ljava/lang/Object;
.source "CompetitionQueryHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->addTeamsForMexican2League(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/World;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
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

    .line 27
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 28
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 29
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 31
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 34
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    .line 36
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
