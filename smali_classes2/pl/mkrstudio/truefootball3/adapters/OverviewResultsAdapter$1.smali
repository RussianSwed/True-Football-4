.class Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;
.super Ljava/lang/Object;
.source "OverviewResultsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 87
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->trainingFragment:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showNextParameter()I

    .line 89
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->trainingFragment:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    iget v0, v0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->showedParameter:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->showParameter(I)V

    .line 90
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
