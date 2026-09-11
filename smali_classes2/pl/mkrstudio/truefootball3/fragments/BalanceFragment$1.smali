.class Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;
.super Ljava/lang/Object;
.source "BalanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->val$view:Landroid/view/View;

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
            "arg0"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    iget p1, p1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->selectedMonth:I

    if-lez p1, :cond_0

    .line 75
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    iget v0, p1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->selectedMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->selectedMonth:I

    .line 76
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    iget p1, p1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->selectedMonth:I

    if-nez p1, :cond_1

    .line 77
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->disableLeftButton()V

    .line 78
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->enableRightButton()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->enableLeftButton()V

    .line 81
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->enableRightButton()V

    .line 83
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->val$view:Landroid/view/View;

    iget-object v1, p1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;

    iget v2, v2, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->selectedMonth:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->showFinances(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
