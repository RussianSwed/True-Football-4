.class public Lpl/mkrstudio/truefootball3/views/PlayerStatsView;
.super Landroid/widget/LinearLayout;
.source "PlayerStatsView.java"


# instance fields
.field playerStatsAssistsLV:Landroid/widget/ListView;

.field playerStatsCleanSheetsLV:Landroid/widget/ListView;

.field playerStatsGoalsLV:Landroid/widget/ListView;

.field playerStatsRatingsLV:Landroid/widget/ListView;

.field playerStatsRedCardsLV:Landroid/widget/ListView;

.field playerStatsTV:Landroid/widget/TextView;

.field playerStatsYellowCardsLV:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrSet"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    const p2, 0x7f0a00e0

    .line 25
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    const p1, 0x7f080291

    .line 27
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsTV:Landroid/widget/TextView;

    const p1, 0x7f08028d

    .line 29
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsGoalsLV:Landroid/widget/ListView;

    const p1, 0x7f08028b

    .line 30
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsAssistsLV:Landroid/widget/ListView;

    const p1, 0x7f080292

    .line 31
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsYellowCardsLV:Landroid/widget/ListView;

    const p1, 0x7f080290

    .line 32
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsRedCardsLV:Landroid/widget/ListView;

    const p1, 0x7f08028f

    .line 33
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsRatingsLV:Landroid/widget/ListView;

    const p1, 0x7f08028c

    .line 34
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsCleanSheetsLV:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public getPlayerStatsLV(I)Landroid/widget/ListView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "which"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsGoalsLV:Landroid/widget/ListView;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 39
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsAssistsLV:Landroid/widget/ListView;

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 40
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsYellowCardsLV:Landroid/widget/ListView;

    return-object p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 41
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsRedCardsLV:Landroid/widget/ListView;

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 42
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsRatingsLV:Landroid/widget/ListView;

    return-object p1

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 43
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsCleanSheetsLV:Landroid/widget/ListView;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlayerStatsTV()Landroid/widget/TextView;
    .locals 1

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public setPlayerStatsTV(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerStatsTV"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/PlayerStatsView;->playerStatsTV:Landroid/widget/TextView;

    return-void
.end method
