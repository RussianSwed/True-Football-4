.class Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;
.super Ljava/lang/Object;
.source "SelectClubDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

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
            "arg0"
        }
    .end annotation

    .line 149
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 150
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_0
    return-void
.end method
