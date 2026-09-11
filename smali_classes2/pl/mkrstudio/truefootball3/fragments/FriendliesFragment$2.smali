.class Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;
.super Ljava/lang/Object;
.source "FriendliesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initViewFlipper(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Landroid/view/View;)V
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

    .line 84
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->val$view:Landroid/view/View;

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

    .line 87
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 88
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 89
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->disableRightButton()V

    .line 90
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->enableLeftButton()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->disableLeftButton()V

    .line 93
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->enableRightButton()V

    .line 95
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;->val$view:Landroid/view/View;

    iget-object v1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->showHeader(Landroid/view/View;I)V

    return-void
.end method
