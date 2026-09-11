.class Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;
.super Ljava/lang/Object;
.source "LoanOfferDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;

.field final synthetic val$contractEndVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$salaryVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ud",
            "val$salaryVP",
            "val$contractEndVP"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$salaryVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$contractEndVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

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
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object p1

    new-instance v10, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$salaryVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getLongValue()J

    move-result-wide v6

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->val$contractEndVP:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDateId(Ljava/util/GregorianCalendar;)I

    move-result v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const/4 v1, 0x3

    const-wide/16 v4, -0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;-><init>(BLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;JJILpl/mkrstudio/truefootball3/enums/TransferOfferType;)V

    invoke-virtual {p1, v10}, Lpl/mkrstudio/truefootball3/objects/Transfers;->makeOfferForPlayer(Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V

    .line 51
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/LoanOfferDialog;->dismiss()V

    return-void
.end method
