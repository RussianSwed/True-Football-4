.class Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;
.super Ljava/lang/Object;
.source "BuyOfferDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;

.field final synthetic val$offerVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ud",
            "val$offerVP"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->val$offerVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

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

    .line 50
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    new-instance v10, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->val$offerVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getLongValue()J

    move-result-wide v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v6, v7}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v0

    int-to-long v6, v0

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const/4 v1, -0x1

    const/4 v8, -0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V

    invoke-virtual {p1, v10}, Lpl/mkrstudio/truefootball3/objects/Transfers;->makeOfferForPlayer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V

    .line 51
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->dismiss()V

    return-void
.end method
