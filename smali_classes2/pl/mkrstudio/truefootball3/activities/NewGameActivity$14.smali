.class Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;
.super Ljava/lang/Object;
.source "NewGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initCountrySelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 439
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->observedCountries:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 440
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 447
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->show()V

    return-void
.end method
