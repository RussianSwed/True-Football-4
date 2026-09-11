.class Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$4;
.super Ljava/lang/Object;
.source "TacticsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentView",
            "selectedItemView",
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

    .line 228
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrders:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->setShowedOrder(I)V

    .line 229
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
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
