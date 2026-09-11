.class Lpl/mkrstudio/truefootball3/helpers/TableHelper$3;
.super Ljava/lang/Object;
.source "TableHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
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

    .line 145
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 146
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 147
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    .line 149
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    return v3

    .line 152
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_2

    return v2

    .line 154
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v4

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_3

    return v3

    .line 157
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v1

    if-le v0, v1, :cond_4

    return v2

    .line 159
    :cond_4
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result p2

    if-ge p1, p2, :cond_5

    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
