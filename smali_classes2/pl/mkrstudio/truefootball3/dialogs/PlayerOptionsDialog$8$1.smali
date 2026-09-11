.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;
.super Ljava/lang/Object;
.source "PlayerOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->val$dialog:Landroid/app/Dialog;

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

    .line 260
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->releasePlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    .line 261
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget v0, v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$position:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->removePlayer(I)V

    .line 263
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->notifyDataSetChanged()V

    .line 265
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->dismiss()V

    .line 266
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 267
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->dismiss()V

    return-void
.end method
