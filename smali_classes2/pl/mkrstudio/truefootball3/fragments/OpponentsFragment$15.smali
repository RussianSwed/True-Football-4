.class Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;
.super Ljava/lang/Object;
.source "OpponentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initButtons(Landroid/view/View;)V
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

    .line 421
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 424
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 426
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 428
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    .line 430
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    const v3, 0x7f0c053d

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    const v3, 0x7f0c053e

    :goto_0
    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 431
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 429
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803d0

    .line 433
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 434
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 446
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 447
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
