.class Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;
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

.field final synthetic val$monthSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/widget/Spinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$monthSpinner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;->val$monthSpinner:Landroid/widget/Spinner;

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
            "arg0"
        }
    .end annotation

    .line 197
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;->val$monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;->val$monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 198
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;->val$monthSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;->val$monthSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    :goto_0
    return-void
.end method
