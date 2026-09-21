.class public Lpl/mkrstudio/truefootball3/objects/NationalTeamUi;
.super Ljava/lang/Object;
.source "NationalTeamUi.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPlayerNationalRows(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lpl/mkrstudio/truefootball3/objects/Player;Landroid/content/Context;)V
    .locals 12

    if-eqz p0, :cond_end

    if-eqz p1, :cond_end

    if-eqz p2, :cond_end

    if-nez p3, :cond_go

    goto :cond_end

    :cond_go
    invoke-static {p2}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->nationalStatCounts(Lpl/mkrstudio/truefootball3/objects/Player;)[I

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0c0687

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget v3, p2, v0

    const/4 v4, 0x1

    aget v4, p2, v4

    const/4 v5, 0x2

    aget v5, p2, v5

    move-object v6, p0

    move-object v7, p1

    move-object v8, v1

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lpl/mkrstudio/truefootball3/objects/NationalTeamUi;->addRow(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Ljava/lang/String;III)V

    const/4 v2, 0x3

    const v1, 0x7f0c0688

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    aget v0, p2, v2

    const/4 v1, 0x4

    aget v1, p2, v1

    const/4 v2, 0x5

    aget p2, p2, v2

    move-object v6, p0

    move-object v7, p1

    move-object v8, p3

    move v9, v0

    move v10, v1

    move v11, p2

    invoke-static/range {v6 .. v11}, Lpl/mkrstudio/truefootball3/objects/NationalTeamUi;->addRow(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Ljava/lang/String;III)V

    :cond_end
    return-void
.end method

.method private static addRow(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Ljava/lang/String;III)V
    .locals 3

    const v0, 0x7f0a009e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f080204

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0801a1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f080074

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
