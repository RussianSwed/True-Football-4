.class Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;
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

.field final synthetic val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/Player;

.field final synthetic val$position:I

.field final synthetic val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pid",
            "val$squadAdapter",
            "val$position",
            "val$player",
            "val$ud"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iput p4, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$position:I

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 162
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget v4, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$position:I

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;Z)V

    .line 163
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 171
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->show()V

    return-void
.end method
