.class Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;
.super Ljava/lang/Object;
.source "NewGameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;

.field final synthetic val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$scd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 443
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getSelectedCountries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->observedCountries:Ljava/util/List;

    .line 444
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->showSelectedCountries()V

    return-void
.end method
