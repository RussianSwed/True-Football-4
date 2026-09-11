.class Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;
.super Ljava/lang/Object;
.source "SponsorInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->val$dialog:Landroid/app/Dialog;

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
            "arg0"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->val$sponsor:Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getPenalty()J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "contractTerminatePenalty"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 69
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getSponsorships()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->val$sponsor:Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->initLists:Z

    .line 71
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 72
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->dismiss()V

    return-void
.end method
