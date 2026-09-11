.class Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$1;
.super Ljava/lang/Object;
.source "SquadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 165
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->getMultiReleaseCheckedPositions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1$1;->this$2:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method
