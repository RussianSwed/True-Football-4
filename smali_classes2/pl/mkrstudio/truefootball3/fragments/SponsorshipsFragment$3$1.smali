.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;
.super Ljava/lang/Object;
.source "SponsorshipsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iput p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->val$i:I

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

    .line 185
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getPendingSponsorshipOffers()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 188
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getSponsorships()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 189
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v0

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    if-gtz v2, :cond_5

    .line 193
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v0

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v0, v3, :cond_3

    if-gtz v2, :cond_5

    .line 194
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v0

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v0, v3, :cond_4

    if-gt v2, v4, :cond_5

    .line 195
    :cond_4
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v0

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    if-ne v0, v3, :cond_6

    const/4 v0, 0x5

    if-le v2, v0, :cond_6

    .line 197
    :cond_5
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0033

    .line 199
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 201
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0415

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080259

    .line 204
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 205
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 224
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->calculateContractEnd(Lpl/mkrstudio/truefootball3/objects/Time;Z)Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getSponsorships()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getPendingSponsorshipOffers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initSponsorshipOfferList(Landroid/view/View;)V

    .line 228
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initSponsorshipList(Landroid/view/View;)V

    :goto_1
    return-void
.end method
