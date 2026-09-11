.class public Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MotivationalSpeechActivity.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;


# instance fields
.field fullTime:Z

.field halfTime:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initFragments()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 44
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;

    iget-boolean v2, p0, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->halfTime:Z

    iget-boolean v3, p0, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->fullTime:Z

    invoke-direct {v1, v2, v3}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;-><init>(ZZ)V

    const v2, 0x7f08010d

    .line 45
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 46
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

    .line 37
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onContinueGameButtonClicked()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->finish()V

    return-void
.end method

.method public onContinueMatchButtonClicked()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->finish()V

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

    .line 24
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0024

    .line 27
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "halfTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->halfTime:Z

    .line 30
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fullTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->fullTime:Z

    .line 32
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->initFragments()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 78
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onProceedToMatchButtonClicked()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 71
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MotivationalSpeechActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
