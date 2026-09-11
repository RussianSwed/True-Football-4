.class Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;
.super Ljava/lang/Object;
.source "SearchForPlayersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initCountrySpinner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 311
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 312
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_0
    return-void
.end method
