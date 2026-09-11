.class Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;
.super Ljava/lang/Object;
.source "OpponentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initLeagueSpinner(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V
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

    .line 247
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;->val$view:Landroid/view/View;

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

    .line 249
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedLeaguePosition:I

    if-eq p1, p3, :cond_0

    .line 250
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iput p3, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedLeaguePosition:I

    .line 251
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    const/4 p2, 0x0

    iput p2, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedTeamPosition:I

    .line 252
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;->val$view:Landroid/view/View;

    invoke-static {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V

    :cond_0
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
