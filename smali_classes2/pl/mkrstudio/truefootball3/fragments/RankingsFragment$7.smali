.class Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$7;
.super Ljava/lang/Object;
.source "RankingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initContinentPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V
    .locals 0

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$7;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$7;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->cycleContinent(I)V

    return-void
.end method
