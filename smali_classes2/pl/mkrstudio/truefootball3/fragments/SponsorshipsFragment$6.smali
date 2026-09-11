.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;
.super Ljava/lang/Object;
.source "SponsorshipsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->showSponsorshipInfo(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

.field final synthetic val$sid:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$sid",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;->val$sid:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 319
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;->val$sid:Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->isInitLists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initLists(Landroid/view/View;)V

    :cond_0
    return-void
.end method
