.class public Lpl/mkrstudio/truefootball3/views/CustomFontEditText;
.super Landroid/widget/EditText;
.source "CustomFontEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/views/CustomFontEditText;->setFonts()V

    return-void
.end method

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

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/views/CustomFontEditText;->setFonts()V

    return-void
.end method

.method private setFonts()V
    .locals 1

    .line 26
    sget-object v0, Lpl/mkrstudio/truefootball3/activities/StartActivity;->defaultFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontEditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
