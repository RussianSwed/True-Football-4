.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$1;
.super Ljava/lang/Object;
.source "SponsorshipsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


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


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 88
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 89
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 90
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method
