.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;
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

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V
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
            "val$ud",
            "val$context",
            "val$player"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

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

    .line 158
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getScouting()Lpl/mkrstudio/truefootball3/objects/Scouting;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getFreeScouts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 159
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 160
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->dismiss()V

    .line 161
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->show()V

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0033

    .line 165
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 167
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c066c

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080259

    .line 170
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 171
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
