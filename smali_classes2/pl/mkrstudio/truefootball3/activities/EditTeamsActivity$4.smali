.class Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;
.super Ljava/lang/Object;
.source "EditTeamsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

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

    .line 180
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p4

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    sput-object p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 181
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->access$000(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

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
