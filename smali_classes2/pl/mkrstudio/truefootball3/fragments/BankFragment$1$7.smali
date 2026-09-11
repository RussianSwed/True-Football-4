.class Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;
.super Ljava/lang/Object;
.source "BankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

.field final synthetic val$amountSpinner:Landroid/widget/Spinner;

.field final synthetic val$amounts:[I

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$monthSpinner:Landroid/widget/Spinner;

.field final synthetic val$months:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;[Ljava/lang/String;Landroid/widget/Spinner;[ILandroid/widget/Spinner;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$months",
            "val$monthSpinner",
            "val$amounts",
            "val$amountSpinner",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$months:[Ljava/lang/String;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$monthSpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$amounts:[I

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$amountSpinner:Landroid/widget/Spinner;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 209
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$months:[Ljava/lang/String;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v1, v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 210
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$amounts:[I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$amountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v1

    long-to-int v2, v1

    aget v0, v0, v2

    int-to-long v2, v0

    .line 211
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->calculateInstalment(IJ)I

    move-result v5

    .line 213
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v7

    new-instance v8, Lpl/mkrstudio/truefootball3/objects/BankLoan;

    int-to-byte v4, p1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/objects/BankLoan;-><init>(JBILjava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Finances;->makeBankLoan(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/BankLoan;)V

    .line 214
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 215
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->showLoans(Landroid/view/View;)V

    return-void
.end method
