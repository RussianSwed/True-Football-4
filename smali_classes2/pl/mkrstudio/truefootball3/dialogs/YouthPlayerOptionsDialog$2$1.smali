.class Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;
.super Ljava/lang/Object;
.source "YouthPlayerOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;Landroid/app/Dialog;)V
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

    .line 122
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object p1

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

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

    .line 127
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 135
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$position:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;->removePlayer(I)V

    .line 136
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;->notifyDataSetChanged()V

    .line 137
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getSkill()B

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->generateContract(II)Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 138
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$youthPlayer:Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>(Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 139
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/DressingRoom;->possiblyCreateIsolation(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 141
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 142
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->dismiss()V

    return-void
.end method
