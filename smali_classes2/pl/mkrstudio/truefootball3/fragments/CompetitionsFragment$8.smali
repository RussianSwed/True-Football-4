.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

.field final synthetic val$finalPlayerStatsTable:Ljava/util/List;

.field final synthetic val$matchEventType:Lpl/mkrstudio/truefootball3/enums/MatchEventType;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Lpl/mkrstudio/truefootball3/enums/MatchEventType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$matchEventType",
            "val$finalPlayerStatsTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->val$matchEventType:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->val$finalPlayerStatsTable:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
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

    .line 383
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->val$matchEventType:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 p2, -0x1

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 384
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 385
    :cond_0
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->val$finalPlayerStatsTable:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p3

    invoke-direct {p1, p5, p4, p2, p3}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V

    .line 386
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->show()V

    goto :goto_0

    .line 389
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 390
    :cond_2
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;->val$finalPlayerStatsTable:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p3

    invoke-direct {p1, p5, p4, p2, p3}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V

    .line 391
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method
