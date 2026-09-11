.class Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;
.super Ljava/lang/Object;
.source "FriendliesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    iput p2, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->val$pos:I

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

    .line 174
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getFriendlyOffers()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->acceptOffer(Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;)V

    .line 175
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Landroid/view/View;)V

    .line 176
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Landroid/view/View;)V

    return-void
.end method
