.class Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;
.super Ljava/lang/Object;
.source "TransferOfferDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initBuyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

.field final synthetic val$offerVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$offerVP"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->val$offerVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

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

    .line 191
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->val$offerVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setPlayerValue(J)V

    .line 192
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-boolean p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->negotiation:Z

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->negotiateBuyOffer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->userAcceptOffer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V

    .line 197
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->dismiss()V

    return-void
.end method
