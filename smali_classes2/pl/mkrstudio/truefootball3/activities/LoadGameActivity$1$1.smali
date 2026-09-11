.class Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;
.super Ljava/lang/Object;
.source "LoadGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;I)V
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

    .line 204
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;->val$i:I

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

    .line 227
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->act:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0035

    .line 229
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 231
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0159

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0803d0

    .line 234
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 235
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$1;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 243
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 244
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1$2;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
