.class Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask$1;
.super Ljava/lang/Object;
.source "HistoryDetailsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;

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

    .line 255
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 256
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;

    .line 257
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-boolean v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->sortByApps:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result v4

    if-le v0, v4, :cond_0

    return v3

    .line 260
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getApps()I

    move-result p2

    if-ge p1, p2, :cond_1

    return v1

    :cond_1
    return v2

    .line 264
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result v4

    if-le v0, v4, :cond_3

    return v3

    .line 266
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsHistoryItem;->getGoals()I

    move-result p2

    if-ge p1, p2, :cond_4

    return v1

    :cond_4
    return v2
.end method
