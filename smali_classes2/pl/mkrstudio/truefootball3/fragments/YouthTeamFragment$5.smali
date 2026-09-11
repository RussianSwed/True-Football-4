.class Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;
.super Ljava/lang/Object;
.source "YouthTeamFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 196
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a004f

    .line 198
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0803d0

    .line 200
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 201
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 211
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 212
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
