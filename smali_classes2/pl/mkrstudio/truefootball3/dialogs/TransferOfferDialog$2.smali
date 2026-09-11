.class Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;
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

    .line 116
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 119
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getOffers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->agreeToLoanOutPlayer(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    .line 121
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->dismiss()V

    return-void
.end method
