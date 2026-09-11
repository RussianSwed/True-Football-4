.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$player",
            "val$pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

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

    .line 226
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V

    .line 227
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->dismiss()V

    .line 228
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->show()V

    .line 229
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
