.class Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;
.super Ljava/lang/Object;
.source "SearchForPlayersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initViews()V
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

    .line 90
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

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

    .line 94
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerNameEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerClubEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 97
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minAgeEditText:Landroid/widget/EditText;

    const-string v0, "16"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    const-string v0, "40"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minSkillEditText:Landroid/widget/EditText;

    const-string v0, "70"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    const-string v0, "99"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
