.class Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;
.super Ljava/lang/Object;
.source "TransfersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->val$view:Landroid/view/View;

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
            "arg0"
        }
    .end annotation

    .line 119
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 120
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->disableLeftButton()V

    .line 122
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->enableRightButton()V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 124
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->enableLeftButton()V

    .line 125
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->disableRightButton()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->enableLeftButton()V

    .line 128
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->enableRightButton()V

    .line 130
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$2;->val$view:Landroid/view/View;

    iget-object v1, p1, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->transfersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showHeader(Landroid/view/View;I)V

    return-void
.end method
