.class Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;
.super Ljava/lang/Object;
.source "OpponentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->showAnalysedOpponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

.field final synthetic val$analyzedTeams:Ljava/util/List;

.field final synthetic val$teamsAnalysedAdapter:Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$teamsAnalysedAdapter",
            "val$analyzedTeams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->val$teamsAnalysedAdapter:Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->val$analyzedTeams:Ljava/util/List;

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

    .line 508
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->val$teamsAnalysedAdapter:Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->setSelectedPosition(I)V

    const/4 p1, -0x1

    if-le p3, p1, :cond_1

    .line 511
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->val$analyzedTeams:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    iput-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 513
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 514
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->resultsButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->resultsButton:Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 518
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->removeButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
