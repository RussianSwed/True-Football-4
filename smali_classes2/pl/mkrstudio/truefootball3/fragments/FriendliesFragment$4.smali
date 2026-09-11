.class Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;
.super Ljava/lang/Object;
.source "FriendliesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initFriendlyOffers(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

.field final synthetic val$friendlyOfferAdapter:Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$friendlyOfferAdapter",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->val$friendlyOfferAdapter:Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "vi",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getFriendlyOffers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 167
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->val$friendlyOfferAdapter:Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;->setSelectedPosition(I)V

    .line 168
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->acceptOffer:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->acceptOffer:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->acceptOffer:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
