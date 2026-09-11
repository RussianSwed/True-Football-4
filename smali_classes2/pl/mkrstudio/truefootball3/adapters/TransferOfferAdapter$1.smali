.class Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter$1;
.super Ljava/lang/Object;
.source "TransferOfferAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;

.field final synthetic val$item:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter$1;->val$item:Ljava/util/HashMap;

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
            "v"
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;->fragment:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter;->view:Landroid/view/View;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/adapters/TransferOfferAdapter$1;->val$item:Ljava/util/HashMap;

    const-string v2, "nr"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showTransferOffer(Landroid/view/View;I)V

    return-void
.end method
