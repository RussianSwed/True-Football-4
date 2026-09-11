.class Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;
.super Ljava/lang/Object;
.source "TransferOfferDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initContractView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

.field final synthetic val$contractEndVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$salaryVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$salaryVP",
            "val$contractEndVP"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->val$salaryVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->val$contractEndVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getOffers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v5

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->val$salaryVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getLongValue()J

    move-result-wide v7

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->val$contractEndVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDateId(Ljava/util/GregorianCalendar;)I

    move-result v9

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const/4 v2, 0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V

    .line 157
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getAgentsFee()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setAgentsFee(J)V

    .line 158
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->makeOfferForPlayer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V

    .line 159
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->dismiss()V

    return-void
.end method
