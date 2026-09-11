.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$2;
.super Ljava/lang/Object;
.source "SponsorshipsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initSponsorshipList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Landroid/view/View;)V
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

    .line 121
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3"
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

    .line 124
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->showSponsorshipInfo(Landroid/view/View;I)V

    return-void
.end method
