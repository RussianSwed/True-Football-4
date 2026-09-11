.class Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;
.super Ljava/lang/Object;
.source "YouthPlayerOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;Landroid/app/Dialog;)V
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

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object p1

    if-nez p1, :cond_1

    .line 58
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Youth;->getYouthTeams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 59
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 67
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 68
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$position:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;->removePlayer(I)V

    .line 69
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->val$youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;->notifyDataSetChanged()V

    .line 70
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 71
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->dismiss()V

    return-void
.end method
