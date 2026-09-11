.class public Lpl/mkrstudio/truefootball3/views/FixturesView;
.super Landroid/widget/LinearLayout;
.source "FixturesView.java"


# instance fields
.field groupLL:Landroid/widget/LinearLayout;

.field groupLeftButton:Landroid/widget/Button;

.field groupRightButton:Landroid/widget/Button;

.field groupSpinner:Landroid/widget/Spinner;

.field llayout:Landroid/widget/LinearLayout;

.field noMatches:Landroid/widget/TextView;

.field weekLeftButton:Landroid/widget/Button;

.field weekRightButton:Landroid/widget/Button;

.field weekSpinner:Landroid/widget/Spinner;


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

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    const p2, 0x7f0a00de

    .line 29
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    const p1, 0x7f0803c7

    .line 31
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekSpinner:Landroid/widget/Spinner;

    const p1, 0x7f0801a5

    .line 32
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupSpinner:Landroid/widget/Spinner;

    const p1, 0x7f080060

    .line 33
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekLeftButton:Landroid/widget/Button;

    const p1, 0x7f080068

    .line 34
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekRightButton:Landroid/widget/Button;

    const p1, 0x7f080061

    .line 35
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupLeftButton:Landroid/widget/Button;

    const/16 p2, 0x8

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    const p1, 0x7f080069

    .line 37
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupRightButton:Landroid/widget/Button;

    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    const p1, 0x7f0801f8

    .line 40
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->llayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0801a4

    .line 41
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupLL:Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f080233

    .line 43
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->noMatches:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getGroupLL()Landroid/widget/LinearLayout;
    .locals 1

    .line 106
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupLL:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getGroupLeftButton()Landroid/widget/Button;
    .locals 1

    .line 90
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getGroupRightButton()Landroid/widget/Button;
    .locals 1

    .line 98
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getGroupSpinner()Landroid/widget/Spinner;
    .locals 1

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method public getLlayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->llayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getNoMatches()Landroid/widget/TextView;
    .locals 1

    .line 114
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->noMatches:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWeekLeftButton()Landroid/widget/Button;
    .locals 1

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getWeekRightButton()Landroid/widget/Button;
    .locals 1

    .line 82
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getWeekSpinner()Landroid/widget/Spinner;
    .locals 1

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method public setGroupLL(Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupLL"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupLL:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setGroupLeftButton(Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupLeftButton"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupLeftButton:Landroid/widget/Button;

    return-void
.end method

.method public setGroupRightButton(Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupRightButton"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupRightButton:Landroid/widget/Button;

    return-void
.end method

.method public setGroupSpinner(Landroid/widget/Spinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupSpinner"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->groupSpinner:Landroid/widget/Spinner;

    return-void
.end method

.method public setLlayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "llayout"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->llayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setNoMatches(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noMatches"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->noMatches:Landroid/widget/TextView;

    return-void
.end method

.method public setWeekLeftButton(Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weekLeftButton"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekLeftButton:Landroid/widget/Button;

    return-void
.end method

.method public setWeekRightButton(Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weekRightButton"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekRightButton:Landroid/widget/Button;

    return-void
.end method

.method public setWeekSpinner(Landroid/widget/Spinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weekSpinner"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/FixturesView;->weekSpinner:Landroid/widget/Spinner;

    return-void
.end method
