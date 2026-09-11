.class Lpl/mkrstudio/truefootball3/fixtures/AsianChampionsCup2021$1;
.super Ljava/lang/Object;
.source "AsianChampionsCup2021.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fixtures/AsianChampionsCup2021;->update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fixtures/AsianChampionsCup2021;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fixtures/AsianChampionsCup2021;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fixtures/AsianChampionsCup2021$1;->this$0:Lpl/mkrstudio/truefootball3/fixtures/AsianChampionsCup2021;

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

    .line 175
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 176
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 177
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

    .line 179
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

    .line 182
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

    .line 184
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

    .line 187
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v1

    if-le v0, v1, :cond_4

    return v2

    .line 189
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
