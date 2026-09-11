.class Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;
.super Ljava/lang/Object;
.source "EditTeamsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 380
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 383
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a003a

    .line 385
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 387
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const v1, 0x7f0801d6

    .line 388
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 389
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080259

    .line 391
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 392
    new-instance v3, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;Landroid/widget/EditText;ILandroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
