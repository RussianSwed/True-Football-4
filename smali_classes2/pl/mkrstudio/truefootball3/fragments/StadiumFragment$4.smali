.class Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$4;
.super Ljava/lang/Object;
.source "StadiumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->showHeader(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

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

    .line 346
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 347
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a003e

    .line 348
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f080177

    .line 349
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 350
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ResourceHelper;->getAssistantFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0801a9

    .line 351
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c05cd

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
