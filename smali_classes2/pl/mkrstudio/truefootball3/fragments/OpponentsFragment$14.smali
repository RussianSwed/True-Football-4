.class Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;
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

    .line 366
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 369
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getAnalyzedTeams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const v0, 0x7f08010f

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    .line 370
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamsList:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 372
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v3, 0x7f0a0035

    .line 374
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 376
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    .line 377
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    const v4, 0x7f0c0150

    .line 378
    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 379
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 377
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803d0

    .line 381
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 382
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;

    invoke-direct {v1, p0, p1, v2}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08022d

    .line 392
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 393
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$2;

    invoke-direct {v0, p0, v2}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 401
    :cond_0
    new-instance p1, Landroid/app/Dialog;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0033

    .line 403
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 405
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v1, 0x7f0c0669

    .line 406
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(I)V

    const v0, 0x7f080259

    .line 408
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 409
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$3;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
