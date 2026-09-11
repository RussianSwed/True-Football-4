.class public Lpl/mkrstudio/truefootball3/views/TileButton;
.super Landroid/widget/LinearLayout;
.source "TileButton.java"


# instance fields
.field tileButtonImageView:Landroid/widget/ImageView;

.field tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;


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
            "attrs"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/views/TileButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getTileButtonTextView()Lpl/mkrstudio/truefootball3/views/CustomFontTextView;
    .locals 1

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    return-object v0
.end method

.method init(Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/TileButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const v1, 0x7f0a00e1

    .line 27
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    const v0, 0x7f08038c

    .line 30
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v0, 0x7f08038a

    .line 31
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonImageView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/TileButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/R$styleable;->TileButton:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x2

    .line 36
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 38
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 39
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_1

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextScaleX(F)V

    .line 45
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f08038b

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    throw v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickListener"
        }
    .end annotation

    const v0, 0x7f08038b

    .line 54
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTileButtonTextView(Lpl/mkrstudio/truefootball3/views/CustomFontTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tileButtonTextView"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    return-void
.end method

.method public setTileDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tileDrawable"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTileDrawableResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tileDrawableResource"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTileText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tileText"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/TileButton;->tileButtonTextView:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
