.class public Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SponsorshipInfoAdapter.java"


# instance fields
.field selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "textViewResourceId",
            "objects"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public getSelectedPosition()I
    .locals 1

    .line 32
    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->selectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0a00a8

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    :cond_0
    iget p3, p0, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->selectedPosition:I

    const/4 v0, 0x0

    if-ne p3, p1, :cond_1

    const/16 p3, 0xff

    const/16 v1, 0x7f

    .line 46
    invoke-static {p3, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const p3, 0x7f080221

    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f080212

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0803b2

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v2, "name"

    .line 59
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "monthlyPay"

    .line 60
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "type"

    .line 61
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 27
    iput p1, p0, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->selectedPosition:I

    .line 28
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->notifyDataSetChanged()V

    return-void
.end method
