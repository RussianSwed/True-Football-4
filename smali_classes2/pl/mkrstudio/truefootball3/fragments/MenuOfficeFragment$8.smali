.class Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$8;
.super Ljava/lang/Object;
.source "MenuOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->setAdEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

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

    .line 129
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/MenuOfficeFragment;->businessmanButton:Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onMenuButtonClicked(I)V

    return-void
.end method
