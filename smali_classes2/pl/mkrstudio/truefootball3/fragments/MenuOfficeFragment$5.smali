.class Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$5;
.super Ljava/lang/Object;
.source "MenuOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

.field final synthetic val$stadiumButton:Lpl/mkrstudio/truefootball3/views/TileButton;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$stadiumButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$5;->val$stadiumButton:Lpl/mkrstudio/truefootball3/views/TileButton;

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

    .line 76
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$5;->val$stadiumButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onMenuButtonClicked(I)V

    return-void
.end method
