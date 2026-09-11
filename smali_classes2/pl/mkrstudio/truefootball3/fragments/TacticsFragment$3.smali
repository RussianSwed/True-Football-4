.class Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;
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

.field final synthetic val$formations:Ljava/util/List;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$view",
            "val$formations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->val$formations:Ljava/util/List;

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

    .line 215
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->val$view:Landroid/view/View;

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->val$formations:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {p1, p2, p4}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->showFormation(Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Formation;)V

    .line 216
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->val$view:Landroid/view/View;

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;->val$formations:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {p1, p2, p3}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->changeFormation(Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Formation;)V

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
