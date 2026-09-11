.class Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;
.super Ljava/lang/Object;
.source "SelectCountriesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->initCountryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

.field final synthetic val$countryCode:Ljava/lang/String;

.field final synthetic val$countryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$countryCode",
            "val$countryView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->val$countryCode:Ljava/lang/String;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->val$countryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->val$countryCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 119
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->val$countryCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->val$countryView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->select(Landroid/view/View;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->selectedCountries:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->val$countryCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$3;->val$countryView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->deselect(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
