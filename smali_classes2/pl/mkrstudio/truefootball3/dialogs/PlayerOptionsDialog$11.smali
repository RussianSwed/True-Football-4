.class Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;
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

.field final synthetic val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field final synthetic val$player:Lpl/mkrstudio/truefootball3/objects/Player;

.field final synthetic val$position:I

.field final synthetic val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V
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
            "val$player",
            "val$ud",
            "val$squadAdapter",
            "val$position",
            "val$pid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iput p5, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$position:I

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

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

    .line 320
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 323
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->removeOffers(Lpl/mkrstudio/truefootball3/objects/Player;)V

    .line 328
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v1

    invoke-static {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->access$000(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/Youth;I)Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object p1

    .line 330
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;-><init>()V

    .line 331
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setNationality(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setName(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setAge(B)V

    .line 334
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 335
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setSkill(B)V

    .line 336
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getPotential()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setPotential(B)V

    const/4 v1, 0x0

    .line 337
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 338
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 339
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    if-eqz p1, :cond_1

    .line 342
    iget v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$position:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->removePlayer(I)V

    .line 343
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->notifyDataSetChanged()V

    .line 345
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->val$pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->dismiss()V

    .line 346
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->dismiss()V

    return-void
.end method
