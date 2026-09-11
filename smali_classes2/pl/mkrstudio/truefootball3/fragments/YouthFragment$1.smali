.class Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;
.super Ljava/lang/Object;
.source "YouthFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthFragment;Landroid/view/View;)V
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

    .line 58
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->val$view:Landroid/view/View;

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

    .line 62
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Youth;->canAddTeam()Z

    move-result p1

    const v0, 0x7f080259

    const v1, 0x7f08010f

    const v2, 0x7f0a0033

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Landroid/app/Dialog;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 65
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c066a

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->isFreeYouthTrainer()Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    new-instance p1, Landroid/app/Dialog;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 82
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0357

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$3;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 105
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->show()V

    :goto_0
    return-void
.end method
