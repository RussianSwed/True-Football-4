.class Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$2;
.super Ljava/lang/Object;
.source "HistoryDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

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
            "v"
        }
    .end annotation

    .line 329
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->sortByApps:Z

    .line 330
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Landroid/content/Context;)V

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
