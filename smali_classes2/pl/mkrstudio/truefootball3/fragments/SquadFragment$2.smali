.class Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;
.super Ljava/lang/Object;
.source "SquadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->multiReleasePlayers(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$playersToMultiRelease:Ljava/util/List;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Ljava/util/List;Landroid/view/View;Landroid/app/Dialog;)V
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
            "val$playersToMultiRelease",
            "val$view",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->val$playersToMultiRelease:Ljava/util/List;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->val$dialog:Landroid/app/Dialog;

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

    .line 229
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    if-eqz p1, :cond_2

    .line 230
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->getMultiReleaseCheckedPositions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 231
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->removePlayer(I)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->val$playersToMultiRelease:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 236
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1, v0, v2}, Lpl/mkrstudio/truefootball3/objects/Transfers;->releasePlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    goto :goto_1

    .line 238
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->notifyDataSetChanged()V

    .line 239
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showPositions(Landroid/view/View;)V

    .line 241
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Landroid/view/View;)V

    .line 242
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
