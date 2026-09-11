.class Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$3;
.super Ljava/lang/Object;
.source "ScoutingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->initScoutList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;

.field final synthetic val$scouts:Ljava/util/List;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$scouts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$3;->val$scouts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3"
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

    .line 209
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$3;->val$scouts:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-interface {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onScoutSelected(Lpl/mkrstudio/truefootball3/objects/Scout;)V

    return-void
.end method
