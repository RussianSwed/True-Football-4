.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;
.super Ljava/lang/Object;
.source "EditPlayersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 404
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->val$i:I

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

    .line 407
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->unsavedChanges:Z

    .line 408
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$players:Ljava/util/List;

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 409
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 410
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

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

    .line 411
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$customPlayerAdapter:Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;->notifyDataSetChanged()V

    .line 412
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$customPlayerAdapter:Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;->setSelectedPosition(I)V

    .line 413
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    .line 414
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$editButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    .line 415
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;->this$1:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$moveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    return-void
.end method
