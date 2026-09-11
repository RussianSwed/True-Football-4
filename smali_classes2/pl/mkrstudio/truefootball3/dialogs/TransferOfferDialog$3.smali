.class Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$3;
.super Ljava/lang/Object;
.source "TransferOfferDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initLoanView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

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

    .line 128
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Transfers;->rejectOffer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V

    .line 129
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->dismiss()V

    return-void
.end method
