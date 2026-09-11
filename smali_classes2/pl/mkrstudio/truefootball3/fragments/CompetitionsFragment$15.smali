.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initSpinner(Landroid/widget/Spinner;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

.field final synthetic val$spinner:Landroid/widget/Spinner;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$spinner",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1235
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;->val$spinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1237
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;->val$spinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
