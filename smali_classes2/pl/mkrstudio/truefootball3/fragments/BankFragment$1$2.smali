.class Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;
.super Ljava/lang/Object;
.source "BankFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/app/Dialog;[Ljava/lang/String;Landroid/widget/Spinner;[ILandroid/widget/Spinner;)V
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
            "val$dialog",
            "val$months",
            "val$monthSpinner",
            "val$amounts",
            "val$amountSpinner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$months:[Ljava/lang/String;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$monthSpinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$amounts:[I

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$amountSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
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

    .line 148
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$dialog:Landroid/app/Dialog;

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object p3

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$months:[Ljava/lang/String;

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int p5, v0

    aget-object p4, p4, p5

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    int-to-byte p4, p4

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$amounts:[I

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;->val$amountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v1, v0

    aget p5, p5, v1

    int-to-long v0, p5

    invoke-virtual {p3, p4, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->calculateInstalment(IJ)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->updateMonthlyInstalment(Landroid/app/Dialog;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
