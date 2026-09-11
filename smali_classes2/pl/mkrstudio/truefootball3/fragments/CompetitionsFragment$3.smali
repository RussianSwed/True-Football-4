.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/view/View;)V
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

    .line 168
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->val$view:Landroid/view/View;

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

    .line 171
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    .line 172
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/view/View;)V

    .line 173
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 175
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    return-void
.end method
