.class Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;
.super Ljava/lang/Object;
.source "ArrangeFriendlyFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initTeamSpinner(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Landroid/view/View;)V
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

    .line 236
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;->val$view:Landroid/view/View;

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

    .line 238
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;->val$view:Landroid/view/View;

    iget-object p4, p1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamsList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 239
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;->val$view:Landroid/view/View;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->addNotes(Landroid/view/View;)V

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
