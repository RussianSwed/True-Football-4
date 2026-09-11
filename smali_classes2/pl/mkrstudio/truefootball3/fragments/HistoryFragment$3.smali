.class Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$3;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;->initTeamsManaged(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;

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
            "position",
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

    .line 146
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getPastHistories()Ljava/util/List;

    move-result-object p2

    add-int/lit8 p4, p3, -0x1

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/History;

    :goto_0
    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1, p2, p3}, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;->showHistory(Lpl/mkrstudio/truefootball3/objects/History;Z)V

    return-void
.end method
