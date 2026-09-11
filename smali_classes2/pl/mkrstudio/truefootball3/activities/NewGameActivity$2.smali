.class Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;
.super Ljava/lang/Object;
.source "NewGameActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

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

    .line 199
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->observedCountries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 200
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->showSelectedCountries()V

    .line 201
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initLeagueSpinner()V

    .line 202
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initTeamSpinner()V

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
