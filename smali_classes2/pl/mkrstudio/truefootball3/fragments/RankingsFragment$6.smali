.class Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$6;
.super Ljava/lang/Object;
.source "RankingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initNationalTeamRanking(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V
    .locals 0

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/HashMap;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/util/HashMap;

    const-string p2, "code"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p2

    if-nez p2, :cond_2

    goto :end

    :cond_2
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    invoke-direct {p2, p3, p1}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/NationalTeam;)V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->show()V

    :cond_4
    :end
    return-void
.end method
