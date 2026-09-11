.class Lpl/mkrstudio/truefootball3/fragments/MenuFragment$3;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/MenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/MenuFragment;

.field final synthetic val$menuCompetitionsButton:Lpl/mkrstudio/truefootball3/views/TileButton;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/MenuFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$menuCompetitionsButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/MenuFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$3;->val$menuCompetitionsButton:Lpl/mkrstudio/truefootball3/views/TileButton;

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

    .line 55
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/MenuFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/MenuFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$3;->val$menuCompetitionsButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onMenuButtonClicked(I)V

    return-void
.end method
