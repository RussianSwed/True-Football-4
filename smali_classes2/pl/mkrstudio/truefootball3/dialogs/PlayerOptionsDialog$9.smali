.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;
.super Ljava/lang/Object;
.source "PlayerOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/Player;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ud",
            "val$player"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

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

    .line 302
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->dismiss()V

    return-void
.end method
