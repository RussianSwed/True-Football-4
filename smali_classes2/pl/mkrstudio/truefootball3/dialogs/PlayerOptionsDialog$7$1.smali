.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7$1;
.super Ljava/lang/Object;
.source "PlayerOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;

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

    .line 233
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTemperament()B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->showCharacter(B)V

    .line 234
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->updateMorale()V

    return-void
.end method
