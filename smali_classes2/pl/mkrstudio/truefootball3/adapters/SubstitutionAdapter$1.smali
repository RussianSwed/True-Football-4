.class Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter$1;
.super Ljava/lang/Object;
.source "SubstitutionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 92
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;->showNextParameter()I

    .line 93
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/SubstitutionAdapter;->notifyDataSetChanged()V

    return-void
.end method
