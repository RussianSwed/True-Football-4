.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;
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

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$player"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

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

    .line 125
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->dismiss()V

    .line 127
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->show()V

    return-void
.end method
