.class public Lpl/mkrstudio/truefootball3/activities/TacticsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "TacticsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initFragments()V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 39
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;-><init>()V

    const v2, 0x7f08010d

    .line 40
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a002c

    .line 24
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;->initFragments()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 53
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 57
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 46
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/TacticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
