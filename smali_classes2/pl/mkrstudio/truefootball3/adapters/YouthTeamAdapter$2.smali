.class Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter$2;
.super Ljava/lang/Object;
.source "YouthTeamAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter;

.field final synthetic val$item:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter$2;->this$0:Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter$2;->val$item:Ljava/util/HashMap;

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

    .line 78
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter$2;->this$0:Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter;->youthFragment:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/adapters/YouthTeamAdapter$2;->val$item:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->showTeam(Ljava/lang/String;)V

    return-void
.end method
