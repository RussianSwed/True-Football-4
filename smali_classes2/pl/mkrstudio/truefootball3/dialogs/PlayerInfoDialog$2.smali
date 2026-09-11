.class Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;
.super Ljava/lang/Object;
.source "PlayerInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

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
            "arg0"
        }
    .end annotation

    .line 340
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->playerInfoVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 341
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->playerInfoVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 342
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->disableLeftButton()V

    .line 343
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->enableRightButton()V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->enableLeftButton()V

    .line 346
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->enableRightButton()V

    .line 348
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->playerInfoVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->showView(I)V

    return-void
.end method
