.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;
.super Ljava/lang/Object;
.source "EditPlayersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

.field final synthetic val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$scd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 426
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->isMove()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->unsavedChanges:Z

    .line 428
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/PlayerStub;

    .line 429
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->val$scd:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$players:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 437
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 438
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$customPlayerAdapter:Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;->notifyDataSetChanged()V

    .line 440
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$customPlayerAdapter:Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;->setSelectedPosition(I)V

    .line 441
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    .line 442
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$editButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    .line 443
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2$1;->this$2:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$moveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    :cond_1
    return-void
.end method
